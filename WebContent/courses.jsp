<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Courses</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>

<%@ page import="java.sql.*" %>
<%@ page import="model.*" %>

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
			
			
			<table width=600px; border="1px solid black";>
			<th><strong>Course Number</strong></th>
			<th>Course Name</th>
			<th>Course Instructor</th>
			<th>Course Information</th></strong>
			
			<br><br>
			<% 
			Course ax = new Course(); 
			ResultSet ab = ax.courses();
			if(session.getAttribute("role").equals("Student")||session.getAttribute("role").equals("Staff")){
			while (ab.next()) {	
				//out.println("<tr><td align='center'>"+ab.getString("number")+"</td><td align='center'>"+ab.getString("name")+"</td><td align='center'><a href='AddCourse?info="+ab.getString("number")+"'>Course Info</a></td></tr>");
				out.println("<tr><td align='center'>"+ab.getString("number")+"</td><td align='center'>"+ab.getString("name")+"</td><td align='center'>"+ab.getString("instructor")+"</td><td align='center'><a href='course_info.jsp?info="+ab.getString("number")+"'>Course Info</a></td></tr>");
						 
			}
			}
			if(session.getAttribute("role").equals("Faculty")){
				while (ab.next()) {	
					String usrname = (String) session.getAttribute("fullname");
				
					
					if(usrname.equals(ab.getString("instructor"))){
					out.println("<tr><td align='center'>"+ab.getString("number")+"</td><td align='center'>"+ab.getString("name")+"</td><td align='center'>"+ab.getString("instructor")+"</td><td align='center'><a href='course_info.jsp?info="+ab.getString("number")+"'>Course Info</a></td><td align='center'><a href='update.jsp?update="+ab.getString("number")+"'>Update</a></td></tr>");
					 //out.println("<br><br>"+ab.getString("name")+"--------------------"+ab.getString("number")+""+"<a href='AddCourse?take="+ab.getString("number")+"'>Take</a>         <br><br>");
							 
				}else{
					out.println("<tr><td align='center'>"+ab.getString("number")+"</td><td align='center'>"+ab.getString("name")+"</td><td align='center'>"+ab.getString("instructor")+"</td><td align='center'><a href='course_info.jsp?info="+ab.getString("number")+"'>Course Info</a></td></tr>");
					
				}}
				}
			%>
			
			</table>
			
			</div>
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>