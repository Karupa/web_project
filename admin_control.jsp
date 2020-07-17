<%-- 
    Document   : admin_control
    Created on : 13 May, 2020, 7:58:51 PM
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
            String a=session.getAttribute("admin").toString();
            out.println("Hello admin "+a);%>
    </body>
</html>
