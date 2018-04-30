<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
