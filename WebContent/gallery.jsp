
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="/includes/top.jsp" %>
<% 
	imagenesDAO vDAO=new imagenesDAO();
	List<imagenes> llista = null;
%>
<!-- in  -->

<h2>Imagenes</h2>
<br>

<div class="acenter ">
	<a href="addImage.jsp" ><button class="btnlong btnblack marco">Añadir Nueva Imagen</button></a>
</div>

<br>

<table class="marco table99 bgslider" >

            <%
            ResultSet res = vDAO.obtenirImatges();
            
            while (res.next()) { %>
             
           <tr>
           
           
           		<td>
		          
						<h3><%=res.getString("titulo")%></h3>
					
						<%=res.getString("descripcion")%>
						<br>
						<br>
						<span class="pad30">
						<img class="imgg zoom marco" src="<%=res.getString("url")%>"/>
						</span>
						<br>
						
						Subido por <%=res.getString("subidopor")%> el día <%=res.getString("fecha")%>
						
					
				<br><br><br><br><br>
				</td>
				<%
				if(res.next()){
				%>
				<td>		        
						<h3><%=res.getString("titulo")%></h3>
						
						<%=res.getString("descripcion")%>
						<br>
						<br>
						<span class="pad30">
						<img class="imgg zoom marco" src="<%=res.getString("url")%>"/>
						</span>
						<br>
						
						Subido por <%=res.getString("subidopor")%> el día <%=res.getString("fecha")%>
					
					
				<br><br><br><br><br>
				</td>
				
				
				<%
				}
				%>
			
           </tr>
     		
			 
			 <%} %>
            </table>

<%@include file="/includes/bot.jsp" %>
	
	
