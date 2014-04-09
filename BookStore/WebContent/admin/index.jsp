<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />


<title>Bookstore Admin</title>

<!--                       CSS                       -->

<!-- Reset Stylesheet -->
<link rel="stylesheet" href="resources/css/reset.css" type="text/css"
	media="screen" />

<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css"
	media="screen" />

<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="resources/css/invalid.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="resources/css/red.css" type="text/css"
	media="screen" />
<!-- Colour Schemes
	  
		Default colour scheme is green. Uncomment prefered stylesheet to use it.
		
		<link rel="stylesheet" href="resources/css/blue.css" type="text/css" media="screen" />
		
		<link rel="stylesheet" href="resources/css/red.css" type="text/css" media="screen" />  
	 
		-->

<!-- Internet Explorer Fixes Stylesheet -->

<!--[if lte IE 7]>
			<link rel="stylesheet" href="resources/css/ie.css" type="text/css" media="screen" />
		<![endif]-->

<!--                       Javascripts                       -->

<!-- jQuery -->
<script type="text/javascript"
	src="resources/scripts/jquery-1.3.2.min.js"></script>

<!-- jQuery Configuration -->
<script type="text/javascript"
	src="resources/scripts/simpla.jquery.configuration.js"></script>

<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="resources/scripts/facebox.js"></script>

<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
<script type="text/javascript" src="../js/Chart.js"></script>
<script type="text/javascript" src="../js/Chart.min.js"></script>


<%
	User user = (User) session.getAttribute("user");
	String name = "";
	if (user == null) {
		String redirectURL = "login.jsp";
		response.sendRedirect(redirectURL);
	} else {
		name = user.getUsername();
	}
%>
</head>

<body>

	<div id="body-wrapper">
		<!-- Wrapper for the radial gradient background -->

		<s:include value="sideBar.jsp"></s:include>

		<div id="main-content">

			<div class="content-box">
				<!-- Start Content Box -->

				<div class="content-box-header">

					<h3>Content box</h3>

					<ul class="content-box-tabs">
						<li><a href="#tab1" class="default-tab">Table</a></li>
					</ul>

					<div class="clear"></div>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab" >
						<canvas id="canvas" height="450" width="600"></canvas>
				       <script>
				
				                var lineChartData = {
				                        labels : ["January","February","March","April","May","June","July"],
				                        datasets : [
				                                {
				                                        fillColor : "rgba(220,220,220,0.5)",
				                                        strokeColor : "rgba(220,220,220,1)",
				                                        pointColor : "rgba(220,220,220,1)",
				                                        pointStrokeColor : "#fff",
				                                        data : [65,59,90,81,56,55,40]
				                                },
				                                {
				                                        fillColor : "rgba(151,187,205,0.5)",
				                                        strokeColor : "rgba(151,187,205,1)",
				                                        pointColor : "rgba(151,187,205,1)",
				                                        pointStrokeColor : "#fff",
				                                        data : [28,48,40,19,96,27,100]
				                                }
				                        ]
				                }
				
				        var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Line(lineChartData);
				        
				        </script>
					</div>
				

			</div>
			<!-- End .content-box -->

			<div class="content-box column-left">
				<!-- Start Content Box -->

				<div class="content-box-header">

					<h3>Content box left</h3>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab">

						<h4>Maecenas dignissim</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Sed in porta lectus. Maecenas dignissim enim quis ipsum mattis
							aliquet. Maecenas id velit et elit gravida bibendum. Duis nec
							rutrum lorem. Donec egestas metus a risus euismod ultricies.
							Maecenas lacinia orci at neque commodo commodo.</p>

					</div>
					<!-- End #tab3 -->

				</div>
				<!-- End .content-box-content -->

			</div>
			<!-- End .content-box -->

			<div class="content-box column-right">
				<!-- Start Content Box -->

				<div class="content-box-header">

					<h3>Content box right</h3>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab">

						<h4>Maecenas dignissim</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Sed in porta lectus. Maecenas dignissim enim quis ipsum mattis
							aliquet. Maecenas id velit et elit gravida bibendum. Duis nec
							rutrum lorem. Donec egestas metus a risus euismod ultricies.
							Maecenas lacinia orci at neque commodo commodo.</p>

					</div>
					<!-- End #tab3 -->

				</div>
				<!-- End .content-box-content -->

			</div>
			<!-- End .content-box -->
			<div class="clear"></div>



			<div id="footer">
				<small> &#169; Copyright 2009 Simpla Admin | Powered by <a
					href="http://themeforest.net/item/simpla-admin-flexible-user-friendly-admin-skin/46073">Simpla
						Admin</a> | <a href="#">Top</a>
				</small>
			</div>
			<!-- End #footer -->

		</div>
		<!-- End #main-content -->

	</div>
</body>

</html>