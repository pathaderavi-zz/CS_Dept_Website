<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of PhD Students</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="model.*" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<div id="editform">
			<table width="500px">
			<th>Student Full Name</th>
			<th>Status</th>
			<th>Change</th>
			<%PhDStatusCheck ax = new PhDStatusCheck(); 
			ResultSet ab = ax.phdstatus();
			while (ab.next()) {	
				String a1 ="<tr><form action='PhDStatus' method='post'><td align='center'>"+ab.getString("fname")+" "+ab.getString("lname")+"</td><td align='center'>"+ab.getString("status")+"</td><td align='center'>";
				//String a2 = "<select><option value='volvo'>Volvo</option><option value="saab">Saab</option><option value="mercedes">Mercedes</option><option value="audi">Audi</option></select>";
				String a2 = "<select name='status'><option value='None' disabled>Select</option><option value='Not a Candidate'>NOT A CANDIDATE</option><option value='Candidate'>Candidate</option></select>";
				String a3 = "</td><input type='hidden' name='netid' value='"+ab.getString("netid")+"'><td align='center'><input type='submit' name='updatesta'></td></form></tr>";
				out.println(a1+a2+a3);
				 //out.println("<br><br>"+ab.getString("name")+"--------------------"+ab.getString("number")+""+"<a href='AddCourse?take="+ab.getString("number")+"'>Take</a>         <br><br>");
						 
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