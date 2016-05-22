<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reservation</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="model.*" %>
<style>
table.ex1 {
    border-collapse: separate;
    border-spacing: 10px;
    border-color: black;
}

table.ex2 {
    border-collapse: separate;
    border-spacing: 10px 50px;
	}
</style>
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
			<table width=600px; class="ex1">
			
			<th>Name</th>
			<th>Type</th>
			<th>Date</th>	
			<th>Slot</th></strong>
			<tr><td></td></tr>
			<tr><td></td></tr>
			
			<%Resources ab = new Resources();
			ResultSet rs = null;
			String me = (String) session.getAttribute("userid");
			rs = ab.my_reserved(me);	
			while(rs.next()){
				String a1 = "<tr><td align='center'>"+rs.getString("name")+"</td>"+"<td align='center'>"+rs.getString("type")+"</td>"+"<td align='center'>"+rs.getString("date")+"</td>"+"<td align='center'>"+rs.getString("slot")+"</td>";
				String a2 = "<td align='center'><a href='ResourceRes?name="+rs.getString("name");
				String a3 = "&type="+rs.getString("type")+"&date="+rs.getString("date")+"&slot="+rs.getString("slot");
				String a5 = (String) session.getAttribute("userid");
				
				String a4  ="&user="+a5+"' onclick=\"return confirm('Are you sure?')\">Cancel Reservation</a></td></tr>";
				out.println(a1+a2+a3+a4);
			
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