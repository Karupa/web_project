<%-- 
    Document   : index
    Created on : 12 Mar, 2020, 12:34:25 AM
    Author     : karupa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <center>
            <h2>Signin Details</h2>
            <form action="logincheck.jsp" method="post">
            <br/>Username:<input type="text" name="username">
            <br/>Password:<input type="password" name="pass">
            <br/><input type="submit" value="Submit">
            </form>
            <a href="register.html">Sign up</a>
           
        </center>
    </body>
</html>-->


<html>
<head>
<meta charset="utf-8">
<title>student page</title>
<link rel="stylesheet" type="text/css" href="css.css"/>
</head>
<link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet"> 
<body id="bg">
	<img src="b.jpeg" />
	<img id="sml" src="smiley.gif" height="200" width="150"/>
	<div id="body_area">
	
	<p class="bld">Login details</p>
	<form method="post" action="logincheck.jsp">
	<p id="cred">Username:
		<input type="text" name="username"></p>
	<p id="cred">Password:
		<input type="password" name="pass" ></p>
	<p><button class="w3-btn w3-black sp2 ft" type="submit">Login</button>
	<button class="w3-btn w3-black sp2 ft" type="reset">Cancel</button></p>
	<p></p>
	<p>New User?
	<a href="register.html">Register here</a>
          <a href="admin.jsp">admin Sign up</a>
	</p>
       <p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
	</form>
     
	</div>
        <div>
           
            <a href="newT.html"> teacher Question</a>
            <a href="exam_check.jsp">check correction</a>
        </div>
</body>
</html>	