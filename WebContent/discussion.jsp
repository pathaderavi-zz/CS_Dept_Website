<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Discussion Board</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="model.*" %>

</head>
<body>
			<div class="main_wrapper">
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
							<li><a href="newthread.jsp">Create New Thread</a></li>
							<li><a href="edit.jsp">Edit Profile</a></li>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			
			<%
			DiscussDB ax = new DiscussDB(); 
			ResultSet ab = ax.thread_title();
			while(ab.next()){
				out.println("<div id='div_box'>");
				out.println("<a href='thread_c.jsp?id="+ab.getString("id")+"'>"+ab.getString("content")+"</a> By "+ab.getString("by")+" at "+ab.getString("date")+"<br>");
				if(session.getAttribute("role").equals("Faculty") || session.getAttribute("role").equals("Staff")){
					out.println("<div id='logo'><a href='Discuss?delete="+ab.getString("id")+"'>Delete</a></div>");
				}
				out.println("</div>");
				}
			
			%>
		
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>