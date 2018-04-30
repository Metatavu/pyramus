<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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