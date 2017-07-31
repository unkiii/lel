<%@include file="/includes/toplogin.jsp" %>

<%
int incorrecte;
int lopermis = 0;
try{
	incorrecte = Integer.parseInt(session.getAttribute("correcte").toString());
	lopermis = Integer.parseInt(session.getAttribute("permisos").toString());
	
}catch(Exception e){
	incorrecte = 0;
}
%>
<br><br>
  <h2>Login</h2>
  
    <form method="Post" action="login" name="frmLogin" class="acenter">
    	<i>Name</i><br>
    	<input type="text" name="dni" placeholder="D.N.I." class="marco" required/>
      <br><br>
    	<i>Password</i><br>
    	<input type="password" name="password" placeholder="Contrasenya" class="marco" required/>

    	<br><br>
    	<div class="acenter ">
			<input type="submit" value="login" class="btnlong btnblack marco" />
		</div>

    </form>
    
    <br><br><br>
    
    <%if(incorrecte == 0 && lopermis == 0){ %>
	  	<div class="error acenter" id="alerta">
	  		Error, <strong> No tienes permisos para acceder al sitio web. <br> ponte en contacto con un administrador para que te active la cuenta. </strong>
	  	</div>
    <%} %>
    
    <%if(incorrecte == 1){ %>
	  	<div class="error acenter" id="alerta">
	  		Error, <strong>Los datos introducidos no son correctos. </strong>
	  	</div>
  	 
  	<%} %>
  	
    <div class="acenter">
    	No tienes una cuenta? <a href="/registre/registrar.jsp">Registrate.</a>
    </div>

  


	<script src="/js/login.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>    
    
<%@include file="/includes/bot.jsp" %>