package fi.otavanopisto.pyramus;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Pattern;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;

import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.rules.TestName;

public abstract class AbstractIntegrationTest {

  @Rule
  public TestName testName = new TestName();

  @Before
  public void baseSetupSql() throws Exception {
    String methodName = testName.getMethodName();
    int paramIndex = methodName.indexOf('[');
    if (paramIndex > 0) {
      methodName = methodName.substring(0, paramIndex);
    }
    Method method = getClass().getMethod(methodName, new Class<?>[] {});
    SqlBefore annotation = method.getAnnotation(SqlBefore.class);
    if (annotation != null) {
      String[] sqlFiles = annotation.value();

      if (sqlFiles != null && sqlFiles.length > 0) {
        Connection connection = getConnection();
        try {
          for (String sqlFile : sqlFiles) {
            runSql(connection, sqlFile);
          }
          connection.commit();
        } finally {
          connection.close();
        }
      }
    }
  }
  
  @After
  public void baseTearDownSql() throws Exception {
    String methodName = testName.getMethodName();
    int paramIndex = methodName.indexOf('[');
    if (paramIndex > 0) {
      methodName = methodName.substring(0, paramIndex);
    }
    Method method = getClass().getMethod(methodName, new Class<?>[] {});
    SqlAfter annotation = method.getAnnotation(SqlAfter.class);
    if (annotation != null) {
      String[] sqlFiles = annotation.value();

      if (sqlFiles != null && sqlFiles.length > 0) {
        Connection connection = getConnection();
        try {
          for (String sqlFile : sqlFiles) {
            runSql(connection, sqlFile);
          }
          connection.commit();
        } finally {
          connection.close();
        }
      }
    }
  }

  protected int getEntityCount(String entity) throws SQLException, ClassNotFoundException {
    Connection connection = getConnection();
    Statement statement = connection.createStatement();
    statement.execute("select count(*) as c from " + entity);
    
    ResultSet rs = statement.getResultSet();
    if (rs.next())
      return rs.getInt(1);
    
    return 0;
  }
  
  private void runSql(Connection connection, String file) throws IOException, SQLException {
    ClassLoader classLoader = getClass().getClassLoader();
    InputStream sqlStream = classLoader.getResourceAsStream(file);
    if (sqlStream != null) {
      try {
        String sqlString = IOUtils.toString(sqlStream);
        Pattern commentPattern = Pattern.compile("--.*$", Pattern.MULTILINE);
        sqlString = commentPattern.matcher(sqlString).replaceAll("");
        String[] sqls = sqlString.split(";(?=([^\']*\'[^\']*\')*[^\']*$)"); // Quote-aware split on ';'
        for (String sql : sqls) {
          sql = sql.trim();
          if (StringUtils.isNotBlank(sql)) {
            Statement statement = connection.createStatement();
            statement.execute(sql);
          }
        }
      } finally {
        sqlStream.close();
      }
    } else {
      throw new FileNotFoundException(file);
    }
  }

  protected Connection getConnection() throws SQLException, ClassNotFoundException {
    Class.forName(getJdbcDriver());
    return DriverManager.getConnection(getJdbcUrl(), getJdbcUsername(), getJdbcPassword());
  }

  protected String getAppUrl() {
    return getAppUrl(false);
  }

  protected String getAppUrl(boolean secure) {
    return (secure ? "https://" : "http://") + getHost() + ':' + (secure ? getPortHttps() : getPortHttp());
  }

  protected String getJdbcDriver() {
    return System.getProperty("it.jdbc.driver");
  }

  protected String getJdbcUrl() {
    return System.getProperty("it.jdbc.url");
  }

  protected String getJdbcJndi() {
    return System.getProperty("it.jdbc.jndi");
  }

  protected String getJdbcUsername() {
    return System.getProperty("it.jdbc.username");
  }

  protected String getJdbcPassword() {
    return System.getProperty("it.jdbc.password");
  }

  protected String getHost() {
    return System.getProperty("it.host");
  }

  protected int getPortHttp() {
    return Integer.parseInt(System.getProperty("it.port.http"));
  }

  protected int getPortHttps() {
    return Integer.parseInt(System.getProperty("it.port.https"));
  }

  protected String getKeystoreFile() {
    return System.getProperty("it.keystore.file");
  }

  protected String getKeystoreAlias() {
    return System.getProperty("it.keystore.alias");
  }

  protected String getKeystorePass() {
    return System.getProperty("it.keystore.storepass");
  }

  protected OffsetDateTime getDateToOffsetDateTime(int year, int monthOfYear, int dayOfMonth) {
    LocalDateTime localDateTime = LocalDateTime.of(year, monthOfYear, dayOfMonth, 0, 0);
    ZoneId systemId = ZoneId.systemDefault();
    ZoneOffset offset = systemId.getRules().getOffset(localDateTime);
    return localDateTime.atOffset(offset);
  }
  
  protected OffsetDateTime getDate(int year, int monthOfYear, int dayOfMonth) {
    return getDateToOffsetDateTime(year, monthOfYear, dayOfMonth);
  }
}
