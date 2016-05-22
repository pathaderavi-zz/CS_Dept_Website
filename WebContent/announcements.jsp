<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Announcements</title>
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
			
			
				<%
				ResultSet rs = null;
				Announce ab = new Announce();
				rs = ab.all_annc();
				while(rs.next()){
					String title = rs.getString("title");
					String id = rs.getString("id");
					String a1 = "<div id='div_box'><a href='annc_info.jsp?info="+rs.getString("id")+"'>"+rs.getString("title")+"</a><br>Type:"+rs.getString("type");
					String cu = (String) session.getAttribute("userid");
					if(cu.equals(rs.getString("by"))){
						String a2 = "<br><a href='Annc?delete="+rs.getString("id")+"' onclick=\"return confirm('Are you sure?')\">Delete this Post</a></div>";
						out.println(a1+a2);
					}else{
						
						out.println(a1+"</div>");
						//out.println("<br>Type:"+rs.getString("type"));
					}
					
					/*
					String a1 = "<div id='div_box'><a href='ann_info.jsp?id="+rs.getString("id")+">Name</a>";
					String cu = (String) session.getAttribute("userid");
					if(cu.equals(rs.getString("by"))){
					String a2 = "<a href='Annc?id_delete="+rs.getString("id")+ "' onclick=\"return confirm('Are you sure?')\"></a></div>";
					out.println(a1+a2);*/
					
					//</div>";
				}
				%>
				<%
				ResultSet rs1 = null;
				//Announce ab = new Announce();
				rs1 = ab.all_jobs();
				while(rs1.next()){
					String title = rs1.getString("title");
					String id = rs1.getString("id");
					String a1 = "<div id='div_box'><a href='job_info.jsp?info="+rs1.getString("id")+"'>"+rs1.getString("title")+"</a><br>Type:"+rs1.getString("type");
					String cu1 = (String) session.getAttribute("userid");
					if(cu1.equals(rs1.getString("by"))){
						String a2 = "<br><a href='Annc?delete_job="+rs1.getString("id")+"' onclick=\"return confirm('Are you sure?')\">Delete this Post</a></div>";
						out.println(a1+a2);
					}else{
						
						out.println(a1+"</div>");
						
					}
					
				
				}
				%>
			
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>