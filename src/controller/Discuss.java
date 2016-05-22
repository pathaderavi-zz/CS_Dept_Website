package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DiscussDB;

/**
 * Servlet implementation class Discuss
 */
@WebServlet("/Discuss")
public class Discuss extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Discuss() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		DiscussDB ab = new DiscussDB();
		if(request.getParameter("delete")!=null){
			
	String id = request.getParameter("delete");
	boolean sta = ab.delete_thread(id);
	if (sta==true){
		
		
		response.sendRedirect("discussion.jsp");
	}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		DiscussDB ab = new DiscussDB();
		if(request.getParameter("newthread")!=null){
			String name = request.getParameter("thread");
			String id = (String) session.getAttribute("fullname");
			boolean sta = ab.add_thread(name,id);
			if(sta==true){
				response.sendRedirect("discussion.jsp");
			}
		}
		if(request.getParameter("sub_reply")!=null){
			
			String a = request.getParameter("reply");
			String b = request.getParameter("parent");
			System.out.println(request.getParameter("sub_reply"));
			}
		if(request.getParameter("submitrep")!=null){
			String id = request.getParameter("id");
			String reply = request.getParameter("reply");
			String user = (String) session.getAttribute("fullname");
			boolean sta = ab.add_reply(reply, user, id);
			if(sta==true){
				response.sendRedirect("discussion.jsp");
			}
		}
	}

}
