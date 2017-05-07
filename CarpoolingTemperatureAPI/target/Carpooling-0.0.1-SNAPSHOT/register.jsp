<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script
        src="${pageContext.request.contextPath}/resources/js/register.js"></script>
        <link href="${pageContext.request.contextPath}/resources/css/register.css"
              type="text/css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="jumbotron text-center">
            <h1>Welcome to Car Pooling Service</h1>
            <p>Please register an account to enjoy</p>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Create Account</h3>
                        </div>
                        <div class="panel-body">
                            <form id="newUser" method="post">
                                <fieldset>
                                    <div class="form-group">
                                        <input id="inputUsername" class="form-input-large"
                                               placeholder="Your name" name='username' type="text">
                                        <div id="errorsUsername" style="display: none; color: red;"></div>
                                    </div>
                                    <div class="form-group">
                                        <input id="inputPassword" class=" form-input-large"
                                               placeholder="Password" name='password' type="password"
                                               value="">
                                        <div id="errorsPassord" style="display: none; color: red;"></div>
                                    </div>
                                    <div class="form-group">
                                        <input id="inputVerifypassword" class=" form-input-large"
                                               placeholder="Password again" name='verifyPassword'
                                               type="password" value="">
                                        <div id="errorsVerifypassword"
                                             style="display: none; color: red;"></div>
                                    </div>
                                    <div class="btn btn-lg btn-success btn-mini"
                                         onclick="registerNewUser();">Create Carpooling account</div>
                                </fieldset>
                            </form>

                            <div class="a-divider a-divider-section">
                                <div class="a-divider-inner"></div>
                            </div>

                            <div class="a-row">
                                Already have an account? <a class="a-link-emphasis" href="login">
                                    Sign in </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <footer class="container-fluid text-center bg-lightgray">

        <div class="copyrights" style="margin-top:25px; background-color:LightGray">
            <p>RBN © 2017, All Rights Reserved
                <br>
                <span>Developed By: Rabin Pantha</span></p>
            <p><a href="https://www.linkedin.com/in/rabinpantha" target="_blank">Linkedin <i class="fa fa-linkedin-square" aria-hidden="true"></i> </a></p>
        </div>
    </footer>
</html>