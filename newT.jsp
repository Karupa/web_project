<%-- 
    Document   : test3.jsp
    Created on : 19 Jun, 2020, 8:03:17 AM
    Author     : karupa
--%>


<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>        
<%@ page import="javax.servlet.*" %>      

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
           String a=request.getParameter("Q1"); 
           String b=request.getParameter("Q2");
           String c=request.getParameter("Q3");
           String d=request.getParameter("Q4");
         
             String id=request.getParameter("Qid");
           
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                //out.println("Connected");
                Statement stmt = connection.createStatement();
                int i= stmt.executeUpdate("INSERT INTO Ques VALUES ('"+id+"','"+a+"','"+b+"','"+c+"','"+d+"')");
                if(i==1)
                {
                    out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Record added successfully\");</script>"
                            + "</head><body></body></html>");
                    
                        response.setHeader("Refresh","0;URL=index.jsp");
                }
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }   
%>
    </body>
</html>
