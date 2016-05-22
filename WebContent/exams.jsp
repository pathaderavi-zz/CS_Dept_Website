
							<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exams</title>
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
								<% if(session.getAttribute("role").equals("Student")){%>
							<li><a href="results.jsp">My Exams</a></li><%} %>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<table width=600px; border="1px solid black";>
			<th><strong>Name</strong></th>
			<th>Date</th>
			
			
			<br><br>
			<% 
			ExamDB ax = new ExamDB(); 
			ResultSet ab = ax.all_exams();
			if(session.getAttribute("role").equals("Faculty")||session.getAttribute("role").equals("Staff")){
				while (ab.next()) {	
					//out.println("<tr><td align='center'>"+ab.getString("number")+"</td><td align='center'>"+ab.getString("name")+"</td><td align='center'><a href='AddCourse?info="+ab.getString("number")+"'>Course Info</a></td></tr>");
					out.println("<tr><td align='center'><a href='exam_info.jsp?id="+ab.getString("id")+"'>"+ab.getString("name")+"</a></td><td align='center'>"+ab.getString("date")+"</td><td align='center'><a href='exam_update.jsp?id="+ab.getString("id")+"'>Update</a></td><td align='center'><a href='result.jsp?id="+ab.getString("id")+"'>Add/Update Result</a></td><td align='center'><a href='ExamDetails?delete="+ab.getString("id")+"' onclick=\"return confirm('Are you sure?')\">Delete Exam</a></td></tr>");
							 
				}
				}
			if(session.getAttribute("role").equals("Student")){
				while (ab.next()) {	
					out.println("<tr><td align='center'><a href='exam_info.jsp?id="+ab.getString("id")+"'>"+ab.getString("name")+"</a></td><td align='center'>"+ab.getString("date")+"</td><tr>");
				}
				
			}
			
			%>
			</table>
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>