<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
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
			String result = null;
			while(ab.next()){
				name = ab.getString("name");
				date = ab.getString("date");
				desc = ab.getString("desc");
				result = ab.getString("result");
			}%>
			<div id="editform">
			Update Result for <%=name %><br>
			Add Result:<br>
			<form action="ExamDetails" method="post">
			<textarea rows="15" cols="70" name="result" placeholder="<%=result %>"></textarea><br>
			<input type="hidden" value="<%=id %>" name="id">
			<input type="submit" name="add_result">
			</form>
			</div>
			
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>