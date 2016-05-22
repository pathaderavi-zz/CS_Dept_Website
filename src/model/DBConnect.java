package model;

import java.sql.*;

public class DBConnect {

	
	
	public Connection conn = null;
	public Statement st = null;
	public ResultSet rs = null;
	
	public DBConnect(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/term?useSSL=false","root","root");
			//System.out.println("1");
			
			st = conn.createStatement();	
		}
		catch(Exception ex){
			System.out.println(ex);
		}
	}
	
	/*public void getdata(){
		try{
			String query = "select * from seller";
			rs = st.executeQuery(query);
			System.out.println("----Records-----");
			while(rs.next()){
				String name = rs.getString("fname");
				System.out.println(name);
				
			}
		}
		catch(Exception ex){
			System.out.println(ex); 
		}
		
		
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DBConnect db = new DBConnect();
		db.getdata();

	}*/

}
