package model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PhDStatusCheck {
	ResultSet rs = null;
	
	public ResultSet phdstatus() throws SQLException {

		try {
			String query = "select * from users where program='PhD'";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	public ResultSet phdstatus_user(String user) throws SQLException {

		try {
			String query = "select * from users where program='PhD' AND netid='"+user+"'";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}
	
public boolean updatesta(String sta,String a){
		
		boolean ab = false;
			try{
				 
						String query = "UPDATE `users` SET `status`='"+sta+"' WHERE `netid`='"+a+"'";

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
