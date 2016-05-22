<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profile</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
							<li><a href="viewprofile.jsp">View Profile</a></li>
							<li><a href="edit.jsp">Edit Profile</a></li>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							
							</div>
			<div id="content_area">
			<div id="editform">
			<style>
table, th, td {
    border: 1px black;

    border-collapse: separate;
    border-spacing: 40px;
    
}
</style>
</head>
<body>

<table width=500px;>
 
  <tr>
    <td>NetID:</td>
    <td><%String NetID = (String) session.getAttribute("userid");
	if(NetID!=null){
		out.println(NetID);
	}%></td>
  </tr>
  <tr>
    <td>First Name:</td>
    <td><%String firstname = (String) session.getAttribute("firstname");
	if(firstname!=null){
		out.println(firstname);
	}%></td>
  </tr>
<tr>
    <td>Last Name:</td>
    <td><%String lastname = (String) session.getAttribute("lastname");
	if(lastname!=null){
		out.println(lastname);
	}%></td>
  </tr>
<tr>
    <td>Role:</td>
    <td><%String role = (String) session.getAttribute("role");
	if(role!=null){
		out.println(role);
	}%></td>
  </tr>
 <% if(role.equals("Student")){
 %>
<tr>
    <td>Year Joined:</td>
    <td><%String year = (String) session.getAttribute("year");
	if(year!=null){
		out.println(year);
	}%></td>
  </tr>
<tr>
    <td>Program:</td>
    <td><%String program = (String) session.getAttribute("program");
	if(program!=null){
		out.println(program);
	}%></td>
  </tr>
<tr>
    <td>Major:</td>
    <td><%String major = (String) session.getAttribute("major");
	if(major!=null){
		out.println(major);
	}%></td>
  </tr>
<tr>
    <td>Advisor Name:</td>
    <td><%String advisor = (String) session.getAttribute("advisor");
	if(advisor!=null){
		out.println(advisor);
	}%></td>
  </tr>
<% } %><tr> 
    <td>Email:</td>
    <td><%String email = (String) session.getAttribute("email");
	if(email!=null){
		out.println(email);
	}%></td>
  </tr>
<tr>
    <td>Phone:</td>
    <td><%String phone = (String) session.getAttribute("phone");
	if(phone!=null){
		out.println(phone);
	}%></td>
  </tr>
<% String bca =(String) session.getAttribute("role");
if(bca.equals("Student")){
String abc = (String) session.getAttribute("program");
if(abc.equals("PhD")){%>  <tr>
    <td>Status:</td>
    <td><%String status = (String) session.getAttribute("status");
	if(status!=null){
		out.println(status);
	}%></td>
  </tr>
  <% }}%>

</table>
			
		
			</div>
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>