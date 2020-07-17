<%-- 
    Document   : exam_input
    Created on : 16 Jul, 2020, 9:58:51 PM
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
                String m_id = request.getParameter("m_id");
                String m_name =request.getParameter("m_name");
                int m1 =Integer.parseInt(request.getParameter("m1"));
               
                int m2 =Integer.parseInt(request.getParameter("m2"));
                int m3 =Integer.parseInt(request.getParameter("m3"));
                int m4 =Integer.parseInt(request.getParameter("m4"));
                int total=m1+m2+m3+m4;
               // String total = request.getParameter("phone");
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                out.println("Connected");
                Statement stmt = connection.createStatement();
                int i= stmt.executeUpdate("INSERT INTO marks VALUES ('"+m_id+"','"+m_name+"','"+m1+"','"+m2+"','"+m3+"','"+m4+"','"+total+"')");
                if(i==1)
                {
                    out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Record added successfully\");</script>"
                            + "</head><body></body></html>");
                    
                        response.setHeader("Refresh","0;URL=index.jsp");
                        out.println(m1);
                }
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }   
%>