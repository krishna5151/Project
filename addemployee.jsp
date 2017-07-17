<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<title>Add Employee Page</title>
</head>
<body  background="resources/bootstrap/image/Gray.jpg">
	<form class="form-horizontal" action="./employeeservlet" method="post">
		<div class="container">
			
				<div class="page-header">
					<center>
						<h2>
							<i>Register Employee Information</i>
						</h2>
					</center>
				</div>
				<fieldset>
					<div class="form-group">
						<label class="col-md-4 control-label">First Name</label>
						<div class="col-md-4">
							<input type="text" class="form-control input-md" name="fname"
								placeholder="FirstName" required> <span
								class="help-block"> </span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label">Last Name</label>
						<div class="col-md-4">
							<input type="text" class="form-control input-md" name="lname"
								placeholder="Last Name" required> <span
								class="help-block"> </span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label">Mobile No</label>
						<div class="col-md-4">
							<input type="text" class="form-control input-md" name="mobno"
								placeholder="Mobile No" required> <span
								class="help-block"> </span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label">Email</label>
						<div class="col-md-4">
							<input type="text" class="form-control input-md" name="email"
								placeholder="Email" required> <span
								class="help-block"> </span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label">Martial Status</label>
						<div class="col-md-4">
							<input type="text" class="form-control input-md"
								name="martialstatus" placeholder="Martial Status" required>
							<span class="help-block"> </span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label">Nationality</label>
						<div class="col-md-4">
							<input type="text" class="form-control input-md"
								name="nationality" placeholder="Nationality" required> <span
								class="help-block"> </span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label">Address</label>
						<div class="col-md-4">
							<textarea rows="4" cols="2" class="form-control input-md"
								name="address" placeholder="Address" required></textarea>
							<span class="help-block"> </span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label"> </label>
						<div class="col-md-4">
							<button type="submit" class="btn btn-success">Submit</button>
							<button type="reset" class="btn btn-danger">Cancel</button>
						</div>
					</div>
				</fieldset>
			</div>
		
	</form>
</body>
</html>