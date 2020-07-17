<!-- 
-->
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>        

<%    
        Connection connection;
        String url = "jdbc:postgresql://localhost:5432/postgres"; 
        String user = "postgres";
        String password = "root";
        response.setContentType("text/html;charset=UTF-8");
        try {        
            Class.forName("org.postgresql.Driver");    
        } 
        catch(ClassNotFoundException e )
        {
              //e.getMessage();
              out.println(e.getMessage());
        }    
        try {
          // String a=request.getParameter("Q1"); 
           //String b=request.getParameter("Q2");
           //String c=request.getParameter("Q3");
           //String d=request.getParameter("Q4");
         
             String id=request.getParameter("qid");
           
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                //out.println("Connected");
                Statement stmt = connection.createStatement();
                //Statement stmt = connection.createStatement();                
                ResultSet rs = stmt.executeQuery("select * from ques ;");//where QID='"+ id +"';");
                //out.println(i);
                 out.println("<html><body>");
                out.println("<table border=1 >");  
                out.println("<tr><th>emp_id</th><th>fname</th><th>lname</th><th>email</th><th>experience</th><tr>");  
                while (rs.next()) 
                {  
                String n = rs.getString("qid");  
                String n1 = rs.getString("q1"); 
                String n2 = rs.getString("q2"); 
                String n3 = rs.getString("q3"); 
                String n4 = rs.getString("q4"); 
              //  String n5 = rs.getString("age");
              //  String n6 = rs.getString("phone"); 
               // String n7 = rs.getString("gender"); 
                
                
                
                
                
                 out.println(n2);
                
               // int s = rs.getInt("sal");   
                out.println("<tr><td>" + n + "</td><td>" + n1 + "</td><td>" + n2 + "</td><td>"+ n3 + "</td><td>"+ n4 + "</td></tr>");   
                }  
                out.println("</table>"); 
               
                out.println("</body></html>");  
                
                
                
                
                
                 //out.println(n2);
                
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }
%>