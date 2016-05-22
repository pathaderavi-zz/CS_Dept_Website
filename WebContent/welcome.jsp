<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to CS Department Portal for UAlbany</title>
</head>
<body>

<img src="logo.png" alt="UAlbany Logo" >


<form style="margin-top:150px;margin-left:350px;">
		<div>	<div style="margin-left:140px;">
				<img src="logo1.png" height="250px" width="250px" style="float:center;" >	<br>
				
				</div>
				<br>		
		</div>
</form><br><br>
			<center>Welcome to Computer Science Department Portal
			
			You can Login <a href="login.jsp">HERE</a>.
		<br><br>	
		 If you are not registered, then register <a href="register.jsp">HERE</a>.</center>
		 
		 
		<%String usr = (String) session.getAttribute("userid");%>


</body>
</html>