package model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Resources {
	
	ResultSet rs= null;
	public boolean addresource(String name, String type){
		boolean ab = false;
		try {
			String query = "INSERT INTO `resources` (`name`, `type`) VALUES ('"+name+"', '"+type+"')";
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
	public boolean delete_res(String user,String name, String type,String date,String slot){
		boolean ab = false;
		try {
			String query = "DELETE FROM `reservation` WHERE `name`='"+name+"' and`date`='"+date+"' and `type`='"+type+"' and`slot`='"+slot+"' and`reserver`='"+user+"'";
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
	public boolean reserve_make(String name, String type,String date,String slot,String reserver){
		boolean ab = false;
		try {
			String query = "INSERT INTO `reservation` (`name`, `date`, `slot`, `type`,`reserver`) VALUES ('"+name+"', '"+date+"', '"+slot+"', '"+type+"', '"+reserver+"')";

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
	public ResultSet resources(String type) throws SQLException {

		try {
			String query = "select * from resources where type='"+type+"'";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet reserved(String name,String date,String type) throws SQLException {

		try {
			String query = "SELECT * FROM reservation where name='"+name+"' and date='"+date+"' and type='"+type+"'";
			System.out.println(query);
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet my_reserved(String netid) throws SQLException {

		try {
			String query = "SELECT * FROM reservation where reserver='"+netid+"'";
			System.out.println(query);
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
