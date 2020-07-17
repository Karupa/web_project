<%-- 
    Document   : test2
    Created on : 18 Jun, 2020, 9:01:47 AM
    Author     : karupa
--%>


<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>        
<%@ page import="javax.servlet.*" %>      

      
<!DOCTYPE html>
<html>
    <head>
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>JSP Page</title>
    </head>
    <body>
        
        
    
    <div>
       <%
            String s=session.getAttribute("username").toString();
            out.println("Hello  "+s);
            %>
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
           String a=request.getParameter("A1"); 
           String b=request.getParameter("A2");
           String c=request.getParameter("A3");
           String d=request.getParameter("A4");
             String id=request.getParameter("qid");
            // String name= request.getParameter("name");
         //  out.println(a);
           
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                //out.println("Connected");
                Statement stmt = connection.createStatement();
                int i= stmt.executeUpdate("INSERT INTO ans VALUES ( '"+id+"','"+ s +"','"+a+"','"+b+"','"+c+"','"+d+"')");
                if(i==1)
                {
                    out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Record added successfully\");</script>"
                            + "</head><body></body></html>");
                    
                        response.setHeader("Refresh","0;URL=index.jsp");
                }
                connection.close();
        } catch (SQLException ex){
     out.println(ex.getMessage()); 
}
        
        
        
        
        
    /*    
        {
        out.println(ex.getMessage());        
        }   
         
          try {
              String qid=request.getParameter("Qid");
                connection = DriverManager.getConnection(url, user, password);
                out.println("Connected");
                Statement stmt = connection.createStatement();                
                ResultSet rs = stmt.executeQuery("select * from ques where Qid='"+ qid +"';");
                //out.println(i);
                 
                out.println("<table border=1 >");  
                out.println("<tr><th>Qid</th><th>fname</th><th>lname</th><th>email</th><th>experience</th><tr>");  
                while (rs.next()) 
                {  
                String n = rs.getString("QID");  
                String n1 = rs.getString("Q1"); 
                String n2 = rs.getString("Q2"); 
                String n3 = rs.getString("Q3"); 
                String n4 = rs.getString("Q4"); 
              //  String n5 = rs.getString("age");
                //String n6 = rs.getString("phone"); 
                //String n7 = rs.getString("gender"); 
                
                
                
                
                
                 out.println(n2);
                
               // int s = rs.getInt("sal");   
                //out.println("<tr><td>" + n + "</td><td>" + n1 + "</td><td>" + n2 + "</td><td>"+ n3 + "</td><td>"+ n4 + "</td><td>"+ n5 + "</td><td>"+ n6 + "</td><td>"+ n7 +"</td></tr>");   
                }  
                out.println("</table>"); 
               
                out.println("</body></html>");  
          }
          
catch (SQLException ex){
     out.println(ex.getMessage()); 
}*/
         
     
%>
   </div>
    </body>
</html>
