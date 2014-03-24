package fi.pyramus.reports.viewer;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;

public class PrepareReportFilter implements Filter {

  public void destroy() {
  }

  public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
    if ((req instanceof HttpServletRequest) && (resp instanceof HttpServletResponse)) {
      synchronized (syncObject) {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        String reportName = req.getParameter("__report");
        
        if (StringUtils.startsWith(reportName, "reports/") && StringUtils.endsWith(reportName, ".rptdesign")) {
          
          Long reportId = NumberUtils.createLong(reportName.substring(8, reportName.length() - 10));
          String reportFileName = String.valueOf(reportId) + ".rptdesign";
          String pyramusUrl = request.getParameter("pyramusUrl");
          if (StringUtils.isBlank(pyramusUrl)) {
            response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            return;
          }
          
          String magicKey = request.getParameter("magicKey");
          if (StringUtils.isBlank(magicKey)) {
            response.sendError(HttpServletResponse.SC_FORBIDDEN);
            return;
          }

           
          URL url = new URL(pyramusUrl + "/reports/getdesignfile.binary?reportId=" + reportId);
          HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
          urlConnection.setDoInput(true);
          urlConnection.setDoOutput(true);
          urlConnection.setRequestProperty("Authorization", "MagicKey " + magicKey);

          File reportFile = new File(getReportsFolder(), reportFileName);
          if (reportFile.exists()) {
            urlConnection.setRequestProperty("If-Modified-Since",
                new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz").format(reportFile.lastModified())); // RFC 1123
          }
          
          switch (urlConnection.getResponseCode()) {
            case 200:
              byte[] reportData = null;
              
              InputStream inputStream = urlConnection.getInputStream();
              try {
                reportData = IOUtils.toByteArray( inputStream );
              } finally {
                inputStream.close(); 
              }
              
              if (reportFile.exists()) {
                if (!reportFile.delete()) {
                  response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                  return;
                }
              }
              
              if (reportFile.createNewFile()) {
                FileOutputStream fileOutputStream = new FileOutputStream(reportFile);
                fileOutputStream.write(reportData);
                fileOutputStream.flush();
                fileOutputStream.close();
              } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                return;
              }
            break;
            case 304:
              // Report is up-to-date
            break;
            default:
              response.sendError(urlConnection.getResponseCode());
            break;
          }
        }
      }
      
      chain.doFilter(req, resp);
    }
  }

  public void init(FilterConfig filterConfig) throws ServletException {
    rootPath = filterConfig.getServletContext().getRealPath("/");
  }

  private File getReportsFolder() {
    File reportsFolder = new File(rootPath + "reports/");
    if (!reportsFolder.exists())
      reportsFolder.mkdirs();

    return reportsFolder;
  }

  private Object syncObject = new Object();
  private String rootPath;
}
