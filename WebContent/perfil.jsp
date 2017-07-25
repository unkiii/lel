<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>oPs!</title>

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fantasy World Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- gallery -->
<link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
<!-- //gallery -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 

<!-- //font-awesome icons -->
<link href="//fonts.googleapis.com/css?family=Questrial" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Jura:300,400,500,600" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>


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
<a href="index.jsp" class="button">Go to Home</a>
	<div class="mail" id="mail">
		<div class="container">
			<h3 class="w3l_head w3l_head1">Perfil</h3>
			<p class="w3ls_head_para w3ls_head_para1">Modifica tu perfil</p>
			<div class="w3_mail_grids">
				<form action="#" method="post">
					<div class="col-md-6 w3_agile_mail_grid">
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-25" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-25">
								<span class="input__label-content input__label-content--ichiro">Nombre</span>
							</label>
						</span>
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-26" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-26">
								<span class="input__label-content input__label-content--ichiro">Contraseña</span>
							</label>
						</span>
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-27" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-27">
								<span class="input__label-content input__label-content--ichiro">Fecha Nacimiento</span>
							</label>
						</span>
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-28" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-28">
								<span class="input__label-content input__label-content--ichiro">Poblacion</span>
							</label>
						</span>
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-29" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-29">
								<span class="input__label-content input__label-content--ichiro">E-Mail</span>
							</label>
						</span>
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-30" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-30">
								<span class="input__label-content input__label-content--ichiro">Numero Movil</span>
							</label>
						</span>
						
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-32" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-32">
								<span class="input__label-content input__label-content--ichiro">idbt</span>
							</label>
						</span>
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-33" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-33">
								<span class="input__label-content input__label-content--ichiro">pprinci</span>
							</label>
						</span>
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-34" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-34">
								<span class="input__label-content input__label-content--ichiro">ilac</span>
							</label>
						</span>
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-35" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-35">
								<span class="input__label-content input__label-content--ichiro">pec</span>
							</label>
						</span>
						
					</div>
					
					
						
					<div class="col-md-6 w3_agile_mail_grid">
					<textarea name="Message" placeholder="Imagen" required=""></textarea>
					<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-31" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-31">
								<span class="input__label-content input__label-content--ichiro">Foto Perfil</span>
							</label>
						</span>
					
						<textarea name="Message" placeholder="Your Message" required=""></textarea>
						<span class="input__label-content input__label-content--ichiro"></span>
						<span class="input__label-content input__label-content--ichiro"></span>
						<input type="submit" value="Modificar">
					</div>
					<div class="clearfix"> </div>
				</form>
			</div>
		</div>
	</div>























<!--banner Slider starts Here-->
<script src="js/jquery-2.2.3.min.js"></script> 
						<script src="js/responsiveslides.min.js"></script>
							<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:false,
									nav:true,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							
								});
							 </script>
							 <!-- js -->
<!-- start-smoth-scrolling -->
	<script src="js/lightGallery.js"></script>
	<script>
    	 $(document).ready(function() {
			$("#lightGallery").lightGallery({
				mode:"fade",
				speed:800,
				caption:true,
				desc:true,
				mobileSrc:true
			});
		});
    </script>

<script src="js/owl.carousel.js"></script> 
<link href="css/owl.theme.css" rel="stylesheet">
 <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<script>
$(document).ready(function() { 
	$("#owl-demo").owlCarousel({
 
		autoPlay: 3000, //Set AutoPlay to 3 seconds
		  autoPlay : true,
		   navigation :true,

		items : 4,
		itemsDesktop : [640,5],
		itemsDesktopSmall : [414,4]
 
	});
	
}); 
</script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- //js -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>