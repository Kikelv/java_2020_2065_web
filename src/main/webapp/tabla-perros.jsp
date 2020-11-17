<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="includes/cabecera.jsp" />

	<h1>${mensaje}</h1>
	
	<p>* Si queremos ver la historia del perro, tendremos que acceder a sus detalles</p>
	 
	 <table>	 
	 	<caption>Perros registrados</caption>	 	
	 	<thead>
	 		<tr>
	 			<th>Id</th>
	 			<th>Nombre</th>
	 			<th>Raza</th>
	 			<th>Vacunado</th>
	 		</tr>
	 	</thead>	 	
	 	<tbody>
	 	 	<!-- repertir por cada perro -->
	 	 	<c:forEach items="${perros}" var="p">
		 		<tr>
		 			<td>${p.id}</td>
		 			<td><a href="perro-detalle?id=${p.id}">${p.nombre}</a></td>
		 			<td>${p.raza}</td>
		 			<td>${ (p.vacunado) ? 'Si' : 'No' }</td>
		 		</tr>
		 	</c:forEach>	
	 	</tbody>	 	
	 	<tfoot>
	 		<tr>
	 			<td colspan="4">${total}</td>
	 		</tr>
	 	</tfoot>	 	
	 </table>
	

<jsp:include page="includes/pie.jsp" />