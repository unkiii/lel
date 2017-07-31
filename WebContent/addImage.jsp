<%@include file="/includes/top.jsp" %>



<script language=JavaScript>
	function cambiaPalabra() {
	document.algunNombre.texto.value="Adios";
	}
</script>

	

<h2>Añadir una nueva imagen</h2>

<h3>Entra los datos</h3>
<hr>
	
<br>
<form method="post" name="mForm" action="/registre/addimage" onKeypress="if(event.keyCode == 13) event.returnValue = false;">


	
	<input class="marco" type="text" id="uNif" name="uNif"  value="<%=usuNif%>" hidden>
	
	
	
		<table class="table80">
			<tr>
				<td class="right">
					<i>Titulo </i>
				</td>
				<td>
					<input size="120px" class="marco" type="text" id="titulo" name="titulo"  required>
				</td>
			</tr>
			<tr>
				<td class="right">
					<i>Descripción </i>
					</td>
					<td>
					<input size="120px" class="marco" type="text" id="descripcion" name="descripcion"  required>
				</td>
			</tr>
			<tr>
				<td class="right" >
					<i>URL de la imagen</i>
					</td>
					<td>
					<input size="120px" class="marco" type="text" id="url" name="url"  required>
				</td>
			</tr>
		</table>

		
				
		<br><br><br>
			
		<div class="acenter ">
			<a href="gallery.jsp" ><button class="btnlong btnblack marco">Guardar Imagen</button></a>
		</div>
	
	</form>

<br><br><br>


<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&libraries=places&callback=initMap">
</script>
            
<%@include file="/includes/bot.jsp" %>

