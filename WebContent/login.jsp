<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Here</title>
<center>
	<img src="logo.png" alt="CS Department Logo"><br>
	<img src="logo1.png" height="250px" width="250px"
		alt="CS Department Logo">
	<form style="margin-top: 50px;" method="post" action="LoginRegister">
		<center>Login Here</center>




		<center>
			<table>
				<tr>
					<td>NetID</td>
					<td><input type="text" name="net"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="pas"></td>
				</tr>

			</table>
		</center>








		<input type="submit" value="Login" name="login">



	</form>
	
	
	<%String usrr = (String) session.getAttribute("userid");
	if(usrr!=null){
		out.println(usrr);
	}%>
	<form action="login.jsp" method="post"><input type="submit" name="logout" value="logout"></form>
	
	
	<%	
	   if(request.getParameter("logout")!=null && request.getParameter("logout").equals("logout")){
		   session.invalidate();
		   response.sendRedirect("login.jsp");
		   
	   } %>
	
</center>


</head>
<body>





</body>
</html>