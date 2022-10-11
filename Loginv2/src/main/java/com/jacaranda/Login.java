package com.jacaranda;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Objects;


/**
 * This class builds the login object
 * @author jose antonio, roman
 * @version 1.0
 */
public class Login {
	private String name;
	private String password;
	private static String passwBD;
	
	public Login(String name, String password) {
		super();
		this.name = name;
		this.password = password;
		passwBD = password;
	}
	
	public Login() {
		
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public static String getPasswBD() {
		return passwBD;
	}

	/**
	 * Check if the login is correct
	 * @return if the user is correct or not
	 */
	public boolean passwordConfirmation() {
		boolean result=false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			PreparedStatement sentencia = cn.prepareStatement("select password, name from USER where password =? and name =?");
			sentencia.setString(1, password);
			sentencia.setString(2, name);
			ResultSet rs = sentencia.executeQuery();
			if(rs.next()) {
				result = true;
			}
			
			rs.close();
		}catch(Exception e){
				System.out.println(e.getMessage());
			}

		return result;
	}
	
	

	@Override
	public int hashCode() {
		return Objects.hash(password);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Login other = (Login) obj;
		return Objects.equals(password, other.password);
	}

	@Override
	public String toString() {
		return "Login [name=" + name + ", password=" + password + "]";
	}
}
