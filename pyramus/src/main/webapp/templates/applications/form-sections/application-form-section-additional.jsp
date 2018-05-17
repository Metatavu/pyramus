<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
