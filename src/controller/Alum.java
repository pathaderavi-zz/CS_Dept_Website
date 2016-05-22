package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Alum_db;

/**
 * Servlet implementation class Alum
 */
@WebServlet("/Alum")
public class Alum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Alum() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		if(request.getParameter("id")!=null){
			String id = request.getParameter("id");
			Alum_db ab = new Alum_db();
			ab.delete_alm(id);
			response.sendRedirect("alumni.jsp");
			
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		if(request.getParameter("sub_al")!=null){
			String name = request.getParameter("fullname");
		
		String year = request.getParameter("year");
		String inst = request.getParameter("inst");
		String dept = request.getParameter("dept");
		Alum_db ab = new Alum_db();
		ab.add_alumn(name, year, inst, dept);
		response.sendRedirect("alumni.jsp");
		//out.println(a);}
	}
		if(request.getParameter("update_al")!=null){
		
			String name = request.getParameter("fullname");
			
			String year = request.getParameter("year");
			String inst = request.getParameter("inst");
			String dept = request.getParameter("dept");
			String id = request.getParameter("id");
			Alum_db ab = new Alum_db();
			//String userid = (String) session.getAttribute("userid");
			ab.Edit(name, year, inst, dept, id);
			response.sendRedirect("alumni.jsp");
		}
		if(request.getParameter("update_my")!=null){
			
			String name = request.getParameter("fullname");
			
			String year = request.getParameter("year");
			String inst = request.getParameter("inst");
			String dept = request.getParameter("dept");
			String id = request.getParameter("id");
			Alum_db ab = new Alum_db();
			
			String userid = (String) session.getAttribute("userid");
			out.println(userid);
			ab.Edit_my(name, year, inst, dept, userid);
			response.sendRedirect("alumni.jsp");
		}
		

	}
	}
