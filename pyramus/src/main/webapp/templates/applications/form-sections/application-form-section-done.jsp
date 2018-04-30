<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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