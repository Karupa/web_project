<%-- 
    Document   : view.jsp
    Created on : 28 Apr, 2020, 11:12:15 AM
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
            //String a=session.getAttribute("Admin").toString();
            out.println("Hello  ");
            String admin=request.getParameter("Admin");
            String passq=request.getParameter("pass");
            if(admin=="karupa" & passq=="swamy")
            {
                session.setAttribute("Admin",admin);
                response.sendRedirect("admin_control.jsp");
            }
            else
            {response.sendRedirect("pass.jsp");
            }
            %>
    </body>
</html>
