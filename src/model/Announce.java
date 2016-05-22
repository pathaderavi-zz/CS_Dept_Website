package model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Announce {
	ResultSet rs = null;
	public boolean ann_create(String type, String content, String title, String userid) {
		boolean ab = false;
		try {
			String query = "INSERT INTO `announcements` (`title`, `type`, `content`, `by`) VALUES ('"+title+"', '"+type+"', '"+content+"', '"+userid+"')";

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
	public boolean job_create(String type, String content, String title, String userid) {
		boolean ab = false;
		try {
			String query = "INSERT INTO `jobs` (`title`, `link`, `content`, `by`) VALUES ('"+title+"', '"+type+"', '"+content+"', '"+userid+"')";

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
	public ResultSet all_annc() throws SQLException {

		try {
			String query = "select * from announcements";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet all_jobs() throws SQLException {

		try {
			String query = "select * from jobs";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet annc_info(String id) throws SQLException {

		try {
			String query = "select * from announcements where id="+id;
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet job_info(String id) throws SQLException {

		try {
			String query = "select * from jobs where id="+id;
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public boolean delete_ann(String id){
		boolean ab = false;
		try {
			String query = "DELETE FROM `announcements` WHERE `id`='"+id+"'";
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
	public boolean delete_job(String id){
		boolean ab = false;
		try {
			String query = "DELETE FROM `jobs` WHERE `id`='"+id+"'";
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
