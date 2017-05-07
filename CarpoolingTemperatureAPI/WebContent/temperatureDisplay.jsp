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
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js" type="text/javascript"></script>
        <script src="/Carpooling/resources/js/main.js"></script>	
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        <div class="jumbotron text-left">
            <h1>Welcome to Temperature Service</h1>
        </div>
        <h1>Max Temp at zip-code ( ${zipCode})  : ${maxTemp}  Fahrenheit</h1>
        <h3>Thank you for using our system!!  <a href="TemperatureController">Try Again!</a></h3>

        <footer class="container-fluid text-center bg-lightgray">

            <div class="copyrights" style="margin-top:25px; background-color:LightGray">
                <p>RBN © 2017, All Rights Reserved
                    <br>
                    <span>Developed By: Rabin Pantha</span></p>
                <p><a href="https://www.linkedin.com/in/rabinpantha" target="_blank">Linkedin <i class="fa fa-linkedin-square" aria-hidden="true"></i> </a></p>
            </div>
        </footer>
    </body>
</html>
