<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Alumni</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
			<li><a href="alumni.jsp">All Alumni</a></li>
					<% if(session.getAttribute("role").equals("Faculty")||session.getAttribute("role").equals("Staff")){%>
							
							<li><a href="add_al.jsp">Add Alumni</a></li> <% }%>
							<% if(session.getAttribute("role").equals("Student")){%>
							<li><a href="add_my.jsp">Add My Info</a></li>
							 <% }%>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<div id="editform">
			<form action="Alum" method="post"> 
			Enter Full Name: <input type="text" name="fullname" required><br>
			Enter Year Graduated:<input type="text" name="year" required><br>
			Enter Current Institute he/she is with: <input type="text" name="inst"><br>
			Enter Department Belonged to:<input type="text" name="dept" required><br>
		<br><br>
			<input type="submit" name="sub_al" required>
			</form>
			</div>
			
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>