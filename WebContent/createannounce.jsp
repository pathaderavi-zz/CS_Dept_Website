<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Announcements</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
							<%if(session.getAttribute("role").equals("Staff")||session.getAttribute("role").equals("Faculty")){%>
						<li><a href="createannounce.jsp">Create Announcement</a></li>
						<li><a href="cr_job.jsp">Create Job</a></li><% }%>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<div id="editform">
			Select Type of Announcement:<form action="Annc" method="post">
			<select name="type">
			<option value="" selected="selected" disabled>Select One</option>
			<option value="Announcement">Announcement</option>
			<option value="Event">Event</option>
			</select><br><br><br><br>Enter Title:<textarea name="title"></textarea><br><br>
			<textarea rows="40" cols="70" name="content"></textarea><br>
			<input type="submit" name="create_ann" value="Submit">
			</form>
				
			</div>
			</div>
		
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>