<%-- 
    Document   : register
    Created on : 12 Mar, 2020, 12:53:42 AM
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
                String username = request.getParameter("username");
                String Class =request.getParameter("class");
                String name = request.getParameter("name");
                String pass = request.getParameter("pass");
                String age = request.getParameter("age");
                String phone = request.getParameter("phone");
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                out.println("Connected");
                Statement stmt = connection.createStatement();
                int i= stmt.executeUpdate("INSERT INTO login VALUES ('"+username+"','"+pass+"','"+name+"','"+Class+"','"+age+"',"+phone+")");
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