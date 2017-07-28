<%@include file="/includes/top.jsp" %>





	

			<h2>Perfil</h2>

				
	
					<br><br><br>
					
					
						<h3>Datos Personales</h3>
						<hr>
							<br>
						
					
							<table class="table80 ">
								<tr>
									<td WIDTH="300">
										<i>Nombre</i><br>
										<input class="marco" type="text" id="input-25"  value="<%=nombre%>" required="" disabled>
									</td>
									
									<td>
										<i>Contraseña</i><br>
										<input class="marco" type="password" id="input-26" value="<%=pass%>" required="" disabled>
									</td>
									<td rowspan="3" WIDTH="300" HEIGHT="150" class="acenter">
									
										<span>Foto de Perfil</span>
										<br>
										<img class="perfil" src="<%=fotperfil%>" width="120" height="90" style="margin-top:30px;"/>
										<br><br>
									</td>
								</tr>	
								<tr>
									<td>
										<i>Fecha Nacimiento</i><br>
										<input class="marco" type="date" id="input-27" value="<%=fnaci%>" required="" disabled>
									</td>
									<td>
										<i>Poblacion</i><br>
										<input class="marco" type="text" id="input-28" value="<%=pobla%>" required="" disabled>
									</td>
									
								</tr>	
								<tr>
									<td>
										<i>Numero Movil</i><br>
										<input class="marco" type="number" id="input-30" value="<%=movil%>" required="" disabled>
									</td>
									<td>
										<i>E-Mail</i><br>
										<input class="marco" type="email" id="input-29" value="<%=email%>" required="" disabled>
									</td>
									 
									
							
								</tr>
								
								
								
											
							</table>
						
						
						
						
						<br><br><br>
	
						
						
						<h3>Otra Info</h3>
						<hr>
							<br>
							
							
						<table class="table40">
							<tr>
								<td>
									<i>idbt</i>	<br>
									<input class="marco" type="text" id="input-32" value="<%=idbt%>" required="" disabled>
								</td>
								
								<td>
									<i>pprinci</i><br>
									<input class="marco" type="text" id="input-33" value="<%=pprinci%>" required="" disabled>
								</td>
							</tr>
							
							<tr>
								<td>
									<i>ilac</i><br>
									<input class="marco" type="number" id="input-34" value="<%=ilac%>" required="" disabled>
						
								</td>
								
								<td>
									<i>pec</i><br>
									<input class="marco" type="text" id="input-35" value="<%=pec%>" required="" disabled>
								</td>
							</tr>
							
						</table>
						
							<br><br><br>
							
							<br><br><br>
								<hr>
						<div class="acenter ">
							<a href="perfil.jsp" ><button class="btnlong btnblack marco">Modificar</button></a>
						</div>
					
						
				
					<br><br><br>
					
						
					
							
					
			
<br>
					<br>
					<br>


<%@include file="/includes/bot.jsp" %>

