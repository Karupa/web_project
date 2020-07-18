<%-- 
    Document   : csv
    Created on : 20 Jun, 2020, 1:57:28 PM
    Author     : karupa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


<% 

Connection connection;
        String url = "jdbc:postgresql://localhost:5432/postgres"; 
        String user = "postgres";
        String password = "root";    
    
    
    
String filename = "/home/karupa/Desktop/myjdbcfile.csv";
//Connection conn = null;
//String url = "jdbc:mysql://localhost:3306/";
String dbName = "postgres";
//String driver = "com.mysql.jdbc.Driver";
//String userName = "root"; 
//String password = "root";
Statement stmt;
try
{
FileWriter fw = new FileWriter(filename);
fw.append("qid");
fw.append(',');
fw.append("s_name");
fw.append(',');
fw.append("q1");
fw.append('\n');

Class.forName(driver).newInstance();
// Class.forName("org.postgresql.Driver").newInstance(); 
//connection = DriverManager.getConnection(url+dbName,userName,password);
   connection = DriverManager.getConnection(url+dbName, user, password);
String query = "select * from ans";
stmt = connection.createStatement();
ResultSet rs = stmt.executeQuery(query);
while(rs.next())
{
fw.append(rs.getString(1));
fw.append(',');
fw.append(rs.getString(2));
fw.append(',');
fw.append(rs.getString(3));
fw.append('\n');
}
fw.flush();
fw.close();
connection.close();
out.println("<b>You are Successfully Created Csv file.</b>");
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
