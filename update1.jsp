<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update1 Page</title>
</head>
<body>
<%
int id =Integer.parseInt(request.getParameter("id"));

String fname =request.getParameter("fname");
String lname =request.getParameter("lname");
int mobno =Integer.parseInt(request.getParameter("mobno"));
String email =request.getParameter("email");
String martialstatus =request.getParameter("martialstatus");
String nationality =request.getParameter("nationality");
String address =request.getParameter("address");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/knowledgeq", "root", "root");
	Statement st = con.createStatement();
	st.executeUpdate("update employee set fname= '"+ fname + "' ,lname=' "+ lname + "',mobno=' "+ mobno + "',email=' "+ email + "',martialstatus=' "+ martialstatus + "',nationality=' "+ nationality + "',address=' "+ address + "' where id='" +id + "'  ");
	response.sendRedirect("viewemployee.jsp");
}catch(Exception e){
	e.printStackTrace();
}
%>                  
</body>
</html>