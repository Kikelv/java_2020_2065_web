<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="includes/cabecera.jsp" />
<div class="container2">
	<div class="caja-centrada">
		<h1>Dar de alta nuevo Perro</h1>
		

			<p>Esto envia datos por POST al controlador</p>
		
		<form method="post" action="perro-controller">
			
			<div class="form-group">
				<label for="nombre">Nombre:</label>
				<input type="text" autofocus id="nombre" name="nombre" placeholder="Nombre del perro" required>
			</div>
			
			
			<div class="form-group">
				<label for="raza">Raza:</label>
				<input type="text" id="raza" name="raza" placeholder="Raza del perro" required>
			</div>
			
			<div class="form-group">
				<label for="peso">Peso(kg):</label>
				<input type="number" id="peso" name="peso" placeholder="Peso en Kilogramos" required>
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