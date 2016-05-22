<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/style.css">

</head>
<body>
	


		<div class="header_wrapper">
			<img id="banner" src="logo.png">
		</div>

		
			<div class="menubar">

				<ul id="menu">
					<li><a href="home.jsp">Home</a></li>
					<li><a href="courses.jsp">Courses</a></li>
					<%if(session.getAttribute("role").equals("Faculty")||session.getAttribute("role").equals("Staff")) {%><li><a href="status.jsp">PhD Students</a></li><%} %>
					<%if(session.getAttribute("role").equals("Staff") || session.getAttribute("role").equals("Faculty")){%><%} %>
					
					<li><a href="announcements.jsp">Announcements</a></li>
					<li><a href="reservation.jsp">Reservation</a></li>
					
					<li><a href="alumni.jsp">Alumni Info</a></li>
					<li><a href="exams.jsp">Exams</a></li>
					<li><a href="discussion.jsp">Discussion Board</a></li>


				</ul>

			</div>
			
			
				<div id="status_bar">
					Welcome
					<%String usr = (String) session.getAttribute("fullname");
	if(usr!=null){
		out.println(usr);
	}%>
				</div>
			

			

		
		


	
	</div>
</body>
</html>