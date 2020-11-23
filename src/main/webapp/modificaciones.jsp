<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="includes/cabecera.jsp" />
<div class="container2">
	<div class="caja-centrada">
		
		<p>Vas a modificar los datos de ${perro.nombre}</p>		
		
	

			
		
		<form method="post" action="perro-modificar">
			
			<div class="form-group">
				<label for="nombre">Nombre:</label>
				<input type="text" autofocus id="nombre" name="nombre" placeholder="${perro.nombre}" required>
			</div>
			
			
			<div class="form-group">
				<label for="raza">Raza:</label>
				<input type="text" id="raza" name="raza" placeholder="Raza actual es: ${perro.raza}" required>
			</div>
			
			<div class="form-group">
				<label for="peso">Peso(kg):</label>
				<input type="number" id="peso" name="peso" placeholder="Peso actual: ${perro.peso}" required>
			</div>
			
			<div class="form-check">
				<label for="vacunado">Marca si esta Vacunado</label>
				<input type="checkbox" id="vacunado" name="vacunado" checked>
			</div>
			
			<div class="form-group">
				<label for="historia">Historia</label>
				<textarea id="historia" name="historia" cols="30" rows="5" placeholder="Cuentame la historia del perro"></textarea>	
			</div>
			
			<input id="eliminar" type="submit" class="boton" value="Guardar Datos">
		</form>
		</div>
</div>
<jsp:include page="includes/pie.jsp" />		