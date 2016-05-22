package model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ExamDetails
 */
@WebServlet("/ExamDetails")
public class ExamDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExamDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		ExamDB ab = new ExamDB();
			if(request.getParameter("delete")!=null){
				String id = request.getParameter("delete");
				boolean sta = ab.delete_exam(id);
				if(sta==true){
					response.sendRedirect("exams.jsp");
				}
				
			}
			if(request.getParameter("take")!=null){
				String netid = (String) session.getAttribute("userid");
				String fullname = (String) session.getAttribute("fullname");
				String exam = (String) session.getAttribute("exam_name");
				//System.out.println(netid+fullname);
				String id = request.getParameter("take");
				boolean sta = ab.stud_exam(id, netid, fullname,exam);
				if(sta==true){
					response.sendRedirect("exams.jsp");
				}
				
				
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		ExamDB ab = new ExamDB();
			if(request.getParameter("add_exam")!=null){
			String details = request.getParameter("examdetails");
			String name = request.getParameter("examname");
			String date = request.getParameter("examdate");
			boolean sta = ab.add_exam(name, details, date);
			if(sta==true){
				response.sendRedirect("exams.jsp");
			}
			
			
		}
			if(request.getParameter("update_exam")!=null){
				String details = request.getParameter("examdetails");
				String name = request.getParameter("examname");
				String date = request.getParameter("examdate");
				String id = request.getParameter("id");
				System.out.println(id);
				boolean sta = ab.Edit(details, name, date, id);
				
				if (sta==true){
					response.sendRedirect("exams.jsp");
				}
			}
			if(request.getParameter("add_result")!=null){
				String result = request.getParameter("result");
				String id = request.getParameter("id");
				System.out.print(id);
				boolean sta = ab.add_result(result, id);
				if(sta==true){
					response.sendRedirect("exams.jsp");
				}
				}
	}

}
