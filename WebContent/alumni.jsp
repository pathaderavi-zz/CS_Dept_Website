<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="model.*" %>


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
			
			<table width=600px; border="1px solid black";>
			
			<%
			
			Alum_db ax = new Alum_db(); 
			ResultSet ab = ax.alumn_info();
			if(session.getAttribute("role").equals("Student")||session.getAttribute("role").equals("Staff")){
			while (ab.next()) {	
				//out.println("<tr><td align='center'>"+ab.getString("number")+"</td><td align='center'>"+ab.getString("name")+"</td><td align='center'><a href='AddCourse?info="+ab.getString("number")+"'>Course Info</a></td></tr>");
				out.println("<tr><td align='center'>"+ab.getString("name")+"</td><td align='center'>"+ab.getString("year")+"</td><td align='center'>"+ab.getString("inst")+"</td><td align='center'>"+ab.getString("dept")+"</td></tr>");
						 
			}
			}
			if(session.getAttribute("role").equals("Faculty")){
				while (ab.next()) {	
					out.println("<tr><td align='center'>"+ab.getString("name")+"</td><td align='center'>"+ab.getString("year")+"</td><td align='center'>"+ab.getString("inst")+"</td><td align='center'>"+ab.getString("dept")+"</td><td align='center'><a href='update_al.jsp?id="+ab.getString("id")+"'>Update</a></td><td><a href='Alum?id="+ab.getString("id")+"'>Delete</a></td></tr>");
					 //out.println("<br><br>"+ab.getString("name")+"--------------------"+ab.getString("number")+""+"<a href='AddCourse?take="+ab.getString("number")+"'>Take</a>         <br><br>");
							 
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