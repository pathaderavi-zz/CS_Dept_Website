package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ExamDB {
	public Connection conn = null;
	public Statement st = null;
	public ResultSet rs = null;

	
	public boolean add_exam(String name, String details, String date){
		boolean ab = false;
		try {
			String query = "INSERT INTO `term`.`exam` (`name`, `date`, `desc`) VALUES ('"+name+"', '"+date+"', '"+details+"')";
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

	public boolean stud_exam(String id, String netid, String fullname, String exam){
		boolean ab = false;
		try {
			String query = "INSERT INTO `stud_exam` (`netid`, `fullname`, `examid`, `examname`) VALUES ('"+netid+"', '"+fullname+"', '"+id+"', '"+exam+"')";
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
	public ResultSet all_exams() throws SQLException {

		try {
			String query = "select * from exam";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet exam(String id) throws SQLException {

		try {
			String query = "select * from exam where id="+id;
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet result(String id) throws SQLException {

		try {
			String query = "select * from exam where id="+id;
			System.out.println(query);
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet check_exam(String id,String netid) throws SQLException {

		try {
			String query = "select * from stud_exam where examid="+id+" and netid='"+netid+"'";
			System.out.println(query);
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet my_exams(String netid) throws SQLException {

		try {
			String query = "select * from stud_exam where netid='"+netid+"'";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public boolean Edit(String details, String name, String date,String id){
		boolean ab = false;
		
		try {
			String query = "UPDATE `exam` SET `name`='"+name+"', `date`='"+date+"', `desc`='"+details+"' WHERE `id`='"+id+"'";

			System.out.println(query);
			DBConnect db = new DBConnect();
			db.st.executeUpdate(query);
			// System.out.println(query);
			ab = true;

		} catch (Exception ex) {
			System.out.println(ex);
		}
		 return ab;

	}
	public boolean add_result(String result,String id){
		boolean ab = false;
		
		try {
			String query = "UPDATE `exam` SET `result`='"+result+"'  WHERE `id`='"+id+"'";

			System.out.println(query);
			DBConnect db = new DBConnect();
			db.st.executeUpdate(query);
			// System.out.println(query);
			ab = true;

		} catch (Exception ex) {
			System.out.println(ex);
		}
		 return ab;

	}
	public boolean delete_exam(String id){
		boolean ab = false;
		try {
			String query = "DELETE FROM `exam` WHERE `id`='"+id+"'";
			System.out.println(query);
			DBConnect db = new DBConnect();
			db.st.executeUpdate(query);
			// System.out.println(query);
			ab = true;

		} catch (Exception ex) {
			System.out.println(ex);
		}
		
		
		
		return ab;
	
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
