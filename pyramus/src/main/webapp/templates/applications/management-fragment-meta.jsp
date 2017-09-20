<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<section class="application-section application-meta">      
  <div class="user-exists-container">
    <div class="user-exists-description-title">Hakijan s�hk�postiosoite l�ytyy pyramuksesta.</div> 
    <div class="user-exists-description">
      <div class="description-piggy"></div>
      <div class="description-actions">Tehd��nk� hakijalle asioita? Hakijalle voidaan tehd� useita eri asiota. Ne kaikki asiat ovat mahtavia. Kaikki tiet�� sen.</div>
    </div>
  </div>
  
  <div class="additional-info-wrapper">
    <div class="additional-info-container">
      <div class="meta-container">
        <span class="meta-name">Hakemuksen tila</span>
        <span id="info-application-state-value" class="meta-value">${infoState}</span>
      </div>
      <div class="meta-container">
        <span class="meta-name">K�sittelij�</span>
        <span id="info-application-handler-value" class="meta-value">${infoHandler}</span>
      </div>
      <div class="meta-container">
        <span class="meta-name">Muokattu viimeksi</span>
        <span id="info-application-last-modified-value" class="meta-value">
          <fmt:formatDate pattern="d.M.yyyy H:mm" value="${infoLastModified}"/>
        </span>
      </div>
    </div>
  </div>
</section>
