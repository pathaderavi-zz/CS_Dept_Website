<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Degree Concentrations</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
							<li><a href="viewprofile.jsp">View Profile</a></li>
							<li><a href="edit.jsp">Edit Profile</a></li>
							<li><a href="program.jsp">Programs</a></li>
						
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<div id="editform">
			
			<form action = "concentrations.jsp" method="post">
			
			<select name="degreename">
			<option value="BS">BS</option>
			<option value="BA">BA</option>
			<option value="MS">MS</option>
			<option value="PhD">PhD</option>
		<br><input type="submit" name="degree" value="See Concentrations">				
			</select>
		
			</form>
			<form action = "concentrations.jsp" method="get">
			<% if(request.getParameter("degree")!=null){
				if(request.getParameter("degreename").equals("BS")){
					%>
					<select name="bs">
					<option value="BS1">BS1</option>
					<option value="BS2">BS2</option>
					</select>
					<input type="submit" name="bsn" value="See Concentrations"></form>
						
					<% 
					
				}
				if(request.getParameter("degreename").equals("BA")){
					%>
					<select name="bs">
					<option value="BA1">BA1</option>
					<option value="BA2">BA2</option>
					</select>
					<input type="submit" name="bsn" value="See Concentrations"></form>
						
					<% 
					
				}
				if(request.getParameter("degreename").equals("MS")){
					%>
					<select name="bs">
					<option value="MS1">MS1</option>
					<option value="MS2">MS2</option>
					</select>
					<input type="submit" name="bsn" value="See Concentrations"></form>
						
					<% 
					
				}
				if(request.getParameter("degreename").equals("PhD")){
					%>
					<select name="bs">
					<option value="PhD1">PhD1</option>
					<option value="PhD2">PhD2</option>
					</select>
					<input type="submit" name="bsn" value="See Concentrations"></form>
						
					<% 
					
				}
				
			}%>
			
			<% if(request.getParameter("bs")!=null){
				String check = request.getParameter("bs"); 
				if(check.contains("BS1")){
					%>BS Concentration 1
	<table style="width:100%">
	<th>Course Name</th>
	<th>Course Details</th>
	  <tr>
	    <td align="center">Course 1</td>
	    <td align="center">Detail 1</td>		
	    
	  </tr>
	  <tr>
	    <td align="center">Course 2</td>
	    <td align="center">Detail 2</td>		
	 
	  </tr>
	  
	</table><% 
					}
				if(check.contains("BS2")){
					%>BS Concentration 2
	<table style="width:100%">
	<th>Course Name</th>
	<th>Course Details</th>
	  <tr>
	    <td align="center">Course 1</td>
	    <td align="center">Detail 1</td>		
	    
	  </tr>
	  <tr>
	    <td align="center">Course 2</td>
	    <td align="center">Detail 2</td>		
	 
	  </tr>
	  
	</table><% 
					}
				if(check.contains("BA1")){
					%>BA Concentration 1
	<table style="width:100%">
	<th>Course Name</th>
	<th>Course Details</th>
	  <tr>
	    <td align="center">Course 1</td>
	    <td align="center">Detail 1</td>		
	    
	  </tr>
	  <tr>
	    <td align="center">Course 2</td>
	    <td align="center">Detail 2</td>		
	 
	  </tr>
	  
	</table><% 
					}
				if(check.contains("BA2")){
					%>BA Concentration 2
	<table style="width:100%">
	<th>Course Name</th>
	<th>Course Details</th>
	  <tr>
	    <td align="center">Course 1</td>
	    <td align="center">Detail 1</td>		
	    
	  </tr>
	  <tr>
	    <td align="center">Course 2</td>
	    <td align="center">Detail 2</td>		
	 
	  </tr>
	  
	</table><% 
					}	if(check.contains("MS1")){
						%>MS Concentration 1
						<table style="width:100%">
						<th>Course Name</th>
						<th>Course Details</th>
						  <tr>
						    <td align="center">Course 1</td>
						    <td align="center">Detail 1</td>		
						    
						  </tr>
						  <tr>
						    <td align="center">Course 2</td>
						    <td align="center">Detail 2</td>		
						 
						  </tr>
						  
						</table><% 
										}
									if(check.contains("MS2")){
										%>MS Concentration 2
						<table style="width:100%">
						<th>Course Name</th>
						<th>Course Details</th>
						  <tr>
						    <td align="center">Course 1</td>
						    <td align="center">Detail 1</td>		
						    
						  </tr>
						  <tr>
						    <td align="center">Course 2</td>
						    <td align="center">Detail 2</td>		
						 
						  </tr>
						  
						</table><% 
										}
									if(check.contains("PhD1")){
										%>PhD Concentration 1
						<table style="width:100%">
						<th>Course Name</th>
						<th>Course Details</th>
						  <tr>
						    <td align="center">Course 1</td>
						    <td align="center">Detail 1</td>		
						    
						  </tr>
						  <tr>
						    <td align="center">Course 2</td>
						    <td align="center">Detail 2</td>		
						 
						  </tr>
						  
						</table><% 
										}
									if(check.contains("PhD2")){
										%>PhD Concentration 2
						<table style="width:100%">
						<th>Course Name</th>
						<th>Course Details</th>
						  <tr>
						    <td align="center">Course 1</td>
						    <td align="center">Detail 1</td>		
						    
						  </tr>
						  <tr>
						    <td align="center">Course 2</td>
						    <td align="center">Detail 2</td>		
						 
						  </tr>
						  
						</table><% 
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