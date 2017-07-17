<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<title>Update Page</title>
</head>
<body background="resources\bootstrap\image\Free-Download-Plain-Wallpaper-HD.jpg">
<form action="./update1.jsp" method="post">
<div class="page-header">
		<center>
			<h2>
				<i>Update Employee Informations</i>
			</h2>
		</center>
	</div>
	
	
	<div class="container text-center">
		<h2>Employee Details Informations</h2>
		<br>
		<table class="table table-bordered table-hover table-responsive">
			<thead>
				<tr>
					<th class="text-center">ID</th>
					<th class="text-center">FIRST NAME</th>
					<th class="text-center">LAST NAME</th>
					<th class="text-center">MOBILE NO</th>
					<th class="text-center">EMAIL</th>
					<th class="text-center">MARTIAL STATUS</th>
					<th class="text-center">NATIONALITY</th>
					<th class="text-center">ADDRESS</th>
				</tr>
			</thead>
				<%
			int id = Integer.parseInt(request.getParameter("id"));
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/knowledgeq", "root", "root");
					String sql = "select * from employee where id= ' "+ id +" ' ";
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(sql);
					while (rs.next()) {
			%>
			<tr>
				<td><input type="text" name="id" value="<%=rs.getInt(1)%>"></td>
				<td><input type="text" name="fname" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="lname" value="<%=rs.getString(3)%>"></td>
				<td><input type="text" name="mobno" value="<%=rs.getInt(4)%>"></td>
				<td><input type="text" name="email" value="<%=rs.getString(5)%>"></td>
				<td><input type="text" name="martialstatus" value="<%=rs.getString(6)%>"></td>
				<td><input type="text" name="nationality" value="<%=rs.getString(7)%>"></td>
				<td><input type="text" name="address" value="<%=rs.getString(8)%>"></td>
				
			</tr>
		
			<%
				}
				} catch (Exception e) {
					e.printStackTrace();   
					
				}
			%>
			
		</table>
			<input type="submit" class="btn btn-success" value="submit">
		<input type="reset" class="btn btn-danger" value="cancel">
	</div>
</form>

</body>
</html>