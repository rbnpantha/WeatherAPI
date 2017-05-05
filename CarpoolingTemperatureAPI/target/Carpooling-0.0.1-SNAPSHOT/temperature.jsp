<%-- 
    Document   : temperature
    Created on : May 5, 2017, 11:31:08 AM
    Author     : Rabin
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Welcome Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/menu.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js" type="text/javascript"></script>
	<script src="/Carpooling/resources/js/main.js"></script>	
	<style type="text/css">

fieldset.radiogroup  { 
  margin: 0; 
  padding: 0; 
  margin-bottom: 1.25em; 
  padding: .125em; 
} 

fieldset.radiogroup legend { 
  margin: 0; 
  padding: 0; 
  font-weight: bold; 
  margin-left: 20px; 
  font-size: 100%; 
  color: black; 
} 


ul.radio  { 
  margin: 0; 
  padding: 0; 
  margin-left: 20px; 
  list-style: none; 
} 

ul.radio li { 
  border: 1px transparent solid; 
} 

ul.radio li:hover, 
ul.radio li.focus  { 
  background-color: lightyellow; 
  border: 1px gray solid; 
  width: 10em; 
} 

  </style>
        
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

	<form action="TemperatureController" method="post">
		<fieldset class="radiogroup"> 
			<legend>Search Maximum Temperature by Zip Code</legend>
			  <div>
			   <input type="text" name="txtSearch" id="txtSearch" required/> 
				<input type="submit" name="btnSearchDes" value="Search" />
			</div>
			  <ul class="radio"> 
			    <li><input type="radio" name="crust" id="cityDes" value="cityDes" checked/><label for="cityDes">City Destination</label></li> 
			    <li><input type="radio" name="crust" id="zipCodeDes" value="zipCodeDes" /><label for="zipCodeDes">Zip Code Destination</label></li> 
			    <li><input type="radio" name="crust" id="currentLocation" value="currentLocation" /><label for="currentLocation">Current Location</label></li> 
			  </ul> 
		</fieldset>		
	</form>
	<div id="map-canvas"></div>
        
        
        
</body>
</html>