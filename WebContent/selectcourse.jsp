<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Course</title>
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
			<div id="editform">
			
			<% Course ax = new Course(); 
			ResultSet ab = ax.courses_null_num();//null;
			//a = (ResultSet) session.getAttribute("course_null_num");
			
			%>
			
			<table width=700px; border="1px solid black";>
			<% 
			ResultSetMetaData rsmd = ab.getMetaData();
			 int columnCount = rsmd.getColumnCount();
			 
			 while (ab.next()) {	
				 out.println("<br><br>"+ab.getString("name")+"--------------------"+ab.getString("number")+""+"<a href='AddCourse?take="+ab.getString("number")+"'>Take</a>         <br><br>");
			 }
			 /*
			 while (ab.next()) {
				 
				  out.println("<TR>");
				  for (int i = 1; i < columnCount-1; i++) {
					   out.println("<form method='post' action='selectcourse.jsp'><TD name='"+rsmd.getColumnLabel(i+1)+"'>" + ab.getString(i + 1) + "</TD><td><a href='AddCourse?id='"+ab.getString(i+1)+">Take</a></td></form>");
				    
				    }
				  out.println("<td><input type='submit' name='takecourse' value='Take Course'></td>");
			      out.println("</TR>");
			 }*/
				%>
			
			
			
			</table></form>
			
			
			<%if(request.getParameter("name")!=null){
				out.println("hello");
				 for (int i = 1; i < columnCount-1; i++) {
					 out.println("name='"+rsmd.getColumnLabel(i+1)+"'>");
				 }
				 
			} %>
			</div>
			
			</div>
				
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>