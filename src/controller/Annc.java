package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Announce;

/**
 * Servlet implementation class Annc
 */
@WebServlet("/Annc")
public class Annc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Annc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		if(request.getParameter("delete")!=null){
			Announce ab = new Announce();
			String id = request.getParameter("delete");
			ab.delete_ann(id);
			response.sendRedirect("announcements.jsp");
		}
		if (request.getParameter("delete_job") != null) {
			Announce ab = new Announce();
			String id = request.getParameter("delete_job");
			ab.delete_job(id);
			response.sendRedirect("announcements.jsp");
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		if (request.getParameter("create_ann") != null) {
		
				String type = request.getParameter("type");
				String content = request.getParameter("content");
				String title = request.getParameter("title");
				String user = (String) session.getAttribute("userid");
				Announce ab = new Announce();
				
				boolean sta = ab.ann_create(type, content, title, user);
				if(sta==true){
					response.sendRedirect("announcements.jsp");
				}
				//out.println(type+" "+content);
				
		
		}
		if (request.getParameter("create_job") != null) {
			
			String type = request.getParameter("link");
			String content = request.getParameter("content");
			String title = request.getParameter("title");
			String user = (String) session.getAttribute("userid");
			Announce ab = new Announce();
			
			boolean sta = ab.job_create(type, content, title, user);
			if(sta==true){
				response.sendRedirect("announcements.jsp");
			}
			
		}
	}

}
