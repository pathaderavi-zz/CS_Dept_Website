package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Edit;

/**
 * Servlet implementation class EditDetails
 */
@WebServlet("/EditDetails")
public class EditDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String userid = (String) session.getAttribute("userid");
		boolean ab = false;

		if (request.getParameter("submit") != null) {
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			// System.out.println(adv);
			// System.out.println(phone);
			// System.out.println(email);
			// System.out.println(userid);
			String roles = (String) session.getAttribute("role");
			
			Edit aa = new Edit();
			if (roles.equals("Student") ) {
				String adv = (String) request.getParameter("advisor");
				ab = aa.Edit(adv, email, phone, userid);
				// }
				if (ab == true) {
					session.setAttribute("advisor", adv);
					session.setAttribute("email", email);
					session.setAttribute("phone", phone);
					response.sendRedirect("home.jsp");
				} else {
					response.sendRedirect("edit.jsp");
				}
			}
			if(roles.equals("Faculty") || roles.equals("Staff")){
				System.out.println(roles);
				ab = aa.Edit(email, phone, userid);
				
				if (ab == true) {
					System.out.println("1");
					session.setAttribute("email", email);
					session.setAttribute("phone", phone);
					response.sendRedirect("home.jsp");
				}
				else{
					response.sendRedirect("edit.jsp");
				}
			}
				

		}
	}

}
