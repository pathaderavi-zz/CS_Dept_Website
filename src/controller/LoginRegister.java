package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.LoginR;
import model.PhDStatusCheck;

/**
 * Servlet implementation class LoginRegister
 */
@WebServlet("/LoginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginRegister() {
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
		if (request.getParameter("register") != null) {
			String NetID = request.getParameter("netid");
			String password = request.getParameter("password");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String role = request.getParameter("role");
			// out.println("<br>"+NetID+"<br>"+password+"<br>"+fname+"<br>"+lname+"<br>"+role);
			String year = request.getParameter("year");
			String program = request.getParameter("program");
			String major = request.getParameter("major");

			LoginR ab = new LoginR();
			ResultSet check = null;
			
			try {
				check = ab.cred(NetID);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}

			try {
				if (check.first()) {
					String status = "Your NetID is already registered. Cannot make another Registration for same NetID.";
					response.sendRedirect("register.jsp");

				} else {
					if (role.equals("Student")) {
						ab.LoginR(NetID, password, fname, lname, role, year,
								program, major);
						response.sendRedirect("login.jsp");
					} else {
						//write function here
						ab.LoginR(NetID, password, fname, lname, role);
						response.sendRedirect("login.jsp");
						
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		String fullname = null;
		if (request.getParameter("login") != null) {

			LoginR ab = new LoginR();
			String Net = request.getParameter("net");
			String pass = request.getParameter("pas");
			boolean a = false;
			try {
				a = ab.login(Net, pass);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		

			if (a == true) {
				// HttpSession session = request.getSession();
				session.setAttribute("userid", Net);
				try {
					String firstl = ab.fname(Net);
					String lastl = ab.lname(Net);
					String rolel = ab.role(Net);
					
					session.setAttribute("firstname", firstl);
					session.setAttribute("lastname", lastl);
					session.setAttribute("role",rolel);
					
					String ph = ab.phone(Net);
					String email = ab.email(Net);
					
					session.setAttribute("phone", ph);
					session.setAttribute("email", email);
					
					if(rolel.equals("Student")){
						
					String yearl = ab.lname(Net);
					String programl = ab.program(Net);
					String majorl = ab.major(Net);
					String advl = ab.advisor(Net);
					
					session.setAttribute("year", yearl);
					session.setAttribute("program", programl);
					session.setAttribute("major", majorl);
					session.setAttribute("advisor", advl);
					if(programl.equals("PhD")){
						String status=null;
						PhDStatusCheck abc = new PhDStatusCheck();
						ResultSet sta = abc.phdstatus_user(Net);
						while(sta.next()){
							status = sta.getString("status");
						}
						
						session.setAttribute("status", status);
						
					}
					}
					
					
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				
				try {
					fullname = ab.fname(Net)+" "+ab.lname(Net);
					session.setAttribute("fullname", fullname);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				// out.println("hello");
				String us = (String) session.getAttribute("userid");
				out.println(us);
				// RequestDispatcher rd = us.get

				response.sendRedirect("home.jsp");

			} else {
				// HttpSession session = request.getSession();
				session.setAttribute("userid",
						"Login Failed, Please Try again.");
				response.sendRedirect("login.jsp");
			}
			// String a
			// =("<br>"+NetID+"<br>"+password+"<br>"+fname+"<br>"+lname+"<br>"+role+"<br>"+year+"<br>"+program+"<br>"+major);
			// out.println(a);//String result = response.getWriter();

			// TODO Auto-generated method stub
		}
	}
}
