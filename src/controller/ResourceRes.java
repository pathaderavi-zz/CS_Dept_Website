package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLDocument.Iterator;

import model.Resources;

/**
 * Servlet implementation class ResourceRes
 */
@WebServlet("/ResourceRes")
public class ResourceRes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResourceRes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
			String user = request.getParameter("user");
			String name = request.getParameter("name");
			String type = request.getParameter("type");
			String date = request.getParameter("date");
			String slot = request.getParameter("slot");
			//out.println(user+" "+name+" "+type+""+date+" "+slot);
			Resources ab = new Resources();
			boolean sta = ab.delete_res(user, name, type, date, slot);
			if(sta==true){
				response.sendRedirect("reservation.jsp");
			}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		if(request.getParameter("addresource")!=null){
		String type = request.getParameter("type");
		String name = request.getParameter("reosurcename");
		Resources ab = new Resources();
		boolean sta = ab.addresource(name, type);
		if(sta==true){
			response.sendRedirect("reservation.jsp");
		}
		}
		if(request.getParameter("testdate")!=null){
			String date = request.getParameter("testcal");
			String name = request.getParameter("namer");
			String type = request.getParameter("typer");
			session.setAttribute("resource_date", date);
			session.setAttribute("resource_name", name);
			session.setAttribute("resource_type", type);
			//System.out.println(session.getAttribute("resource_date"));
			//out.println(date+" "+name+" "+type);
			/*Set<String> test1 = new HashSet<String>();
			test1.add("Ravi");
			test1.add("Ramesh");
			test1.add("Pathade");
			Set<String> test2 = new HashSet<String>();
			test2.add("Pathade");
			Collection<String> c=test1;
			for(String str : test1){
				out.println(str);
				
			}
			for(String str : test2){
				out.println(str);
				
			}
			//Set<String> test3 = new HashSet<String>();
			test1.removeAll(test2);
			out.println("After Sub");
			for(String str : test1){
				out.println(str);
				
			}*/
			ResultSet t1=null;
			Resources newtest = new Resources();
			Set<String> test2 = new HashSet<String>();
			
			try {
				t1 = newtest.reserved(name, date, type);
				while(t1.next()){
					String ad = t1.getString("slot");
					test2.add(ad);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Set<String> test1 = new HashSet<String>();
			test1.add("9:00AM-11:00AM");
			test1.add("11:00AM-1:00PM");
			test1.add("1:00PM-3:00PM");
			test1.add("3:00PM-5:00PM");
			test1.add("5:00PM-7:00PM");
			/*for(String str : test1){
				out.println(str);
				
			}
			for(String str : test2){
				out.println(str);
				
			}*/
			out.println("After Removing");
			test1.removeAll(test2);
			session.setAttribute("available", test1);
			session.setAttribute("nota", test2);
			response.sendRedirect("reserve.jsp");
			
		}
		if(request.getParameter("submit_all")!=null){
			String type = request.getParameter("type_res");
			String name = request.getParameter("name_res");
			String date = request.getParameter("date_res");
			String slot = request.getParameter("resource_slot");
			String reserver = (String) session.getAttribute("userid");
			//System.out.println(a+" "+b+" "+c+" "+d);
			Resources ab = new Resources();
			boolean sta = ab.reserve_make(name, type, date, slot,reserver);
			if(sta==true){
				response.sendRedirect("reservation.jsp");
			}
		}
		
	}

}
