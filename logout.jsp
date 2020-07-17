<%-- 
    Document   : logout
    Created on : 12 Mar, 2020, 12:05:28 AM
    Author     : karupa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

        session.removeAttribute("username");
        session.removeAttribute("password");
        session.invalidate();
        %>
        <h1>Logout was done successfully.</h1>
        
    </body>
</html>