package com.direct.est.entity;
// Generated 2019-12-13 10:36:57 by Hibernate Tools 5.4.7.Final

/**
 * Admin generated by hbm2java
 */
public class Admin implements java.io.Serializable {

	private int id;
	private String username;
	private String password;
	private String descy;

	public Admin() {
	}

	public Admin(int id) {
		this.id = id;
	}
	
	
	public Admin(String username, String descy) {
		super();
		this.username = username;
		this.descy = descy;
	}

	public Admin(int id, String username, String password, String descy) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.descy = descy;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDescy() {
		return this.descy;
	}

	public void setDescy(String descy) {
		this.descy = descy;
	}

}
