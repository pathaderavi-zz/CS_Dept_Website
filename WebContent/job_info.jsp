<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Job Information</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="model.*" %>
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
			<%if (request.getParameter("info") != null) {
			Announce ab = new Announce();
			String id = request.getParameter("info");
			ResultSet rs = null;
					rs = ab.job_info(id);
			while(rs.next()){
				out.println("Title:  "+rs.getString("title"));
				out.println("<br>Type:"+rs.getString("type"));
				out.println("<br><br><br><br><br>");
				out.println("Description:<br><br><br>"+rs.getString("content"));
				
				out.println("<br><br><h2>Link to apply:</h2>"+rs.getString("link"));
				
				String cu = (String) session.getAttribute("userid");
				if(cu.equals(rs.getString("by"))){
					String a2 = "<br><a href='Annc?delete="+rs.getString("id")+"' onclick=\"return confirm('Are you sure?')\">Delete this Post</a>";
					out.println(a2);
				}
			}
			} %>
			</div>
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>