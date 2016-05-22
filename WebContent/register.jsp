<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<center>
		<img src="logo.png" alt="CS Department Logo"><br>
		<img src="logo1.png" height="250px" width="250px"
			alt="CS Department Logo">
		<form style="margin-top: 50px;" method="post" action="LoginRegister">
			<center>User Registration Form</center>
			<table style="width: 30%; border: 1px solid black;">

				<tr>
					<td>NetID:</td>
					<td align="center"><input type="text" name="netid"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td align="center"><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td align="center"><input type="text" name="fname"></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td align="center"><input type="text" name="lname"></td>
				</tr>

				<tr>
					<td>Role:</td>
					<td align="center"><select name="role" id="r">
							<option value="Student">Student</option>
							<option value="Faculty">Faculty</option>
							<option value="Staff">Staff</option>
					</select></td>
				</tr>
			</table>
			<div id="hidden_div">
				<table style="width: 30%; border: 1px solid black;">
					<tr>
						<td>Year Joined:</td>
						<td align="center"><input type="text" name="year"></td>
					</tr>
					<tr>
						<td>Program Name:</td>
						<td align="center"><select name="program">
								<option></option>
								<option value="BS">BS</option>
								<option value="BA">BA</option>
								<option value="MS">MS</option>
								<option value="PhD">PhD</option>
						</select></td>
					</tr>
					<tr>
						<td>Major:</td>
						<td align="center"><input type="text" name="major"></td>
					</tr>

				</table>
			</div>
			<input type="submit" value="register" name="register">


			<script>
				$(document).ready(function() {
					$('#r').on('change', function() {
						if (this.value == 'Student')
						//.....................^.......
						{
							$("#hidden_div").show();
						} else {
							$("#hidden_div").hide();
						}
					});
				});
			</script>



		</form>
		
	</center>

</body>
</html>