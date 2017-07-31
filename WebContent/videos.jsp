
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="/includes/top.jsp" %>
<% 
	videosDAO vDAO=new videosDAO();
	List<videos> llista = null;
%>
<!-- in  -->

<h2>videos</h2>
<br>

<div class="acenter ">
	<a href="addVideo.jsp" ><button class="btnlong btnblack marco">Añadir Nuevo Video</button></a>
</div>

<br>

<table class="marco table80">



            <%
            ResultSet res = vDAO.obtenirVideos();
            
            while (res.next()) {
           %>
           <tr>
           		<td>
		           <div class="bgslider">
						<h3><%=res.getString("titulo")%></h3>
						<hr>
						<%=res.getString("descripcion")%>
						<br>
						<span class="pad30">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/<%=res.getString("url")%>" frameborder="0" allowfullscreen></iframe>
						</span>
						<br>
						
						Subido por <%=res.getString("subidopor")%> el día <%=res.getString("fecha")%>
					</div>
				<br><br><br><br><br><br>
				</td>
           </tr>
     		 
			 
			 <%} %>
            </table>

<%@include file="/includes/bot.jsp" %>