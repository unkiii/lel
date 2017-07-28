<%@include file="/includes/top.jsp" %>



<script language=JavaScript>
	function cambiaPalabra() {
	document.algunNombre.texto.value="Adios";
	}
</script>

	

<h2>Modifica tu Perfil</h2>

<h3>Datos Personales</h3>
<hr>
	
<br>
<form method="post" name="mForm" action="/registre/modificarUser" onKeypress="if(event.keyCode == 13) event.returnValue = false;">

	<div class="table40">
	
	<input class="marco" type="text" id="uNif" name="uNif"  value="<%=usuNif%>" hidden>
	
	
	
		<table>
			<tr class="right">
			
				<td WIDTH="300">
					<i>Nombre </i>
					</td><td>
					<input class="marco" type="text" id="input-25" name="input-25"  value="<%=nombre%>" required="" >
				</td>
				<td rowspan=6><div style="height: 400px; width:500px; border: 2px darkcyan solid; margin: 0 auto;" id="map"></div></td>
			</tr>
			<tr class="right">
				<td>
					<i>Contraseña </i>
					</td><td>
					<input class="marco" type="text" id="input-26" name="input-26" value="<%=pass%>" required="" >
				</td>
				<td></td>
			</tr>
			<tr class="right">
				<td>
					<i>Cumpleaños </i>
					</td><td>
					<input class="marco" type="date" id="input-27" name="input-27" value="<%=fnaci%>" required="" >
				</td>
				<td></td>
			</tr>
			<tr class="right">
				<td>
					<i>Poblacion </i>
					</td><td>
					
					
			
            <input id="address" name="input-28" type="textbox" value="<%=pobla%>" placeholder="Buscar una ciudad" class="form-control marco" onchange="initMap()" required>
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
			<tr class="right">
				<td>
					<i>Num. Movil </i>
					</td><td>
					<input class="marco" type="text" id="input-30" name="input-30" value="<%=movil%>" required="" >
				</td>
				<td></td>
			</tr>
			<tr class="right">
				<td>
					<i>E-Mail </i>
					</td><td>
					<input class="marco" type="text" id="input-29" name="input-29" value="<%=email%>" required="" >
				</td>
				<td></td>
			</tr>
		</table>
		</div>		
		
		<br><br><br>
				
				
		<h3>Foto de Perfil</h3>
			<hr>				
		<div class="table40">
			<img class="perfil" src="<%=fotperfil%>" width="120" height="90" style="margin-top:30px;"/>
			<div class="acenter ">
				<i>Cambiar URL de la imagen:</i>
				<input size="50px" class="marco" type="text" id="input-20" name="input-20"  value="<%=fotperfil%>" required="" >
			</div>
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
					<input class="marco" type="text" id="input-32" name="input-32" value="<%=idbt%>" required="" >
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<i>pprinci</i>
					</td><td>
					<input class="marco" type="text" id="input-33" name="input-33" value="<%=pprinci%>" required="" >
				</td>
				
			</tr>
			
			<tr>
				<td>
					<i>ilac</i>
					</td><td>
					<input class="marco" type="text" id="input-34" name="input-34" value="<%=ilac%>" required="" >
		
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<i>pec</i>
					</td><td>
					<input class="marco" type="text" id="input-35" name="input-35" value="<%=pec%>" required="" >
				</td>
			</tr>
			
		</table>
		
		<br><br><br><br><br>
			
		<div class="acenter ">
			<a href="perfil.jsp" ><button class="btnlong btnblack marco">Guardar Cambios</button></a>
		</div>
	
	</form>

<br><br><br>


<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&libraries=places&callback=initMap">
</script>
            
<%@include file="/includes/bot.jsp" %>

