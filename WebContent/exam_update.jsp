<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Exam Details</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="model.*" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
								<% if(session.getAttribute("role").equals("Faculty")||session.getAttribute("role").equals("Staff")){%>
							<li><a href="create_e.jsp">Create Exam</a></li> <% }%>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<% 
			String id = request.getParameter("id");
			ExamDB ax = new ExamDB(); 
			ResultSet ab = ax.exam(id);
			String name = null;
			String date = null;
			String desc = null;
			while(ab.next()){
				name = ab.getString("name");
				date = ab.getString("date");
				desc = ab.getString("desc");
				//out.println(desc);
			}%>
			<div id="editform">
		<form action="ExamDetails" method="post" >
			Enter Name:<input type="text" name="examname" value="<%=name %>"><br>
		Enter Date:<input type="date" name="examdate" value="<%=date %>"><br>
		Enter Details:<br><textarea rows="4" cols="50" name="examdetails" placeholder="<%=desc %>"></textarea><br>
		<input type="hidden" name="id" value="<%=id %>">
		<input type="submit" name="update_exam">
			</form>
			</div>
			
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>