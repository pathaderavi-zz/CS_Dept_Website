<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//cdn.tinymce.com/4/tinymce.min.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Course</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
							<li><a href="courses.jsp">View Courses</a></li>
							<%if(session.getAttribute("role").equals("Faculty")){%><li><a href="addcourse.jsp">Add Courses</a></li>
							<%String c = (String) session.getAttribute("userid"); %>
							<li><form action="AddCourse" method="get"><a name="selectcourse" href="AddCourse?select=<%=c %>">Select Course</a></form></li>
							<% }%>
							
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<div id="editform">
			</div>
			<div id="editform">
			<% String cnum = request.getParameter("update"); %>
			<form action="AddCourse" method="post"><textarea name="desc" cols="100" rows="30"></textarea>
			<input type="submit" name="courseinfo" value="Submit"></input>
			<input type="hidden" value="<%=cnum %>" name="id"></form>
			</div></div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>