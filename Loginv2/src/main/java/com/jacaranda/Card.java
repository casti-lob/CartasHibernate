package com.jacaranda;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * This class builds the card object
 * @author jose antonio, roman
 * @version 1.0
 */
public class Card {
	private String password;
	private int code;
	private String name;
	private double price;
	private String acquisition ;
	private boolean active;
	
	
	public Card(String password) {
		super();
		this.password = password;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getAcquisition() {
		return acquisition;
	}

	public void setAcquisition(String acquisition) {
		this.acquisition = acquisition;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean getActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
	
	/**
	 * Add a card to the deck of cards
	 * @param name
	 * @param cost
	 * @param active
	 * @return If the letter has been added or not
	 */
	public boolean addCard(String name,double cost, boolean active) {
		boolean add=false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			PreparedStatement sentencia = cn.prepareStatement("INSERT INTO CARD(password,name,price,acquisition,deck_cards) VALUES(?,?,?,NOW(),?)");
			sentencia.setString(1, this.password);
			sentencia.setString(2, name);
			sentencia.setDouble(3, cost);
			sentencia.setBoolean(4, active);
			sentencia.executeUpdate();
			add = true;
		}catch(Exception e){
				System.out.println(e.getMessage());
			}
		return add;
	}
	
	/**
	 * Shows the list of cards in each user's deck
	 * @return the list of cards in the user's deck
	 */
	public List<Card> showCard(){
		List<Card> registro = new ArrayList<Card>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			PreparedStatement sentencia = cn.prepareStatement("SELECT * FROM CARD where password =?");
			sentencia.setString(1, password);
			
			ResultSet rs = sentencia.executeQuery();
			
			while(rs.next()) {
				Card c = new Card(null);
				c.setPassword(rs.getString("password"));
				c.setCode(rs.getInt("code"));
				c.setName(rs.getString("name"));
				c.setPrice(rs.getDouble("price"));
				c.setAcquisition(rs.getString("acquisition"));
				c.setActive(rs.getBoolean("deck_cards"));
				registro.add(c);	
			}
			
			rs.close();
		}catch(Exception e){
				System.out.println(e.getMessage());
			}
		return registro;
		
		
	}
	
	/**
	 * Modifies the active of a card from each user's deck
	 * @param code
	 * @return If the letter has been modified or not
	 */
	public boolean setCard(int code) {
		boolean set = false;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			
			PreparedStatement sentencia1 = cn.prepareStatement("SELECT deck_cards FROM CARD where code =?");
			sentencia1.setInt(1, code);
			ResultSet rs = sentencia1.executeQuery();
			rs.next();
			if(!rs.getBoolean("deck_cards")) {
				 set = true;
			}
			
			PreparedStatement sentencia = cn.prepareStatement("UPDATE CARD SET deck_cards = ? WHERE code = ?;");
			sentencia.setBoolean(1, set);
			sentencia.setInt(2, code);
			
			sentencia.executeUpdate();
			
		}catch(Exception e){
				System.out.println(e.getMessage());
			}
		return set;
	}
	
	/**
	 * Delete a card from each user's deck.
	 * @param code
	 * @return If the letter has been deleted or not
	 */
	public boolean deleteCard(int code) {
		boolean delete = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			PreparedStatement sentencia = cn.prepareStatement("DELETE FROM CARD WHERE code = ?");
			sentencia.setInt(1, code);
			
			sentencia.executeUpdate();
			
			PreparedStatement sentencia2 = cn.prepareStatement("select code from CARD where code =?");
			sentencia2.setInt(1, code);
			
			ResultSet rs = sentencia.executeQuery();
			if(!rs.next()) {
				delete = true;
			}	
			
			cn.close();
		}catch(Exception e){
				System.out.println(e.getMessage());
			}

		return delete;
	
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
		Card other = (Card) obj;
		return Objects.equals(password, other.password);
	}

	@Override
	public String toString() {
		return "CARDS [password=" + password + ", name=" + name + ", price=" + price + ", acquisition=" + acquisition
				+ ", active=" + active + "]";
	}
	
	
	
	
}
