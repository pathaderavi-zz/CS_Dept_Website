<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exam Information</title>
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
			Exam details of <%=name %><br><br>
			Exam Date:<%=date %><br><br>
			Description:<br><br><%=desc %>
			
			<%
			String role = (String) session.getAttribute("role");
			if(role.equals("Faculty")||role.equals("Staff")){
				if(result!=null){
				out.println("<br><br>Result:<br><br>"+result);
				}
				
			}
			String uid = (String) session.getAttribute("userid");
			session.setAttribute("exam_name",name);
			ResultSet ck = ax.check_exam(id, uid);
 			if(role.equals("Student")){
 				//out.println(ck.getString("id"));
				if(!ck.first()){
				%>
				<br><br><a href="ExamDetails?take=<%=id %>" onclick="return confirm('Are you sure?')">Take Exam</a>
				<%
				}
			}
			
			 %>
			</div>
			
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>