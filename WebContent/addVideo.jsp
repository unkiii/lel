<%@include file="/includes/top.jsp" %>



<script language=JavaScript>
	function cambiaPalabra() {
	document.algunNombre.texto.value="Adios";
	}
</script>

	

<h2>Añadir un nuevo vídeo</h2>

<h3>Entra los datos</h3>
<hr>
	
<br>
<form method="post" name="mForm" action="/registre/addvideo" onKeypress="if(event.keyCode == 13) event.returnValue = false;">


	
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
					<i>URL del video*  </i>
					</td>
					<td>
					<input size="120px" class="marco" type="text" id="url" name="url"  required>
				</td>
			</tr>
		</table>
		<br><br><br><br>
		* No hay que añadir la URL entera, solo el final 'en rojo' (todo lo hay después del 'igual ='): 
		https://www.youtube.com/watch?v=<span style="color:red;">gYTXJBKmDAc</span>
				
		<br><br><br>
			
		<div class="acenter ">
			<a href="videos.jsp" ><button class="btnlong btnblack marco">Guardar Video</button></a>
		</div>
	
	</form>

<br><br><br>


<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&libraries=places&callback=initMap">
</script>
            
<%@include file="/includes/bot.jsp" %>

