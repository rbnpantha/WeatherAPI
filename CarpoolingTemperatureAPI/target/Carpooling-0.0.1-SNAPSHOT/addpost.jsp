<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Add Post</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/menu.css"/>
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js" type="text/javascript"></script>
        <%-- <script src="${pageContext.request.contextPath}/resources/js/addpost.js"></script>	 --%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>

        <div class="topnav">
            <a  href="login" id="menuhome">Home</a>
            <a class="active" href="AddPost" id="menuaddpost">Add Post</a>
            <a href="WeatherController" id="menumap">Map</a>
            <a href="updateUserDetails" id="menuprofile">Update Profile</a>
            <a href="Logout" id="menulogout">Logout</a>
        </div>
        <h1>User Add Post</h1>
        <form action="AddPost" method="post">
            <p>Title: </p> <input type="text" name="title" id="title"/>
            <p>Content: </p> <textarea rows="4" cols="50" name="body" id="body"></textarea>
            <p>Type: &nbsp;&nbsp;
                <select name="posttype" id="posttype">
                    <option value="0">Asking</option>
                    <option value="1">Offering</option>
                </select></p>		
            <input type="submit" value="Submit"/>
        </form>
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