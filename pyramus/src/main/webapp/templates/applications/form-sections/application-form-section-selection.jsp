<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  <section class="form-section section-line">

    <h3 class="application-form-section-header">Valitse hakukohteesi</h3>

    <select id="field-line" name="field-line" data-parsley-required="true" data-dependencies="true" data-preselect="${preselectLine}">
      <option value="">-- Valitse --</option>
      <option value="aineopiskelu" data-underage-support="true" data-attachment-support="false">Aineopiskelu</option>
      <option value="nettilukio" data-underage-support="true" data-attachment-support="true">Nettilukio</option>
      <option value="nettipk" data-underage-support="true" data-attachment-support="true">Nettiperuskoulu</option>
      <option value="aikuislukio" data-underage-support="true" data-attachment-support="true">Aikuislukio</option>
      <!--<option value="bandilinja" data-underage-support="true" data-attachment-support="true">B�ndilinja</option>-->
      <!--<option value="kasvatustieteet" data-underage-support="false" data-attachment-support="false">Kasvatustieteen linja</option>-->
      <!--<option value="laakislinja" data-underage-support="false" data-attachment-support="false">L��kislinja</option>-->
      <option value="mk" data-underage-support="false" data-attachment-support="true">Maahanmuuttajakoulutukset</option>
    </select>

    <div class="field-container dependent" data-dependent-field="field-line" data-dependent-values="aineopiskelu">
      <p>Aineopiskelijana voit opiskella yksitt�isi� lukion ja perusopetuksen kursseja. Aineopiskelijaksi voit ilmoittautua, vaikka opiskelisit samaan aikaan toisessa oppilaitoksessa.</p>
    </div>

    <div class="field-container dependent" data-dependent-field="field-line" data-dependent-values="nettilukio">
      <p>Nettilukiossa opiskelet koko aikuislukion oppim��r�n tavoitteenasi lukion p��tt�todistus ja/tai ylioppilastutkinto. Nettilukiossa voit my�s tehd� loppuun aiemmin kesken j��neet lukio-opinnot. Nettilukio on tarkoitettu yli 18-vuotiaille opiskelijoille. Toisessa oppilaitoksessa opiskelevat ja yksitt�isi� lukiokursseja suorittavat voivat ilmoittautua aineopiskelijaksi.</p>
    </div>
    
    <div class="field-container dependent" data-dependent-field="field-line" data-dependent-values="nettipk">
      <p>Nettiperuskoulussa voit opiskella kesken j��neen peruskoulun loppuun tai tehd� koko aikuisten perusopetuksen oppim��r�n alusta asti. Nettiperuskoulu on tarkoitettu yli 18-vuotiaille opiskelijoille, joilta puuttuu perusopetuksen p��tt�todistus.</p>
    </div>
    
    <div class="field-container dependent" data-dependent-field="field-line" data-dependent-values="aikuislukio">
      <p>Aikuislukiossa opiskelet koko lukion oppim��r�n tavoitteenasi lukion p��tt�todistus ja/tai ylioppilastutkinto. Aikuislukiossa voit my�s tehd� loppuun aiemmin kesken j��neet toisessa p�iv�- tai aikuislukiossa aloittamasi lukio-opinnot.</p>
    </div>
    
    <div class="field-container dependent" data-dependent-field="field-line" data-dependent-values="bandilinja">
      <p><!-- TODO B�ndilinjan esittelyteksti --></p>
    </div>

    <div class="field-container dependent" data-dependent-field="field-line" data-dependent-values="kasvatustieteet">
      <p>Otavan Opiston Kasvatustieteen linjalla tutustut kasvatustieteen viimeisimpiin suuntauksiin ja saat tukea tuleviin yliopisto-opintoihin. Opetus toteutetaan sek� verkossa ett� l�hiopetuksena Otavan Opistolla Mikkeliss�. Koulutuksen sis�lt�j� ovat sulautuva oppiminen, oppimisen tulevaisuus ja VAKAVA-valmennus, jotka on mahdollisuus opiskella my�s erillisin� kokonaisuuksina. Opintojen yhteydess� voi suorittaa kasvatustieteen perusopinnot.</p>
    </div>

    <div class="field-container dependent" data-dependent-field="field-line" data-dependent-values="laakislinja">
      <p>L��kislinjalla kerrataan ja syvennet��n lukion biologian, fysiikan ja kemian oppim��r��, kerrataan lukion matematiikkaa, valmistaudutaan l��ketieteellisen p��sykokeisiin harjoittelemalla eri teht�v�tyyppien vastaustekniikoita ja tehd�� simuloitu p��sykoe.</p>
    </div>
    
    <div class="field-container dependent" data-dependent-field="field-line" data-dependent-values="mk">
      <p>Maahanmuuttajakoulutukset ovat sellaisia opiskelijoita varten, joiden �idinkieli ei ole suomi ja jotka tarvitsevat peruskoulun p��tt�todistuksen jatko-opintoja varten.</p>
    </div>

  </section>