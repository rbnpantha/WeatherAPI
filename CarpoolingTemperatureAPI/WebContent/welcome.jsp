
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
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
            <h1>Welcome to Carpooling - Weather Service</h1>
        </div>
        <input type="hidden" name="username" id="username" value="${username}">
        <div id="container">
            <h1>Welcome to Car Pooling Service</h1>				
            <br>
            <div id="userPost" class="divHide">
            </div>
        </div>	
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