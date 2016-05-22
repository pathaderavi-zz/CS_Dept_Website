<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reserve Available Resources</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="model.*" %>
<%@ page import="java.util.*" %>


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
					<form action="reserve.jsp" method="post">
					Select Type:
					<select name="type">
							<option value="" selected="selected" disabled>Select Resource</option>
  							<option value="Conference Room">Conference Room</option>
  							<option value="Projector">Projector</option>
					</select>
					<input type="submit" name="resource" value="Select Resource Type">
					</form><br><br><br><%
					
			
					%>
					<form action="reserve.jsp" method="post">
					Select Name:<% 
					String type = request.getParameter("type");
					//session.setAttribute("resource_type",type);
					String exa = (String) session.getAttribute("resource_type");
					//System.out.println(exa);
					ResultSet rs = null;
					Resources ab = new Resources();
					rs = ab.resources(type);
					if(rs!=null){
						out.println("<select name='name'>");
						while(rs.next()){
							out.println("<option value='"+rs.getString("name")+"'>"+rs.getString("name")+"</option>");
						}
						out.println("</select>");
					}
					%>
					<input type="hidden" name="type1" value="<%=type %>">
					<input type="submit" name="names" value="Select Resource">
					</form>
					<% String name = request.getParameter("name");
					String names = request.getParameter("names");
					String type1 = request.getParameter("type1");
					if(names!=null && !names.isEmpty()){
						out.println(name);
						session.setAttribute("resource_name",name);
						
					}%>
					<form action="ResourceRes" method="post">
						Select Date: <input type="date" name="testcal">
						
						<input type="hidden" value="<%=type1 %>" name="typer">
						<input type="hidden" value="<%=name %>" name="namer">
						<input type="submit" name="testdate">
						</form>
						<br><br>
						
				<%
				 Set<String> av = new HashSet<String>(); 
				
				Set<String> nav = new HashSet<String>(); 
				if(session.getAttribute("available") instanceof HashSet){
					
				 av = (Set<String>) session.getAttribute("available");
				}
				if(session.getAttribute("nota") instanceof HashSet){
				nav = (Set<String>) session.getAttribute("nota");
				}
				out.println("Available Time Slots:<br><br><form action='ResourceRes' method='post'><select name='resource_slot'>");
				
				for(String str : av){
					out.println("<option value='"+str+"'>"+str+"</option>");
					
					
				}
				out.println("</select>");
				String resource_type =(String) session.getAttribute("resource_type");
				String resource_name =(String) session.getAttribute("resource_name");
				String resource_date =(String) session.getAttribute("resource_date");
				//out.println(resource_date+" "+resource_name+" "+resource_type);
				
				
				%>
				<input type="hidden" value="<%=resource_type %>" name="type_res">
				<input type="hidden" value="<%=resource_name %>" name="name_res">
				<input type="hidden" value="<%=resource_date %>" name="date_res">
				
				<input type="submit" name="submit_all" value="Reserve">
				</form><%
				
				if(nav!=null && !nav.isEmpty()){
				out.println("Not Available");
				for(String str : nav){
					out.println("<br>"+str);
					
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