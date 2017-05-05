<%-- 
    Document   : temperatureDisplay
    Created on : May 5, 2017, 4:22:16 PM
    Author     : Rabin
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Temperature Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/menu.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js" type="text/javascript"></script>
	<script src="/Carpooling/resources/js/main.js"></script>	
	
</head>
<body>

<div class="topnav">
  <a class="active" href="login" id="menuhome">Home</a>
  <a href="AddPost" id="menuaddpost">Add Post</a>
  <a href="WeatherController" id="menumap">Weather Map</a>
  <a href="TemperatureController" id="menumap">Max Temperature</a>
  <a href="updateUserDetails" id="menuprofile">Update Profile</a>
  <a href="Logout" id="menulogout">Logout</a>
</div>
       
        <h1>Max Temp : ${maxTemp}</h1>
        <h3>Thank you for using our system!!</h3>
    </body>
</html>
