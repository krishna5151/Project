<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Employee Details Page</title>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
	function updateRecord(id){
		var a=document.form;
		a.method="post";
		a.action='update.jsp?id='+ id ;
		a.submit();
	}
	function deleteRecord(id){
		var a=document.form;
		a.method="post";
		a.action='delete.jsp?id='+ id;
		a.submit();
	}



</script>

<body background="resources/bootstrap/image/Gray.jpg">
<form name="form" method="post">
	<div class="page-header">
		<center>
			<h2>
				<i>View Employee Details</i>
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
			
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/knowledgeq", "root", "root");
					String sql = "select * from employee";
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(sql);
					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getInt(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
				<td><input type="button" class="btn btn-success" name="update" value="Update" onclick="updateRecord(<%=rs.getInt(1)%>);"></td>
				<td><input type="button" class="btn btn-danger" name="delete" value="Delete" onclick="deleteRecord(<%=rs.getInt(1)%>);"></td>
			</tr>
			<%
				}
				} catch (Exception e) {
					e.printStackTrace();
					
				}
			%>
			
		</table>
	</div>
</form>
</body>
</html>