package model;

public class Edit {
public boolean Edit(String adv,String email, String phone,String userid){
	boolean ab = false;
	
	try {
		String query = "UPDATE `users` SET `advisor`='"+adv+"', `email`='"+email+"', `phone`='"+phone+"' WHERE `netid`='"+userid+"'";
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
public boolean Edit(String email, String phone,String userid){
	boolean ab = false;
	
	try {
		String query = "UPDATE `users` SET `email`='"+email+"', `phone`='"+phone+"' WHERE `netid`='"+userid+"'";
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
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
