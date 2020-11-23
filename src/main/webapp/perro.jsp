<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="includes/cabecera.jsp" />
<div class="container2">
<div class="caja-centrada">
	<h1>Perro registrado</h1>
	<div class="card"><img src="http://lorempixel.com/500/400/cats" alt="imagen de perro aleatoria"/><article><h2>${perro.nombre}</h2><p>Raza: ${perro.raza}</p><p>${perro.historia}</p></article></div>
	
</div></div>
<jsp:include page="includes/pie.jsp" />		