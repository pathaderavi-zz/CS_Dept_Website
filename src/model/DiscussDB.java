package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class DiscussDB {
ResultSet rs = null;
	
	public boolean add_thread(String name,String id){
		boolean ab = false;
		try {
			String query = "INSERT INTO `discuss` (`content`,`by`) VALUES ('"+name+"','"+id+"')";
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
	public boolean add_reply(String content,String name,String id){
		boolean ab = false;
		try {
			String query = "INSERT INTO `discuss` (`content`, `parent`, `by`) VALUES ('"+content+"', '"+id+"', '"+name+"')";
;
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
	public ResultSet thread_title() throws SQLException {

		try {
			String query = "select * from discuss where parent is NULL";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");
			

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet thread_titles(String id) throws SQLException {

		try {
			String query = "select * from discuss where id="+id;
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");
			

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet thread_parent(String id) throws SQLException {

		try {
			String query = "select id from discuss where parent="+id;
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");
			

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet thread_comments(String id) throws SQLException {

		try {
			String query = "select * from discuss where parent="+id;
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");
			

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public void thread_t(String id) throws SQLException {
		
		DiscussDB ax = new DiscussDB(); 
		
		ResultSet ab = ax.thread_titles(id);
		while(ab.next()){
			System.out.println(""+ab.getString("content")+" <br>by "+ab.getString("by")+" at "+ab.getString("date"));
			String ids = ab.getString("id");
			ResultSet a1 = ax.thread_parent(ids);
			if(a1!=null){
				while(a1.next()){
					ax.thread_t(a1.getString("id"));
				}
			}
		}
		
	}
	public boolean delete_thread(String id){
		boolean ab = false;
		try {
			String query = "DELETE FROM `discuss` WHERE `id`='"+id+"'";
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
	

	public static void main(String[] args) throws SQLException {
		DiscussDB ax = new DiscussDB(); 
		
		ax.thread_t("3");

	}

}
