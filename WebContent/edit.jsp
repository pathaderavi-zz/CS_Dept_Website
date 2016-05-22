<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
							<li><a href="viewprofile.jsp">View Profile</a></li>
							<li><a href="edit.jsp">Edit Profile</a></li>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							
							</div>
			<div id="content_area">
			
			<div id="editform">
			<form method="post" action="EditDetails"><% if(session.getAttribute("role").equals("Student")){
				
		%>
			Edit Your Advisor's Name:<input type="text" name="advisor" value="<%out.println((String) session.getAttribute("advisor")); %>"/><br><br><br>	<% } %>
			Edit Your Email:<input type="text" name="email" value="<%out.println((String) session.getAttribute("email")); %>"/><br><br><br>
			Edit Your Phone:<input type="text" name="phone" value="<%out.println((String) session.getAttribute("phone")); %>"/><br><br><br>
			<input type="submit" value="Update" name="submit">
			</form></div>
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>