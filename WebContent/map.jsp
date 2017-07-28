<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	UsuariDAO mDAO=new UsuariDAO();
	List<Usuari> llista = null;
%>
<%@include file="/includes/top.jsp" %>

<!-- in  -->
    
    
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<meta name="viewport" content="initial-scale=1.0, user-scalable=no">


<script>
                
                function initMap() {
                    var latlon = new google.maps.LatLng(40.4167754, -3.7037901999999576);
                    var mapOptions = {center: latlon, zoom: 7, rotateControl: true};
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
            
            
            
            
          

<%
            ResultSet rs = mDAO.obtenirCoords();

			
            
        %>

        <div style="height: 600px; width:900px; margin: 0 auto; color:black;" id="map" class="marco"></div>
        <br><br>
        
        
        <script>
            function myMap() {
                var opcions = {
                    center: new google.maps.LatLng(40.4167754, -3.7037901999999576),
                    zoom: 6,
                };
                var map = new google.maps.Map(document.getElementById('map'), opcions);
               
                var locations = [
                    <% 
                    while (rs.next()) {%>
                    ['<%=rs.getString("poblacion")%>','<%=rs.getString("altitud")%>','<%=rs.getString("lng")%>'],
                    
                <% System.out.println( "-Nom: " + rs.getString("poblacion") + " -Altitud: " + rs.getString("altitud") + " -Longitud: " + rs.getString("lng"));
        			}%>
                    
                    ];
                   
              

                
                var infowindow = new google.maps.InfoWindow();
                var marker, j;
                for(j=0; j<locations.length; j++){
                    marker = new google.maps.Marker({
                        position: new google.maps.LatLng(locations[j][1], locations[j][2]),
                        map: map
                    });
                    
                    google.maps.event.addListener(marker, 'click', (function(marker,j){
                        return function(){
                            infowindow.setContent('<IMG BORDER="0" ALIGN="Left" SRC="/images/mundo.jpg" height="40px">'+locations[j][0]);
                            infowindow.open(map, marker);
                        }
                    })(marker,j));
                }
                
            }            

        </script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&callback=myMap"></script>
       
       <table class="marco table80">
       	<tr id="txtorange">
       			<td>
	           		name
	           </td>
	           <td>
	           		poblacion
	           </td>
	           <td>
	           		pprin
	           </td>
	           <td>
	           		 ilac
	           </td>
	           <td>
	           		 pec
	           </td>
           </tr>


            <%
            ResultSet res = mDAO.obtenirCoords();
            
            while (res.next()) {
           %>
           <tr>
           		<td>
	           		 <%=res.getString("nombre")%>
	           </td>
	           <td>
	           		 <%=res.getString("poblacion")%>
	           </td>
	           <td>
	           		 <%=res.getString("pprinci")%>
	           </td>
	           <td>
	           		 <%=res.getString("ilac")%>
	           </td>
	           <td>
	           		 <%=res.getString("pec")%>
	           </td>
           </tr>
           
           
           
           <%
       			 System.out.println( "-ppr: " + res.getString("pprinci") + " -ilac: " + res.getString("ilac") + " -pec: " + res.getString("pec"));
			 %>
			 
			 
			 
			 <%} %>
            </table>
            
            
            
            <br><br><br><br>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            

 
 
<%@include file="/includes/bot.jsp" %>