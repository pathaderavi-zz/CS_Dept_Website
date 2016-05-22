package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.mysql.fabric.xmlrpc.base.Array;

public class Course {
	public Connection conn = null;
	public Statement st = null;
	public ResultSet rs = null;
	
	
	public boolean addcourse(String id, String name){
		boolean ab = false;
		try {
			String query = "INSERT INTO `term`.`course` (`number`, `name`) VALUES ('"+id+"', '"+name+"')";
			// System.out.println(query);
			DBConnect db = new DBConnect();
			db.st.executeUpdate(query);
			// System.out.println(query);
			ab = true;

		} catch (Exception ex) {
			System.out.println(ex);
		}
		
		
		
		return ab;
	
		
	}
	
	public ResultSet courses_null_num() throws SQLException {

		try {
			String query = "select * from course where instructor is NULL";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");
			

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet courses() throws SQLException {

		try {
			String query = "select * from course where instructor is not NULL";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet courseinfo(String number) throws SQLException {

		try {
			String query = "select * from course where number='"+number+"'";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	
	public boolean addcourse_inst(String number,String instructor){
	
	boolean ab = false;
		try{
			 
					String query = "UPDATE `course` SET `instructor`='"+instructor+"' WHERE `number`='"+number+"'";
					System.out.println(query);
					DBConnect db = new DBConnect();
					db.st.executeUpdate(query);
					// System.out.println(query);
					ab = true;
		}
		catch(Exception ex){
			System.out.println(ex);
		}
		
	return ab;
	}
	public boolean course_info(String number,String desc){
		String a3 = null;
		boolean ab = false;
			try{		
				
			Matcher m = Pattern.compile("[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+").matcher(desc);
		    while (m.find()) {
		        String a1 = m.group();
		        String a2 = "<a href='mailto:"+m.group()+"'>"+m.group()+"</a>";
		     
		        	desc = desc.replace(a1, a2);
		   
		        System.out.println(desc);
		     }
		 	
				 
						String query = "UPDATE `course` SET info=\""+desc+"\" WHERE `number`='"+number+"'";
						System.out.println(query);
						DBConnect db = new DBConnect();
						db.st.executeUpdate(query);
						// System.out.println(query);
						ab = true;
			}
			catch(Exception ex){
				System.out.println(ex);
			}
			
		return ab;
		}
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
