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
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            <a href="login" id="menuhome">Home</a>
            <a href="AddPost" id="menuaddpost">Add Post</a>
            <a href="WeatherController" id="menumap">Weather Map</a>
            <a class="active" href="TemperatureController" id="menumap">Max Temperature</a>
            <a href="updateUserDetails" id="menuprofile">Update Profile</a>
            <a href="Logout" id="menulogout">Logout</a>
        </div>
        <div class="jumbotron text-left">
            <h1>Welcome to Temperature Service</h1>
        </div>
        <form action="TemperatureController" method="post">
            <fieldset class="radiogroup"> 
                <legend>Search Maximum Temperature by Zip Code</legend>
                <div>
                    <input type="text" name="txtSearch" id="txtSearch" required="true"/> 
                    <input type="submit" name="btnSearchDes" value="Search" />
                </div>
                <ul class="radio"> 
                    <li><input type="radio" name="crust" id="cityDes" value="cityDes" /><label for="cityDes">City Destination</label></li> 
                    <li><input type="radio" name="crust" id="zipCodeDes" value="zipCodeDes" checked/><label for="zipCodeDes">Zip Code Destination</label></li> 
                    <li><input type="radio" name="crust" id="currentLocation" value="currentLocation" /><label for="currentLocation">Current Location</label></li> 
                </ul> 
            </fieldset>		
        </form>
        <div id="map-canvas"></div>

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