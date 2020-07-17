<%-- 
    Document   : logincheck
    Created on : 12 Mar, 2020, 12:03:52 AM
    Author     : karupa
--%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>        
<%@ page import="javax.servlet.*" %>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");
        
        
        
      
       
        Connection connection;
        String url = "jdbc:postgresql://localhost:5432/postgres"; 
        String user = "postgres";
        String password = "root";
        response.setContentType("text/html;charset=UTF-8");
        try {        
            Class.forName("org.postgresql.Driver");    
        } catch(ClassNotFoundException e ){
              //e.getMessage();
              out.println(e.getMessage());
        } %>
        <table border="1">
            <th></th>
            <th></th>
            
       <% this.log("message"); %>
        <%
        try {
                
                connection = DriverManager.getConnection(url, user, password);
                
                Statement stmt = connection.createStatement();
                ResultSet rs =stmt.executeQuery("select * from login;");
                
                while(rs.next())
                    
                    { 
                        if((rs.getString("username").equals(username) && rs.getString("pass").equals(pass)))
                        {
                            session.setAttribute("username",username);
                           // response.sendRedirect("home.jsp");
                            response.sendRedirect("course.jsp");
                        }
                        if((rs.getString("username").equals(username) && !rs.getString("pass").equals(pass)))
                        {  out.println("wrong password");
                           response.sendRedirect("pass.jsp");
                        
                        }
                       
                    }
                connection.close();
            } 
                   catch (SQLException ex) 
                   {
                     out.println(ex.getMessage());        
                   }   
        %>  </table>
        <% out.println(username); 
        out.println("username does not exist"); %>
        <a href="index.jsp">login</a>
    </body>
</html>
<%--   <tr>
                            <td><%=rs.getString("username")%></td>
                            <td><%=rs.getString("pass")%></td>
                        </tr>*/--%>