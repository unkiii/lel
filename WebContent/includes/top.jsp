<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@ page import="controlador.*" %>
<%@ page import="model.*" %>
<%@ page import="servlet.*" %>


    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
			<title>oPs!</title>
			
			<script type="text/javascript">
				$(document).ready(function() {
		    		setTimeout(function() {
		        	$(".content").fadeOut(1500);
		    		},1500);
				});
			</script>
			
			<!-- START GOOGLE MAPS -->
			
			
			<script>
                
                function initMap() {
                    var latlon = new google.maps.LatLng(40.4167754, -3.7037901999999576);
                    var mapOptions = {center: latlon, zoom: 12, rotateControl: true};
                    var map = new google.maps.Map(document.getElementById('map'),mapOptions );
                    
                    
                    autocomplete = new google.maps.places.Autocomplete(
                            /** @type {!HTMLInputElement} */(document.getElementById('address')),
                            {types: ['(cities)']});

                    var geocoder = new google.maps.Geocoder();

                    autocomplete.addListener('place_changed', geocodeAddress(geocoder, map));
                    
                    document.getElementById('address').onkeydown = function(event) {
                        if (event.keyCode == 13) {
                            geocodeAddress(geocoder, map);
                        }
                    }
                    /*document.getElementById('submit').addEventListener('click', function () {
                        geocodeAddress(geocoder, map);
                    });*/
                }

                </script>
                <script>
                function geocodeAddress(geocoder, resultsMap) {
                    var address = document.getElementById('address').value;
                    var marker;
                   
               
                    geocoder.geocode({'address': address}, function (results, status) {
                        if (status === 'OK') {
                            resultsMap.setCenter(results[0].geometry.location);
                            marker = new google.maps.Marker({
                                map: resultsMap,
                                position: results[0].geometry.location,
                                draggable: true, //TODO MOURE MARCA
                                
                            });
                            var infowindow = new google.maps.InfoWindow();
                            google.maps.event.addListener(marker,'click',function() {
                                infowindow.setContent(address);
                                infowindow.open(resultsMap,marker);
                            });
                            
                            var lat = results[0].geometry.location.lat();
                            var lon = results[0].geometry.location.lng();
                            var placeid = results[0].place_id;
     
                            
                            
                            
                            results[0].geometry.localitation
                            //window.alert(address + " " + lat + "\n" + lng);
							
                            document.getElementById("hiddenLat").value = lat;
                            document.getElementById("hiddenLon").value = lon;
                            document.getElementById("hiddenNom").value = address;
                            document.getElementById("textalti").value = lat;
                            document.getElementById("textlongo").value = lon;
                            document.getElementById("placeid").value = placeid;

                        }
                    });
                }
                
            </script>
			
			
			
			
			<!-- FINISH GOOGLE MAPS -->
			
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
					response.sendRedirect("login.jsp");
					session.invalidate();
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
		
		
	
		
		
		
		<%
			UsuariDAO udao = new UsuariDAO();
			Usuari u = new Usuari();
			u = udao.consultaPerfil(usuNif);
			String nombre = u.getNombre();
			String pass = u.getPasswd();
			String fnaci = u.getFechanacimiento();
			String pobla = u.getPoblacion();
			String email = u.getEmail();
			String movil = u.getMovil();
			double latitud = u.getAltitud();
			double lng = u.getLng();
			String fotperfil = u.getFotperfil();
			String idbt = u.getIdbt();
			String pprinci = u.getPprinci();
			String ilac = u.getIlac();
			String pec = u.getPec();
		%>

		<div class="header">
			<div class="top"></div>
		
			<div class="loginout" >    
			<table align="right" id="tableright">
				<tr>
				<td>
					<img src="<%=fotperfil%>" width="80px" height="50px"/>
				</td>
					<td>
					<strong><span id="txtgreen">Logged:</span> <span id="txtorange"><%=usuNif%></span></strong>
			<script type="text/javascript">
				function submitform(){
		  			document.logoutForm.submit();
				}
			</script>            
			<form method="post" action="/registre/logout" name="logoutForm">
				<a href="javascript: submitform()" id="txtwhite">LOGOUT<br></a>
			</form>
			</td>
			</tr>
			</table>
			</div>
		</div>
		
		<!-- MENU -->
		<div class="menu acenter">
			<span class="bordergreen">
				<a href="index.jsp"><button class="btn btnblack">Home</button></a>
				
				<span class="separator">|</span>
				<a href="index.jsp"><button class="btn btnblack">-</button></a>
				
				<span class="separator">|</span>
				<a href="index.jsp"><button class="btn btnblack">-</button></a>
				
				<span class="separator">|</span>
				<a href="index.jsp"><button class="btn btnblack">-</button></a>
				
				<span class="separator">|</span>				
				<a href="map.jsp"><button class="btn btnblack">InfoMaps</button></a>
				
				<span class="separator">|</span>
				<a href="perfilVer.jsp"><button class="btn btnblack">Perfil</button></a>
			</span>
		</div>
		<br>
		
	