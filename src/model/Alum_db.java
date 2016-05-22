package model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Alum_db {
	ResultSet rs = null;
	
	public boolean add_alumn(String name, String year,String inst, String dept){
		boolean ab = false;
		try {
			String query = "INSERT INTO `alumni` (`name`, `year`, `inst`, `dept`) VALUES ('"+name+"', '"+year+"', '"+inst+"', '"+dept+"')";
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
	public ResultSet alumn_info() throws SQLException {

		try {
			String query = "select * from alumni";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet alumn_info_of(String id) throws SQLException {

		try {
			String query = "select * from alumni where id="+id;
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public boolean Edit(String name, String year,String inst, String dept,String id){
		boolean ab = false;
		
		try {
			String query = "UPDATE `alumni` SET `name`='"+name+"', `year`='"+year+"', `inst`='"+inst+"' WHERE `id`='"+id+"'";

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
	public boolean Edit_my(String name, String year,String inst, String dept,String netid){
		boolean ab = false;
		
		try {
			
			String query = "INSERT INTO `alumni` (`name`, `year`, `inst`, `dept`,`netid`) VALUES ('"+name+"', '"+year+"', '"+inst+"','"+dept+"', '"+netid+"')";
			// System.out.println(query);
			DBConnect db = new DBConnect();
			db.st.executeUpdate(query);
			// System.out.println(query);
			ab = true;

			
			
		} catch (Exception ex) {
			String query = "UPDATE `alumni` SET `name`='"+name+"', `year`='"+year+"', `inst`='"+inst+"' WHERE `netid`='"+netid+"'";

			System.out.println(query);
			DBConnect db = new DBConnect();
			try {
				db.st.executeUpdate(query);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// System.out.println(query);
			ab = true;

		}
		 return ab;

	}
	public boolean delete_alm(String id){
		boolean ab = false;
		try {
			String query = "DELETE FROM `alumni` WHERE `id`='"+id+"'";
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
