package com.mycompany.model;

public class User {
	private int userid;
	private String username;
	private String email;
	private String password;
	private String type;
	public User() {
		// TODO Auto-generated constructor stub
		super();
	}
	public User(int userid, String username, String email, String password , String type) {
		
		this.userid = userid;
		this.username = username;
		this.email = email;
		this.password = password;
		this.type = type;
		
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	

}
