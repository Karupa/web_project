<%-- 
    Document   : exam
    Created on : 19 Jun, 2020, 5:57:58 PM
    Author     : karupa
--%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>        
<%@ page import="javax.servlet.*" %>   

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

        
<html>
    <head>
<title>Javascript AutoSubmit Form Example</title>
<!-- Include CSS File Here-->
<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css"/>
<!-- Include JS File Here-->
<script>
    
window.onload = function() {
// Onload event of Javascript
// Initializing timer variable
var x = 30;
var y = document.getElementById("timer");
// Display count down for 20s
setInterval(function() {
if ( x >= 1) {
x--;
y.innerHTML = '' + x + '';
if (x === 0) {
//x = 21;
alert("timeout");

}
}
}, 1000);
// Form Submitting after 20s
 var auto_refresh = setInterval(function() { submitform();}, 30000);
 
// Form submit function
function submitform(){
    alert("submitting");
     // if(validate()){ // Calling validate function
     alert("Form is submitting");
       document.getElementById("form").submit();
       send.redirect("success.html");
     
                     }
// To validate form fields before submission
function validate() {
// Storing Field Values in variables
alert("validate");
var name = document.getElementById("name").value;
var email = document.getElementById("email").value;
var contact = document.getElementById("contact").value;
// Regular Expression For Email
var emailReg='/^([w-.]+@([w-]+.)+[w-]{2,4})?$/';
// Conditions
if (name !== '' && email !== '' && contact !== '') {
if (email.match(emailReg)) {
if (document.getElementById("male").checked || document.getElementById("female").checked) {
if (contact.length === 10) {
return true;
} else {
alert("The Contact No. must be at least 10 digit long!");
return false;
}
} else {
alert("You must select gender.....!");
return false;
}
} else {
alert("Invalid Email Address...!!!");
return false;
}
} else {
alert("All fields are required.....!");
return false;
}
}
};
    
    
    
</script>
</head>
<body>
    <%!
     
        public String x4;
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
         
             String id=request.getParameter("qid");
             x6=id;
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                out.println("Connected");
                Statement stmt = connection.createStatement();
                //Statement stmt = connection.createStatement();                
                ResultSet rs = stmt.executeQuery("select * from ques where QID='"+ id +"';");
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
                
                
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    %>    
<div class="container">
<div class="main">
<form action="newS.jsp" method="POST" id="form"  name="form">
<h2>EXAM</h2>
<span>Form will automatically submit in <b id="timer"></b> <b>seconds</b>.</span>
<h2>Exam code</h2>
<%out.println("<label>" + x5 +"</label>");%><br>

<%
            String a=session.getAttribute("username").toString();
            out.println(a);
            %>
            
            
<%out.print("<input type='text' name='qid' value='"+ x6 +"'>");  %>          
<%out.println("<label>" + x1 +"</label>");%>



<textarea rows="3" cols="50" name="A1"></textarea>
<%out.println("<label>" + x2 +"</label>");%>
<!--<input type="text" name="email" id="email" placeholder="Valid Email" />-->
<textarea rows="3" cols="50" name="A2"></textarea>
<%out.println("<label>" + x3 +"</label>");%>
<textarea rows="3" cols="50" name="A3"></textarea>
<%out.println("<label>" + x4 +"</label>");%>
<textarea rows="3" cols="50" name="A4"></textarea>
<input type="submit" value="go" onclick="submitform()">
</form>
</div>
</div>
</body>
</html>
