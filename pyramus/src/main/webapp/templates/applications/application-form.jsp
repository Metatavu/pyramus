<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<form id="application-form" class="application-form" data-save-url="${saveUrl}" data-done-page="${donePage}">

  <input type="hidden" id="field-application-id" name="field-application-id" value="${applicationId}" data-preload="${preload}" data-parsley-excluded="true"/>
  
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
  
  <section class="form-section section-personal-info">
  
    <div class="application-line"></div>

    <h3 class="form-section__header">Henkil�tiedot</h3>
    
    <div class="form-section__field-container field-last-name">
      <label for="field-last-name" class="required">Sukunimi</label>
      <input type="text" id="field-last-name" name="field-last-name" data-parsley-required="true">
    </div>
    
    <div class="form-section__field-container field-first-names">
      <label for="field-first-names" class="required">Etunimet</label>
      <input type="text" id="field-first-names" name="field-first-names" data-parsley-required="true">
    </div> 

    <div class="form-section__field-container field-nickname">
      <label for="field-nickname" class="required">Kutsumanimi</label>
      <input type="text" style="display:none;" id="field-nickname" name="field-nickname" data-parsley-validate-if-empty="true"  data-parsley-nickname="">
      <div class="nicknames-container">
      </div>
    </div> 
    
    <div class="form-section__field-container field-birthday">
      <label for="field-birthday" class="required">Syntym�aika</label>
      <input type="text" id="field-birthday" name="field-birthday" data-parsley-required="true" data-parsley-birthday-format="">
      <span class="field-help">Esitysmuoto p.k.vvvv (esim. 15.3.1995)</span>
    </div>

    <div class="form-section__field-container field-ssn-end">
      <label for="field-ssn-end">Henkil�tunnuksen loppuosa</label>
      <input type="text" id="field-ssn-end" name="field-ssn-end" maxlength="4" style="text-transform:uppercase;" data-parsley-validate-if-empty="true" data-parsley-ssn-end-format="">
      <span class="field-help">Esitysmuoto XXXX (ilman edelt�v�� v�limerkki� A tai -)</span>
    </div>

    <div class="form-section__field-container field-sex">
      <label for="field-sex" class="required">Sukupuoli</label>
      <select id="field-sex" name="field-sex" data-parsley-required="true">
        <option value="">-- Valitse --</option>
        <option value="mies">Mies</option>
        <option value="nainen">Nainen</option>
      </select>
    </div>

    <div class="form-section__field-container field-street-address">
      <label for="field-street-address" class="required">L�hiosoite</label>
      <input type="text" name="field-street-address" data-parsley-required="true">
    </div> 

    <div class="form-section__field-container field-zip-code">
      <label for="field-zip-code" class="required">Postinumero</label>
      <input type="text" name="field-zip-code" data-parsley-required="true">
    </div> 

    <div class="form-section__field-container field-city">
      <label for="field-city" class="required">Postitoimipaikka</label>
      <input type="text" name="field-city" data-parsley-required="true">
    </div> 

    <div class="form-section__field-container field-country">
      <label for="field-country" class="required">Maa</label>
      <input type="text" name="field-country" value="Suomi" data-parsley-required="true">
    </div> 

    <div class="form-section__field-container field-municipality">
      <label for="field-municipality" class="required">Kotikunta</label>
      <select name="field-municipality" data-parsley-required="true" data-source="/1/applications/municipalities">
        <option value="">-- Valitse --</option>
        <option value="none">Ei kotikuntaa Suomessa</option>
      </select>
    </div>

    <div class="form-section__field-container field-nationality">
      <label for="field-nationality" class="required">Kansalaisuus</label>
      <select name="field-nationality" data-parsley-required="true" data-source="/1/applications/nationalities" data-preselect="Suomi">
        <option value="">-- Valitse --</option>
      </select>
    </div>

    <div class="form-section__field-container field-language">
      <label for="field-language" class="required">�idinkieli</label>
      <select name="field-language" data-parsley-required="true" data-source="/1/applications/languages" data-preselect="suomi">
        <option value="">-- Valitse --</option>
      </select>
    </div>

    <div class="form-section__field-container field-phone">
      <label for="field-phone" class="required">Puhelinnumero</label>
      <input type="text" id="field-phone" name="field-phone" data-parsley-required="true">
      <span class="field-help">Laita mukaan my�s maakoodi, jos olet ulkomailla</span>
    </div>

    <div class="form-section__field-container field-email">
      <label for="field-email" class="required">S�hk�postiosoite</label>
      <input type="email" id="field-email" name="field-email" data-parsley-required="true">
    </div>
  
  </section>

  <section class="form-section section-underage" data-skip="true">

    <div class="application-line"></div>

    <h3 class="form-section__header">Huoltajan tiedot</h3>

    <div class="form-section__field-container field-underage-grounds dependent" data-dependent-field="field-line" data-dependent-values="nettilukio,nettipk,aikuislukio,bandilinja,laakislinja">
      <label for="field-underage-grounds">Alaik�isen hakemusperusteet</label>
      <textarea name="field-underage-grounds" rows="5" cols="40"></textarea>
    </div>
    
    <div class="form-section__field-container field-underage-last-name">
      <label for="field-underage-last-name" class="required">Sukunimi</label>
      <input type="text" name="field-underage-last-name" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div> 

    <div class="form-section__field-container field-underage-first-name">
      <label for="field-underage-first-name" class="required">Etunimi</label>
      <input type="text" name="field-underage-first-name" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div> 
    
    <div class="form-section__field-container field-underage-phone">
      <label for="field-underage-phone" class="required">Puhelinnumero</label>
      <input type="text" name="field-underage-phone" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div> 

    <div class="form-section__field-container field-underage-email">
      <label for="field-underage-email" class="required">S�hk�postiosoite</label>
      <input type="text" name="field-underage-email" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div> 
    
    <div class="form-section__field-container field-underage-street-address">
      <label for="field-underage-street-address" class="required">L�hiosoite</label>
      <input type="text" name="field-underage-street-address" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div> 

    <div class="form-section__field-container field-zip-code">
      <label for="field-underage-zip-code" class="required">Postinumero</label>
      <input type="text" name="field-underage-zip-code" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div> 

    <div class="form-section__field-container field-underage-city">
      <label for="field-underage-city" class="required">Postitoimipaikka</label>
      <input type="text" name="field-underage-city" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div> 

    <div class="form-section__field-container field-underage-country">
      <label for="field-underage-country" class="required">Maa</label>
      <input type="text" name="field-underage-country" value="Suomi" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div> 
    
  </section>

  <section class="form-section section-internetix-school" data-skip="true">

    <div class="application-line"></div>

    <h3 class="form-section__header">Oppilaitostiedot</h3>
    <p>Kurssimateriaalien k�ytt�minen itseopiskelussa on ilmaista. Voit siis rekister�ity� Muikun k�ytt�j�ksi ja ilmoittautua kursseille, vaikka et haluaisikaan niist� arviointia tai kurssisuoritusta. Jos haluat, ett� opettaja arvioi kurssisuorituksesi, se on joissakin tapauksissa maksullista. <a href="http://opinnot.internetix.fi/fi/structure/kansio/ohje_arviointimaksuista" target="_blank">Lue lis��.</a></p>
    <p><b>Huom!</b> Oppilaitostieto tarkistetaan viel� j�lkik�teen ja l�het�mme laskun kurssin suorittamisesta, mik�li olet opiskelijana jossain toisen asteen oppilaitoksessa.</p>

    <div class="form-section__field-container field-internetix-school">
      <label for="field-internetix-school" class="required">Opiskelu muussa oppilaitoksessa</label>
      <select name="field-internetix-school" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true" data-dependencies="true">
        <option value="">-- Valitse --</option>
        <option value="en">En opiskele miss��n oppilaitoksessa</option>
        <option value="kylla">Opiskelen toisessa oppilaitoksessa</option>
      </select>
    </div>

    <div class="form-section__field-container field-internetix-school-info dependent" data-dependent-field="field-internetix-school" data-dependent-values="kylla">
      <p>Alla olevassa alaspudotusvalikossa ovat ne oppilaitokset, joiden kanssa olemme tehneet sopimuksen. Jos et l�yd� omaa oppilaitostasi listasta, valitse kohta <i>Muu oppilaitos</i>. Valitse my�s, mit� tutkintoa suoritat t�ll� hetkell�. Jos et suorita mit��n tutkintoa tai tutkintoasi ei ole listassa, valitse kohta <i>Muu tutkinto</i>.</p>
    </div>

    <div class="form-section__field-container field-internetix-contract-school dependent" data-dependent-field="field-internetix-school" data-dependent-values="kylla">
      <label for="field-internetix-contract-school" class="required">Oppilaitokseni</label>
      <select name="field-internetix-contract-school" data-source="/1/applications/contractschools" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true" data-dependencies="true">
        <option value="">-- Valitse --</option>
        <option value="muu">Muu oppilaitos</option>
      </select>
    </div>

    <div class="form-section__field-container field-internetix-contract-school-name dependent" data-dependent-field="field-internetix-contract-school" data-dependent-values="muu">
      <label for="field-internetix-contract-school-name" class="required">Oppilaitos</label>
      <input type="text" name="field-internetix-contract-school-name" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div>

    <div class="form-section__field-container field-internetix-contract-school-municipality dependent" data-dependent-field="field-internetix-contract-school" data-dependent-values="muu">
      <label for="field-internetix-contract-school-municipality" class="required">Opiskelupaikkakunta</label>
      <input type="text" name="field-internetix-contract-school-municipality" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div>

    <div class="form-section__field-container field-internetix-contract-school-contact dependent" data-dependent-field="field-internetix-contract-school" data-dependent-values="muu">
      <label for="field-internetix-contract-school-contact" class="required">Oppilaitoksen yhteyshenkil� ja yhteystiedot</label>
      <textarea name="field-internetix-contract-school-contact" rows="5" cols="40" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true"></textarea>
    </div>

    <div class="form-section__field-container field-internetix-contract-school-degree dependent" data-dependent-field="field-internetix-school" data-dependent-values="kylla">
      <label for="field-internetix-contract-school-degree" class="required">Suoritan</label>
      <select name="field-internetix-contract-school-degree" data-source="/1/applications/contractschools" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
        <option value="">-- Valitse --</option>
        <option value="muu">Muu tutkinto</option>
        <option value="ammatillinen-perus">Ammatillinen perustutkinto</option>
        <option value="ammatillinen-korkea">Ammattikorkeakoulututkinto</option>
        <option value="kaksoistutkinto">Kaksoistutkinto</option>
        <option value="yo-tutkinto">YO-tutkinto / lukion oppim��r�</option>
        <option value="oppisopimus">Oppisopimuskoulutus</option>
      </select>
    </div>

  </section>

  <section class="form-section section-additional">

    <div class="application-line"></div>

    <h3 class="form-section__header">Hakemiseen tarvittavat lis�tiedot</h3>

    <div class="form-section__field-container field-previous-studies dependent" data-dependent-field="field-line" data-dependent-values="nettilukio,nettipk,aikuislukio,bandilinja,laakislinja,kasvatustieteet">
      <label for="field-previous-studies" class="required">Aiemmat opinnot (listaa my�s keskeytyneet)</label>
      <textarea name="field-previous-studies" rows="5" cols="40" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true"></textarea>
    </div>

    <div class="form-section__field-container field-other-school dependent" data-dependent-field="field-line" data-dependent-values="nettilukio,nettipk,aikuislukio">
      <label for="field-other-school" class="required">Opiskelen t�ll� hetkell� toisessa oppilaitoksessa</label>
      <select name="field-other-school" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true" data-dependencies="true">
        <option value="">-- Valitse --</option>
        <option value="kylla">Kyll�</option>
        <option value="en">En</option>
      </select>
    </div>

    <div class="form-section__field-container field-other-school-name dependent" data-dependent-field="field-other-school" data-dependent-values="kylla">
      <label for="field-other-school-name" class="required">Miss� oppilaitoksessa olet</label>
      <input type="text" name="field-other-school-name" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div>

    <div class="form-section__field-container field-goals dependent" data-dependent-field="field-line" data-dependent-values="nettilukio,aikuislukio">
      <label for="field-goals" class="required">Opiskelutavoitteet</label>
      <select name="field-goals" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
        <option value="">-- Valitse --</option>
        <option value="lukio">Lukion p��tt�todistus</option>
        <option value="yo">YO-tutkinto</option>
        <option value="molemmat">Molemmat</option>
      </select>
    </div>

    <div class="form-section__field-container field-foreign-student dependent" data-dependent-field="field-line" data-dependent-values="aineopiskelu">
      <label for="field-foreign-student" class="required">Oletko ulkomainen vaihto-opiskelija?</label>
      <select name="field-foreign-student" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
        <option value="">-- Valitse --</option>
        <option value="kylla">Kyll�</option>
        <option value="en">En</option>
      </select>
    </div>

    <div class="form-section__field-container field-previous-foreign-studies dependent" data-dependent-field="field-line" data-dependent-values="mk">
      <label for="field-previous-foreign-studies" class="required">Aikaisemmat opinnot kotimaassasi ja Suomessa</label>
      <textarea name="field-previous-foreign-studies" rows="5" cols="40" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true"></textarea>
    </div>

    <div class="form-section__field-container field-job">
      <label for="field-job" class="required">Olen t�ll� hetkell�</label>
      <select name="field-job" data-parsley-required="true" data-dependencies="true">
        <option value="">-- Valitse --</option>
        <option value="tyollinen">Ty�llinen</option>
        <option value="tyoton">Ty�t�n</option>
        <option value="opiskelija">Opiskelija</option>
        <option value="elakelainen">El�kel�inen</option>
        <option value="muu">Muu</option>
      </select>
    </div>

    <div class="form-section__field-container field-job-other dependent" data-dependent-field="field-job" data-dependent-values="muu">
      <label for="field-job-other" class="required">Kerro tarkemmin</label>
      <input type="text" name="field-job-other" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
    </div>

    <div class="form-section__field-container field-foreign-line dependent" data-dependent-field="field-line" data-dependent-values="mk">
      <label for="field-foreign-line" class="required">Opintojen tyyppi</label>
      <select name="field-foreign-line" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true" data-dependencies="true">
        <option value="">-- Valitse --</option>
        <option value="apa">Aikuisten perusopetuksen alkuvaiheen koulutus</option>
        <option value="pk">Monikulttuurinen peruskoululinja (aikuisten perusopetuksen p��tt�vaihe)</option>
        <option value="luva">LUVA eli lukioon valmentava koulutus maahanmuuttajille</option>
        <option value="lisaopetus">Lis�opetus</option>
      </select>
    </div>

    <div class="form-section__field-container dependent" data-dependent-field="field-foreign-line" data-dependent-values="apa">
      <p>Perusopetuksen alkuvaiheessa opiskelet peruskouluopiskelussa tarvittavia perustietoja ja -taitoja. Lis�ksi harjoitellaan opiskelu- ja tiedonhankintataitoja.</p>
    </div>

    <div class="form-section__field-container dependent" data-dependent-field="field-foreign-line" data-dependent-values="pk">
      <p>Monikulttuurisen peruskoululinjan tavoitteena on peruskoulun p��tt�todistus.</p>
    </div>

    <div class="form-section__field-container dependent" data-dependent-field="field-foreign-line" data-dependent-values="luva">
      <p>Koulutus on tarkoitettu maahanmuuttajille ja vieraskielisille, joiden tavoitteena ovat lukio-opinnot ja joilla on jo peruskoulun p��tt�todistus tai vastaavat tiedot.</p>
    </div>

    <div class="form-section__field-container field-residence-permit dependent" data-dependent-field="field-line" data-dependent-values="mk">
      <label for="field-residence-permit" class="required">Onko sinulla oleskelulupa Suomeen?</label>
      <select name="field-residence-permit" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
        <option value="">-- Valitse --</option>
        <option value="kylla">Kyll�</option>
        <option value="ei">Ei</option>
      </select>
    </div>

    <div class="form-section__field-container field-info">
      <label for="field-info">Haluan kertoa itsest�ni ja opiskelutavoitteistani seuraavaa</label>
      <textarea name="field-info" rows="5" cols="40"></textarea>
    </div>

    <div class="form-section__field-container field-lodging dependent" data-dependent-field="field-line" data-dependent-values="aikuislukio,bandilinja,mk">
      <div class="field-row-flex">
        <div class="field-row-element">
          <input type="checkbox" id="field-lodging" name="field-lodging" value="kylla">
        </div>
        <div class="field-row-label">
          <label for="field-lodging">Tarvitsen asunnon opiston kampukselta</label>
        </div>
      </div>
    </div>

    <div class="form-section__field-container field-lodging-partial dependent" data-dependent-field="field-line" data-dependent-values="laakislinja,kasvatustieteet">
      <div class="field-row-flex">
        <div class="field-row-element">
          <input type="checkbox" id="field-lodging-partial" name="field-lodging-partial" value="kylla">
        </div>
        <div class="field-row-label">
          <label for="field-lodging-partial">Tarvitsen asunnon opiston kampukselta l�hijaksojen ajaksi</label>
        </div>
      </div>
    </div>

  </section>

  <section class="form-section section-attachments" data-skip="true">

    <div class="application-line"></div>
    
    <h3 class="form-section__header">Hakemuksen liitteet</h3>

    <div class="form-section__field-container field-nettilukio-liiteohje dependent" data-dependent-field="field-line" data-dependent-values="nettilukio">
      <div>Voit liitt�� t�h�n todistusj�ljenn�kset s�hk�isesti. Voit toimittaa todistusj�ljenn�kset my�s s�hk�postin liitetiedostoina eeva.lehikoinen@otavanopisto.fi tai postitse (Otavan Opisto / nettilukio, Otavantie 2 B, 50670 Otava)</div>
    </div>

    <div class="form-section__field-container field-nettipk-liiteohje dependent" data-dependent-field="field-line" data-dependent-values="nettipk">
      <div>Voit liitt�� t�h�n todistusj�ljenn�kset s�hk�isesti. Voit toimittaa todistusj�ljenn�kset my�s s�hk�postin liitetiedostona elise.hokkanen@otavanopisto.fi tai postitse (Otavan Opisto / nettiperuskoulu, Otavantie 2 B, 50670 Otava)</div>
    </div>

    <div class="form-section__field-container field-nettipk-liiteohje dependent" data-dependent-field="field-line" data-dependent-values="aikuislukio">
      <div>Voit liitt�� t�h�n todistusj�ljenn�kset s�hk�isesti. Voit toimittaa todistusj�ljenn�kset my�s s�hk�postin liitetiedostona petri.louhivuori@otavanopisto.fi tai postitse (Otavan Opisto / nettilukio, Otavantie 2 B, 50670 Otava)</div>
    </div>

    <div class="form-section__field-container field-bandilinja-liiteohje dependent" data-dependent-field="field-line" data-dependent-values="bandilinja">
      <div>Voit liitt�� t�h�n musiikkin�ytteit�si s�hk�isesti. Voit toimittaa musiikkin�ytteet my�s s�hk�postin liitetiedostona osoitteeseen jukka.tikkanen@otavanopisto.fi.</div>
    </div>

    <div class="form-section__field-container field-nettipk-liiteohje dependent" data-dependent-field="field-line" data-dependent-values="mk">
      <div>Voit liitt�� t�h�n todistusj�ljenn�kset s�hk�isesti. Voit toimittaa todistusj�ljenn�kset my�s s�hk�postin liitetiedostona anna-maria.suora@otavanopisto.fi tai postitse (Otavan Opisto / maahanmuuttajakoulutukset, Otavantie 2 B, 50670 Otava)</div>
    </div>

    <div class="form-section__field-container field-attachments">
      <div class="field-attachments__uploader">
        <div class="field-attachments__selector-container">
          <input type="file" id="field-attachments" name="field-attachments" multiple="true" class="field-attachments__selector">
          <div class="field-attachments__description">Lis�� liitteit� klikkaamalla t�st� tai raahaamalla niit� t�h�n laatikkoon. Liitteiden suurin sallittu yhteiskoko on 10 MB</div>
        </div>
        <div id="field-attachments-files" class="field-attachments__files"></div>
      </div>
    </div>

  </section>

  <section class="form-section section-source">

    <div class="application-line"></div>

    <h3 class="form-section__header">Mist� sait tiedon koulutuksesta</h3>
  
    <div class="form-section__field-container field-source">
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="known" type="checkbox" name="field-source" value="tuttu">
        </div>
        <div class="field-row-label">
          <label for="known">Ennest��n tuttu</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="google" type="checkbox" name="field-source" value="google">
        </div>
        <div class="field-row-label">
          <label for="google">Google</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="facebook" type="checkbox" name="field-source" value="facebook">
        </div>
        <div class="field-row-label">
          <label for="facebook">Facebook</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="instagram" type="checkbox" name="field-source" value="instagram">
        </div>
        <div class="field-row-label">
          <label for="instagram">Instagram</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="sanomalehti" type="checkbox" name="field-source" value="sanomalehti">
        </div>
        <div class="field-row-label">
          <label for="sanomalehti">Sanomalehti</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="tienvarsimainos" type="checkbox" name="field-source" value="tienvarsimainos">
        </div>
        <div class="field-row-label">
          <label for="tienvarsimainos">Tienvarsimainos</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="valotaulumainos" type="checkbox" name="field-source" value="valotaulumainos">
        </div>
        <div class="field-row-label">
          <label for="valotaulumainos">Valotaulumainos</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="elokuva" type="checkbox" name="field-source" value="elokuva">
        </div>
        <div class="field-row-label">
          <label for="elokuva">Elokuva- tai TV-mainos</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="radio" type="checkbox" name="field-source" value="radio">
        </div>
        <div class="field-row-label">
          <label for="radio">Radio</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="tuttava" type="checkbox" name="field-source" value="tuttava">
        </div>
        <div class="field-row-label">
          <label for="tuttava">Kuulin kaverilta, tuttavalta, tms.</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="te-toimisto" type="checkbox" name="field-source" value="te-toimisto">
        </div>
        <div class="field-row-label">
          <label for="te-toimisto">TE-toimisto</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="messut" type="checkbox" name="field-source" value="messut">
        </div>
        <div class="field-row-label">
          <label for="messut">Messut</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="nuorisotyo" type="checkbox" name="field-source" value="nuorisotyo">
        </div>
        <div class="field-row-label">
          <label for="nuorisotyo">Nuorisoty�</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="opot" type="checkbox" name="field-source" value="opot">
        </div>
        <div class="field-row-label">
          <label for="opot">Opot</label>
        </div>
      </div>
      <div class="field-row-flex">
        <div class="field-row-element">
          <input id="muu" type="checkbox" name="field-source" value="muu" data-dependencies="true">
        </div>
        <div class="field-row-label">
          <label for="muu">Muu</label>
        </div>
      </div>
    </div>

    <div class="form-section__field-container field-source-other">
      <label for="field-source-other" class="required">Kerro tarkemmin mist�</label>
      <input type="text" name="field-source-other" data-parsley-required="true">
    </div>
  
  </section>

  <section class="form-section section-summary">

    <div class="application-line"></div>

    <h3 class="form-section__header">Tarkista viel� yhteystietosi mahdollisia yhteydenottoja varten</h3>

    <div class="summary-container">
      <label for="summary-name">Nimi</label>
      <div id="summary-name"></div>
    </div>
    <div class="summary-container">
      <label for="summary-phone">Puhelinnumero</label>
      <div id="summary-phone"></div>
    </div>
    <div class="summary-container">
      <label for="summary-email">S�hk�postiosoite</label>
      <div id="summary-email"></div>
    </div>

    <div class="summary-container field-privacy">
      <div class="field-row-flex">
        <div class="field-row-element">
          <input type="checkbox" id="field-privacy" name="field-privacy" value="kylla" data-parsley-required-if-shown="true" data-parsley-validate-if-empty="true">
        </div>
        <div class="field-row-label">
          <label for="field-privacy">Olen lukenut <a href="#" class="summary-privacy-link">tietosuojaselosteen</a> ja hyv�ksyn, ett� tietoni tallennetaan Otavan Opiston oppilashallintoj�rjestelm��n sek� verkko-oppimisymp�rist��n. </label>
        </div>
      </div>
    </div>
    
    <div class="privacy-policy-overlay" style="display: none;">
    </div>
    <div class="privacy-policy" style="display: none;">
      <div class="privacy-policy__close"></div>
      <h3>1. Rekisterin pit�j�</h3>
      <p>
        Otavan Opisto<br> Mikkelin kaupunki
      </p>
      <p>y-tunnus: 0165116-3</p>
      <h3>2. Yhteyshenkil�</h3>
      <p>
        Riitta Kesonen<br> Otavantie 2 b<br> 50670 OTAVA<br> puh. 044 794 3552
      </p>
      <h3>3. Rekisterin nimi</h3>
      <p>Pyramus -oppilashallintoj�rjestelm�</p>
      <h3>4. Henkil�tietojen k�sittelyn tarkoitus</h3>
      <p>Opetuksen ja koulutuksen j�rjest�minen</p>
      <h3>5. Rekisterin tietosis�lt�</h3>
      <ul>
        <li>opiskelija nimi</li>
        <li>henkil�tunnus</li>
        <li>valokuva</li>
        <li>kansalaisuus</li>
        <li>sukupuoli</li>
        <li>�idinkieli</li>
        <li>kotikunta ja tarpeelliset yhteystiedot (kotiosoite, puhelinnumero, s�hk�postiosoite)</li>
        <li>opiskelijan aikaisempaa koulutusta ja koulumenestyst� koskevat tiedot</li>
        <li>koulutukseen hakemista, hyv�ksymist� ja opiskelijaksi ottamista koskevat tiedot</li>
        <li>opiskelijaksi ottamiseen vaikuttavat tiedot ty�kokemuksesta</li>
        <li>haastatteluissa ja muissa yhteydenotoissa kertyv� aineisto</li>
        <li>viitetieto opiskelijan j�rjestelm�ss� tekemiin s�hk�isiin allekirjoituksiin</li>
        <li>oppilaitoksessa opiskeluun, opintojen etenemiseen ja suoritteisiin liittyv�t tiedot</li>
        <li>ylioppilastutkintoa koskevat tiedot</li>
      </ul>
      <h3>6. S��nn�nmukaiset&nbsp; tietol�hteet</h3>
      <ul>
        <li>Opiskelija t�ytt�� haku-/ilmoittautumislomakkeelle tiedot itse</li>
        <li>Osa rekisteriin talletetuista tiedoista on koottu opiskelijan kanssa k�ytyjen keskustelujen perusteella</li>
        <li>Opettajat ja ohjaajat tallentavat arviointitiedot j�rjestelm��n</li>
        <li>Oppimisymp�rist�ss� toteutettavat kurssi-ilmoittautumiset, saadut arvosanat, sek� muut opiskeluun liittyv�t opiskelijan tekem�t
          tapahtumat kirjautuvat rekisteriin automaattisesti</li>
      </ul>
      <h3>7. S��nn�nmukaiset tietojen luovutukset</h3>
      <p>Opiskelijatietoja luovutetaan eteenp�in toisille viranomaisille tilastointi- ja rahoitusteknisist� syist�. Tietoja luovutetaan
        seuraaville tahoille:</p>
      <ul>
        <li>Opetushallitus</li>
        <li>Tilastokeskus</li>
        <li>Kansanel�kelaitos</li>
        <li>Mikkelin kaupungin opetustoimi</li>
        <li>Ylioppilastutkintolautakunta</li>
      </ul>
      <p>Opiskelijan yhteystiedot luovutetaan nuorisolain edellytt�miss� tapauksissa opiskelijan kotikunnan etsiv�lle nuorisoty�lle.</p>
      <p>Lis�ksi abiturienttien nimet, osoite ja oppilaitoksen nimi luovutetaan Akateemiselle kustannusliikkeelle Spes Patriae
        -ylioppilaskuvastoa varten.</p>
      <h3>8. Rekisterin suojauksen periaatteet</h3>
      <p>Henkil�tiedot suojataan asiattomalta p��sylt� ja laittomalta k�sittelylt� (esim. h�vitt�minen, muuttaminen tai luovuttaminen).
        Salassa pidett�vien ja arkaluonteisten tietojen suojaamiseen kiinnitet��n erityist� huomiota.</p>
      <p>Suojaus perustuu j�rjestelm�tasolla valvottujen k�ytt�j�oikeuksien k�ytt�j�tileihin. Tietokanta varmuuskopioidaan
        maantieteellisesti erill��n sijaitsevaan konesaliin kiintolevypohjaiseen varmistusj�rjestelm��n. Levytallennusj�rjestelm�st�
        tallennetaan tiedot viel� varmuuskopiointinauhoille kolmanteen, edelleen maantieteellisesti erill��n sijaitsevaan paikkaan.
        Varmistusnauha-asema sijaitsee lukitussa murtovalvonnan alaisena olevassa tilassa. Nauhat s�ilytet��n kassakaapissa.</p>
      <h3>9. Rekister�idyn tarkastusoikeus</h3>
      <p>Rekister�idyll� on oikeus tarkastaa itse��n koskevat rekisterin tiedot.</p>
      <p>Tarkastuspyynt� tehd��n henkil�kohtaisen k�ynnin yhteydess� tai omak�tisesti allekirjoitetulla tai muulla luotettavalla tavalla
        varmennetulla asiakirjalla. Tarkastuspyynt� kohdistetaan rekisterin yhteyshenkil�lle.</p>
      <h3>10. Tiedon korjaaminen</h3>
      <p>Rekisteriss� olevien virheellisten, puutteellisten tai vanhentuneiden henkil�tietojen korjauspyynn�t voidaan osoittaa rekisterin
        yhteyshenkil�lle. Henkil�llisyytens� varmistaneen henkil�n vaatimat rekisteri� koskevat korjaukset ja muut muutokset tehd��n viipym�tt�.</p>
      <p>Jollei muutospyynt�� katsota perustelluksi, annetaan muutospyynn�n esitt�j�lle kirjallinen todistus, jossa selvitet��n syyt miksi
        muutosvaatimusta ei olla hyv�ksytty. Rekister�ity voi saattaa asian tietosuojavaltuutetun k�sitelt�v�ksi.</p>
    </div>
  </section>
  
  <section class="form-section section-done submitted" data-skip="true">
    <h3 class="form-section__header">Hakemuksesi on vastaanotettu</h3>
    <p>Hakemustietojen muokkaaminen j�lkik�teen on mahdollista osoitteessa <a href="/applications/edit.page">https://pyramus.otavanopisto.fi/applications/edit.page</a></p>
    <p>Tarvitset seuraavat tiedot hakemuksen muokkaamiseen:</p>
    <p class="important"><span class="important__label">Sukunimi</span><span class="important__data" id="edit-info-last-name"></span></p>
    <p class="important"><span class="important__label">Hakemustunnus</span><span class="important__data" id="edit-info-reference-code"></span></p>
    <p>Uusien hakemuksien tapauksessa n�m� ohjeet on l�hetetty my�s antamaasi s�hk�postiosoitteeseen <span class="email" id="edit-info-email"></span></p>
  </section>

  <section class="form-section section-done internetix-submitted" data-skip="true">
    <h3 class="form-section__header">Hakemuksesi on tallennettu</h3>
    <p>Koska olet tietojemme mukaan opiskellut Otavan Opistossa aiemminkin, k�sittelemme hakemuksesi manuaalisesti. L�het�mme sinulla s�hk�postia antamaasi osoitteeseen, kun hakemus on k�sitelty.</p>
  </section>

  <section class="form-section section-done registered" data-skip="true">
    <h3 class="form-section__header">Hakemuksesi on tallennettu</h3>
    <p>L�hetimme antamaasi s�hk�postiosoitteeseen ohjeet, joilla voit luoda haluamasi tunnukset Otavan Opiston Muikku-oppimisymp�rist��n.</p>
  </section>

  <nav class="form-navigation" style="display:none;">
    <button id="button-previous-section" type="button" class="button-previous-section previous btn btn-info pull-left">Edellinen</button>
    <div id="application-page-indicator" class="application-page-indicator"></div>
    <button id="button-next-section" type="button" class="button-next-section next btn btn-info pull-right">Seuraava</button>
    <button id="button-save-application" type="button" class="button-save-application">L�het�</button>
  </nav>    

</form>

<div class="application-file template" style="display:none;">
  <div class="application-file__details">
    <span class="application-file__name"><a class="application-file__link" target="_blank"></a></span>
    <span class="application-file__size"></span>
  </div>
  <div class="application-file__delete"></div>
</div>

<div class="application-file-upload-progress template" style="display:none;">
  <div class="application-file-upload-progress-text"></div>
  <div class="application-file-upload-progress-bar"></div>
</div>
