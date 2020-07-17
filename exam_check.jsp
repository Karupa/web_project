<%-- 
    Document   : exam_check
    Created on : 16 Jul, 2020, 7:24:53 PM
    Author     : karupa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>        
<%@ page import="javax.servlet.*" %> 
<%@ page import="java.sql.* " %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table, th {
             border: 1px solid black;
             }
             
        </style>
        <script>
            
        </script>
    </head>
    <body>
        <h1>Answer check</h1>
        <div>
            <form action="exam_check.jsp" method="post">
            <table>
                <th>anseres</th>
                <tr>
                <td>
                    student Id:<input type="text" name="s_id">
                    student name:<input type="text" name="s_name">
                    
                </td>
                <td>
                    <input type="submit" value="search">
                </td>
                </tr>
            </table>
                <% out.println("<html><body>");
                   String name=request.getParameter("s_name");
                   String id=request.getParameter("s_id");
                   out.println(name+id+"</body></html>");
                %>
            </form>   
            
            <%!
     
                public String x4,y4,y3,y2,y1,y5;
                public String x1; public String x2; public String x3;String x5; String x6;%>
 <%       
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
        }    
        try {
          // String a=request.getParameter("Q1"); 
           //String b=request.getParameter("Q2");
           //String c=request.getParameter("Q3");
           //String d=request.getParameter("Q4");
         
             //String id=request.getParameter("s_id");
             
             x6=id;
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
               // out.println("Connected");
                Statement stmt = connection.createStatement();
                //Statement stmt = connection.createStatement();                
                ResultSet rs = stmt.executeQuery("select * from ques where QID='"+ id +"';");
               // ResultSet rs1 = stmt.executeQuery("select * from ans where QID='"+ id +"';");
                //out.println(i);
              //  out.println("<html><body>");
               // out.println("<table border=1 >");  
                //out.println("<tr><th>emp_id</th><th>fname</th><th>lname</th><th>email</th><th>experience</th><tr>");  
                //String n;
               while (rs.next()) 
                {  
                 String n = rs.getString("qid");  
                String n1 = rs.getString("q1"); 
                String n2 = rs.getString("q2"); 
                String n3 = rs.getString("q3"); 
                String n4 = rs.getString("q4"); 
              
                
                //out.println("<label>" + n1 +"</label>");
                // out.println(n2);
                
               // int s = rs.getInt("sal"); 
                x4=n4;x1=n1;x2=n2;x3=n3;x5=n;
              //  out.println("<tr><td>" + n + "</td><td>" + n1 + "</td><td>" + n2 + "</td><td>"+ n3 + "</td><td>"+ n4 + "</td></tr>");   
                }
              //  out.println("</table>"); 
              
              //  out.println("</body></html>"); 
             /*   while(rs1.next())
                {
                   // String a = rs1.getString("qid");  
                    String a1 = rs1.getString("q1"); 
                    String a2 = rs1.getString("q2"); 
                    String a3 = rs1.getString("q3"); 
                    String a4 = rs1.getString("q4");
                    out.println(a1);
                y1=a1;y2=a2;y3=a3;y4=a4;
                }*/
                
                
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }
    
         
    
    %>    
 <%       
        Connection connection1;
        String url1 = "jdbc:postgresql://localhost:5432/postgres"; 
        String user1 = "postgres";
        String password1 = "root";
        response.setContentType("text/html;charset=UTF-8");
        try {        
            Class.forName("org.postgresql.Driver");    
        } catch(ClassNotFoundException e ){
              //e.getMessage();
              out.println(e.getMessage());
        }    
        try {
          // String a=request.getParameter("Q1"); 
           //String b=request.getParameter("Q2");
           //String c=request.getParameter("Q3");
           //String d=request.getParameter("Q4");
         
           //  String id=request.getParameter("s_id");
            // String name=request.getParameter("s_name");
             //x6=id;
                Boolean found = false;
                connection1 = DriverManager.getConnection(url1, user1, password1);
                //out.println("Connected");
                Statement stmt = connection1.createStatement();
                //Statement stmt = connection.createStatement();                
               // ResultSet rs = stmt.executeQuery("select * from ques where QID='"+ id +"';");
                ResultSet rs1 = stmt.executeQuery("select * from ans where s_name='"+ name +"';");
                //out.println(i);
              //  out.println("<html><body>");
               // out.println("<table border=1 >");  
                //out.println("<tr><th>emp_id</th><th>fname</th><th>lname</th><th>email</th><th>experience</th><tr>");  
                //String n;
             /*  while (rs.next()) 
                {  
                 String n = rs.getString("qid");  
                String n1 = rs.getString("q1"); 
                String n2 = rs.getString("q2"); 
                String n3 = rs.getString("q3"); 
                String n4 = rs.getString("q4"); 
              
                
                //out.println("<label>" + n1 +"</label>");
                 out.println(n2);
                
               // int s = rs.getInt("sal"); 
                x4=n4;x1=n1;x2=n2;x3=n3;x5=n;
              //  out.println("<tr><td>" + n + "</td><td>" + n1 + "</td><td>" + n2 + "</td><td>"+ n3 + "</td><td>"+ n4 + "</td></tr>");   
                }*/
              //  out.println("</table>"); 
              
              //  out.println("</body></html>"); 
                while(rs1.next())
                {
                   // String a = rs1.getString("qid");  
                    String a1 = rs1.getString("a1"); 
                    String a2 = rs1.getString("a2"); 
                    String a3 = rs1.getString("a3"); 
                    String a4 = rs1.getString("a4");
                  //  out.println(a1);
                y1=a1;y2=a2;y3=a3;y4=a4;
                }
                
                
                connection1.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }
    
         
    
    %>    
        </div>
        <div>
        "hello"
        </div>
        <div>
            <form method="post" action="exam_input.jsp">
                
            <%out.println("<input type='hidden' name='m_id' value='"+ id +"'>");  %>   
                   <%out.println("<input type='hidden' name='m_name' value='"+ name +"'>");  %> 
              <table border="0" width="50%">
                
                <tr> 
               
                <td ><strong>Questions</strong></td>
                <td><strong>Answers</strong></td>
                <td> <strong>Marks</strong></td>
                
                </tr>
                <tr>
                <td><%out.println("<label>" + x1 +"</label>");%></td>
                <td><%out.println("<label>" + y1 +"</label>");%></td>
                <td><input type="number" name="m1" placeholder="mark"></td>
                </tr>
                <tr>
                <td><%out.println("<label>" + x2 +"</label>");%></td>
                <td> <%out.println("<label>" + y2 +"</label>");%></td>
                <td><input type="number" name="m2" placeholder="mark"></td>
                </tr>
                <tr>
                <td><%out.println("<label>" + x3 +"</label>");%></td>
                <td><%out.println("<label>" + y3 +"</label>");%></td>
                <td><input type="number" name="m3" placeholder="mark"></td>
                </tr>
                <tr>
                <td><%out.println("<label>" + x4 +"</label>");%></td>
                <td><%out.println("<label>" + y4 +"</label>");%></td>
                <td><input type="number" name="m4" placeholder="mark"></td>
                </tr>
                <tr>
                <td> <input type="submit" value="submit"></td>
                    </tr>
         </table> 
                
            </form>
                
        </div>
                
    </body>
</html>
