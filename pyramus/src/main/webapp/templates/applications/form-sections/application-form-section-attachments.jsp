<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
