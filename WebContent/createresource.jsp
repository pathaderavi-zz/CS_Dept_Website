<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Resource</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
							<%if(session.getAttribute("role").equals("Staff")){%><li><a href="createresource.jsp">Create Resource</a></li><% }%>
							<li><a href="reserve.jsp">Make Reservation</a></li>
							
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<div id="editform">
			<table width="300px">
			<form action="ResourceRes" method="post">
			Enter the Name:<input type="text" name="reosurcename" required>
			Type:<select name="type">
			<option value=""selected="selected" disabled>Select</option>
			<option value="Conference Room">Conference Room</option>
			<option value="Projector">Projector</option>
			</select>
			<input type="submit" name="addresource" value="Add">
			
			</form>
			</table>
			
			</div>
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>