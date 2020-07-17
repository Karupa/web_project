<%-- 
    Document   : teacher
    Created on : 18 Jun, 2020, 7:40:14 PM
    Author     : karupa
--%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>        
<%@ page import="javax.servlet.*" %>    

      <%  Connection connection;
        String url = "jdbc:postgresql://localhost:5432/postgres"; 
        String user = "postgres";
        String password = "root";
        response.setContentType("text/html;charset=UTF-8");
        try {        
            Class.forName("org.postgresql.Driver");    
        } catch(ClassNotFoundException e ){
              //e.getMessage();
              out.println(e.getMessage());
        }    
        try {
               // String username = request.getParameter("username");
                String Q1 =request.getParameter("Q1");
                String Q2 = request.getParameter("Q2");
                String Q3 = request.getParameter("Q3");
               // String age = request.getParameter("age");
                //String phone = request.getParameter("phone");
                
                out.println(Q3);
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                out.println("Connected");
                Statement stmt = connection.createStatement();
                int i= stmt.executeUpdate("INSERT INTO Teacher_Q VALUES ('"+Q1+"','"+Q2+"')");
                if(i==1)
                {
                    out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Record added successfully\");</script>"
                            + "</head><body></body></html>");
                    
                        //response.setHeader("Refresh","0;URL=index.jsp");
                }
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }   
%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
