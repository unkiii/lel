<%@include file="/includes/toplogin.jsp" %>



<script language=JavaScript>
	function cambiaPalabra() {
	document.algunNombre.texto.value="Adios";
	}
</script>

	

<h2>Registrate</h2>

<h3>Datos Personales</h3>
<hr>
	
<br>
<form method="post" name="mForm" action="/registre/registrarUser" onKeypress="if(event.keyCode == 13) event.returnValue = false;">

	<div class="table40">
	
	<input class="marco" type="text" id="uNif" name="uNif"  hidden>
	
	
	
		<table>
			<tr class="right">
				<td WIDTH="300">
					<i>DNI </i>
					</td><td>
					<input class="marco" type="text" id="input-21" name="input-21"  required="">
				</td>
		
			
				<td rowspan=25>
				<div style="height: 400px; width:500px; border: 2px darkcyan solid; margin: 0 auto;" id="map"></div>
				</td>
			</tr>
			<tr class="right">
				<td WIDTH="300">
					<i>Nombre </i>
					</td><td>
					<input class="marco" type="text" id="input-25" name="input-25"  required="" >
				</td>
				</tr>
				
			<tr class="right">
				<td>
					<i>Contraseña </i>
					</td><td>
					<input class="marco" type="text" id="input-26" name="input-26" required="" >
				</td>
				<td></td>

			<tr class="right">
				<td>
					<i>Poblacion </i>
					</td><td>
					
					
			
            <input id="address" name="input-28" type="textbox" placeholder="Buscar una ciudad" class="form-control marco" onchange="initMap()" required>
              <small><i>Seleccione y pulse Enter.</i></small>

                    <input type="hidden" id="hiddenLat" name="lat"/>
                    <input type="hidden" id="hiddenLon" name="lon"/>
                    <input type="hidden" id="hiddenNom" name="ciudad"/>
                    
                    <!--
                    </td><td>
                     <input id="submit2" type="submit" value="Seleccionar"/> 
                    </td>
                    -->
                    
                    </td>
                   
					
			</tr>
			
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			
			
			<tr hidden >

				<td>           
					<label for="text1" class="control-label col-lg-6">Altitud</label>
					</td><td>
					<input type="text" id="textalti" name="alti" placeholder="Altitud" class="form-control">
				</td>
			</tr>
			<tr hidden >
			<td><br><br><br></td>
				<td>           
					<label for="text1" class="control-label col-lg-6">Longitud</label>
					</td><td>
					<input type="text" id="textlongo" name="longi" placeholder="Longitud" class="form-control">
				</td>
			</tr>
		</table>
		</div>		
		
	
		<br><br><br>
	
		<h3>Otra Info</h3>
		<hr>
		<br>
			
			
			
		<table class="table20">
			<tr>
				<td>
					<i>idbt</i>	
					</td><td>
					<input class="marco" type="text" id="input-32" name="input-32"  required="" >
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<i>pprinci</i>
					</td><td>
					<input class="marco" type="text" id="input-33" name="input-33" required="" >
				</td>
				
			</tr>
			
			
			
		</table>
		
		<br><br><br><br><br>
			
		<div class="acenter ">
			<a href="perfil.jsp" ><button class="btnlong btnblack marco">Registrate ya!</button></a>
		</div>
	
	</form>

<br><br><br>


<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&libraries=places&callback=initMap">
</script>
            
<%@include file="/includes/bot.jsp" %>

