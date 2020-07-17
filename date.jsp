<%-- 
    Document   : date
    Created on : 17 Jun, 2020, 6:12:53 PM
    Author     : karupa
--%>

 <%@ page import="java.util.*" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
    </body>
</html>
