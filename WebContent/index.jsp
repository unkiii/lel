<%@ page import="controlador.*" %>
<%@ page import="model.*" %>
<%@ page import="servlet.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<script type="text/javascript">
		$(document).ready(function() {
    		setTimeout(function() {
        	$(".content").fadeOut(1500);
    		},1500);
		});
	</script>
</head>
<body>
<!-- Permetre acces nomes si hi ha una sessio -->
<%
	HttpSession sesion=request.getSession(); 
	String nif=null;
	String usuNif=null;
	int permis=0;
	try{
		if(sesion.getAttribute("nif") == null){	
			session.invalidate();
			response.sendRedirect("login.jsp");
		}

		usuNif = sesion.getAttribute("nif").toString();
		permis = Integer.parseInt(sesion.getAttribute("permis").toString());
		
		String sessionID = null;
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();			
			}
		}
	}catch(Exception e){}
	finally{}
		
%>


<span class="logout-spn" >                
<form method="post" action="Logout" name="logoutForm">
<a href="javascript: submitform()" style="color:#fff;">LOGOUT<br></a>
</form>

<p><strong>Welcome <%=usuNif%></strong></p>
<script type="text/javascript">
function submitform(){
  document.logoutForm.submit();
}
</script>
</span>
                

      <a href="perfil.jsp" class="button">Go to Perfil</a>
 
                


</body>
</html>