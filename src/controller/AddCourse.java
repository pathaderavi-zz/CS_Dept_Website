package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Course;

/**
 * Servlet implementation class AddCourse
 */
@WebServlet("/AddCourse")
public class AddCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("select")!=null){
			PrintWriter out = response.getWriter();
			//String user = request.getParameter("select");
			ResultSet r = null;
			ResultSet b = null;
			
			Course a = new Course();
			try {
				r = a.courses_null_num();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("course_num", r);
			
			response.sendRedirect("selectcourse.jsp");
		}
		if(request.getParameter("take")!=null){
			
				PrintWriter out = response.getWriter();
				HttpSession session = request.getSession();
				String instructor = (String) session.getAttribute("fullname");
				String number = request.getParameter("take");
				
				Course update = new Course();
				boolean sta = update.addcourse_inst(number, instructor);
				if(sta==true){
					out.println("<script type = \"text/javascript\">");
					out.println("alert('You can teach this course now.');");
					out.println("location='selectcourse.jsp';");
					out.println("</script	>");
					//response.sendRedirect("selectcourse.jsp");
				}
				
	
		}
		if(request.getParameter("info")!=null){
			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		if (request.getParameter("addcourse") != null) {
			String no = request.getParameter("courseno");
			String name = request.getParameter("coursename");
			
			Course a = new Course();
			
			boolean sta = a.addcourse(no, name);
			if(sta==true){
				out.println("<script type = \"text/javascript\">");
				out.println("alert('Course has been added.');");
				out.println("location='addcourse.jsp';");
				out.println("</script	>");
				//response.sendRedirect("addcourse.jsp");
			}
			
			else{
				out.println("<script type = \"text/javascript\">");
				out.println("alert('Adding Course failed. Check if it exists already.');");
				out.println("location='addcourse.jsp';");
				out.println("</script	>");
			}
			
		}
		if(request.getParameter("courseinfo") != null) {
			Course a = new Course();
			String id = request.getParameter("id");
			String desc = request.getParameter("desc");
			//String desc2 = a.detectAndConvertURLs(desc1);
			//String desc = desc2;
		    //String s = desc1;
		    //String a3 = null;
		    
			//out.println(desc1);
			
		//	out.println(desc2);
			
		
		// System.out.println(desc);
			boolean sta = a.course_info(id, desc);
			if(sta==true){
				out.println("<script type = \"text/javascript\">");
				out.println("alert('Course has been updated.');");
				out.println("location='update.jsp?update="+id+"';");
				out.println("</script	>");
				response.sendRedirect("courses.jsp");
			}
			
			else{
				out.println("<script type = \"text/javascript\">");
				out.println("alert('Adding Course information failed. Check if it exists already.');");
				out.println("location='update.jsp?update="+id+"';");
				out.println("</script	>");
				response.sendRedirect("courses.jsp");
			}
			
		}
		
		
	}

}
