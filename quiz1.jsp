<%-- 
    Document   : quiz1
    Created on : 16 Jun, 2020, 10:42:45 PM
    Author     : karupa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>        
<%@ page import="javax.servlet.*" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String Q1=request.getParameter("Q1");
           String o1=request.getParameter("o1");
           String o2=request.getParameter("o2");
           String o3=request.getParameter("o3");
           
           String Q2=request.getParameter("Q2");
           
           
           out.println(Q1);
           out.println(o1);
        %>
    </body>
</html>
