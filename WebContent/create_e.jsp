<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exams</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
			<% if(session.getAttribute("role").equals("Faculty")||session.getAttribute("role").equals("Staff")){%>
							<li><a href="create_e.jsp">Create Exam</a></li> <% }%>
			
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<div id="editform">
		<form action="ExamDetails" method="post" >
			Enter Name:<input type="text" name="examname"><br>
		Enter Date:<input type="date" name="examdate"><br>
		Enter Details:<br><textarea rows="4" cols="50" name="examdetails"></textarea><br>
		<input type="submit" name="add_exam">
			</form>
			</div>
			</div>
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>