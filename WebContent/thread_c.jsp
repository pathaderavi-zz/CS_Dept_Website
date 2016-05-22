<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thread</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="model.*" %>
<%@ page import="java.io.*" %>

</head>
<body>
			<div class="main_wrapper">
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
							<li><a href="newthread.jsp">Create New Thread</a></li>
							<li><a href="edit.jsp">Edit Profile</a></li>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<div id="editform">
	
			<%String id = request.getParameter("id"); %>
			<%!
			
			
			%>
			<div style="margin-left:45px;">
			<div style='margin-left:45px;'>
		
			<%
			DiscussDB ax = new DiscussDB(); 
			
			ResultSet ab = ax.thread_titles(id);
			while(ab.next()){
				out.println("<br><br>"+ab.getString("content")+" <br>by "+ab.getString("by")+" at "+ab.getString("date"));
				out.println("<br><form method='post' action='Discuss'><textarea name='reply'></textarea><input type='submit' name='submitrep' value='Reply'><input type='hidden' name='id' value='"+ab.getString("id")+"'></form>");
				if(session.getAttribute("role").equals("Faculty") || session.getAttribute("role").equals("Staff")){
					out.println("<div><a href='Discuss?delete="+ab.getString("id")+"'>Delete</a></div>");
				}
				ResultSet ab1 = ax.thread_comments(ab.getString("id"));
				while(ab1.next()){
					out.println("	<div style='margin-left:45px;'><br><br>"+ab1.getString("content")+" <br>by "+ab1.getString("by")+" at "+ab1.getString("date"));
					out.println("<br><form method='post' action='Discuss'><textarea name='reply'></textarea><input type='submit' name='submitrep' value='Reply'><input type='hidden' name='id' value='"+ab1.getString("id")+"'></form>");
					if(session.getAttribute("role").equals("Faculty") || session.getAttribute("role").equals("Staff")){
						out.println("<div><a href='Discuss?delete="+ab1.getString("id")+"'>Delete</a></div></div>");
					}
					ResultSet ab2 = ax.thread_comments(ab1.getString("id"));
					while(ab2.next()){
						out.println("	<div style='margin-left:70px;'><br><br>"+ab2.getString("content")+" <br>by "+ab2.getString("by")+" at "+ab2.getString("date"));
						out.println("<br><form method='post' action='Discuss'></form>");
						if(session.getAttribute("role").equals("Faculty") || session.getAttribute("role").equals("Staff")){
							out.println("<div><a href='Discuss?delete="+ab2.getString("id")+"'>Delete</a></div></div>");
						}
					}
				}
			}
			
			
			/*public void thread_t(java.io.PrintWriter myOut,String id) throws SQLException {
				myOut.println("	<form action='Discuss' method='post'>");
				DiscussDB ax = new DiscussDB(); 
				
				ResultSet ab = ax.thread_titles(id);
				while(ab.next()){
					myOut.println("<br><br>"+ab.getString("content")+" <br>by "+ab.getString("by")+" at "+ab.getString("date"));
					myOut.println("<br><input type='hidden' name='parent' value='"+ab.getString("id")+"'><textarea name='reply' placeholder=''></textarea><br><input type='submit' name='sub_rep' value='Reply'>");
					String ids = ab.getString("id");
					ResultSet a1 = ax.thread_parent(ids);
					if(a1!=null){
						while(a1.next()){
							myOut.println("<div style='margin-left:35px;''>");
							thread_t(myOut,a1.getString("id"));
							myOut.println("</div>");
						}
					}
				}
				myOut.println("	</form>");
			}*/
			//
			%></form>
			</div>
			<% /*PrintWriter writer = new PrintWriter(out);
			thread_t(writer, id);*/%>
			</div>
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>