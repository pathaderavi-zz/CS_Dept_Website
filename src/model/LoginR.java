package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginR {
	public Connection conn = null;
	public Statement st = null;
	public ResultSet rs = null;

	public void LoginR(String id, String pass, String fname, String lname,
			String role, String year, String program, String major) {
		boolean ab = false;
		try {
			String query = "INSERT INTO `users` (`netid`, `password`, `fname`, `lname`, `role`, `year`, `program`, `major`)  VALUES ('"
					+ id
					+ "', '"
					+ pass
					+ "', '"
					+ fname
					+ "', '"
					+ lname
					+ "', '"
					+ role
					+ "', '"
					+ year
					+ "', '"
					+ program
					+ "', '"
					+ major + "')";
			// System.out.println(query);
			DBConnect db = new DBConnect();
			db.st.executeUpdate(query);
			// System.out.println(query);
			ab = true;

		} catch (Exception ex) {
			System.out.println(ex);
		}
		// return ab;

	}
	public void LoginR(String id, String pass, String fname, String lname,
			String role) {
		boolean ab = false;
		try {
			String query = "INSERT INTO `users` (`netid`, `password`, `fname`, `lname`, `role`)  VALUES ('"
					+ id
					+ "', '"
					+ pass
					+ "', '"
					+ fname
					+ "', '"
					+ lname
					+ "', '"
					+ role
					+ "')";
			// System.out.println(query);
			DBConnect db = new DBConnect();
			db.st.executeUpdate(query);
			// System.out.println(query);
			ab = true;

		} catch (Exception ex) {
			System.out.println(ex);
		}
		// return ab;

	}

	public boolean login(String net, String pas) throws SQLException {
		boolean a = false;

		try {
			String query = "select * from users where netid='" + net
					+ "' AND password='" + pas + "'";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}
		if (rs.first()) {
			a = true;

		}

		return a;
	}

	public ResultSet cred(String net) throws SQLException {

		try {
			String query = "select * from users where netid='" + net + "'";
			DBConnect db = new DBConnect();
			rs = db.st.executeQuery(query);
			// System.out.println("1");

		} catch (Exception ex) {
			System.out.println(ex);
		}

		return rs;
	}

	public String netid(String net) throws SQLException {
		String net1 = null;
		rs = cred(net);

		while (rs.next()) {
			net1 = rs.getString("netid");
		}

		return net1;
	}

	public String fname(String fname) throws SQLException {
		String net1 = null;
		rs = cred(fname);

		while (rs.next()) {
			net1 = rs.getString("fname");
		}

		return net1;
	}

	public String lname(String lname) throws SQLException {
		String net1 = null;
		rs = cred(lname);

		while (rs.next()) {
			net1 = rs.getString("lname");
		}

		return net1;
	}

	public String role(String net) throws SQLException {
		String net1 = null;
		rs = cred(net);

		while (rs.next()) {
			net1 = rs.getString("role");
		}

		return net1;
	}

	public String year(String net) throws SQLException {
		String net1 = null;
		rs = cred(net);

		while (rs.next()) {
			net1 = rs.getString("year");
		}

		return net1;
	}

	public String program(String net) throws SQLException {
		String net1 = null;
		rs = cred(net);

		while (rs.next()) {
			net1 = rs.getString("program");
		}

		return net1;
	}

	public String major(String net) throws SQLException {
		String net1 = null;
		rs = cred(net);

		while (rs.next()) {
			net1 = rs.getString("major");
		}

		return net1;
	}
	public String advisor(String net) throws SQLException {
		String net1 = null;
		rs = cred(net);

		while (rs.next()) {
			net1 = rs.getString("advisor");
		}

		return net1;
	}
	public String email(String net) throws SQLException {
		String net1 = null;
		rs = cred(net);

		while (rs.next()) {
			net1 = rs.getString("email");
		}

		return net1;
	}
	public String phone(String net) throws SQLException {
		String net1 = null;
		rs = cred(net);

		while (rs.next()) {
			net1 = rs.getString("phone");
		}

		return net1;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
