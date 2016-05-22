<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Results</title>
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
			<div id="editform">
			<table width="500px">
			<% 
			String netid = (String) session.getAttribute("userid");
			ExamDB ax = new ExamDB(); 
			ResultSet ab = ax.my_exams(netid);
			while(ab.next()){
				out.println("<tr><td align='center'><a href='exam_info.jsp?id="+ab.getString("examid")+"'>"+ab.getString("examname")+"</a></td><td align='center'><a href='result_info.jsp?id="+ab.getString("examid")+"'>View Result</a></td><tr>");
			}
			
			%>
			</table>
			
			</div>
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>