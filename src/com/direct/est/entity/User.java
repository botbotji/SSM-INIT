package com.direct.est.entity;
// Generated 2019-12-13 10:36:57 by Hibernate Tools 5.4.7.Final

import java.util.HashSet;
import java.util.Set;

/**
 * 用户
 * User generated by hbm2java
 */
public class User implements java.io.Serializable {

	private int id;
	private String nickname;
	private String phone;
	private String sex;
	private String qq;
	private String career;
	private String descy;
	private String username;
	private String password;
	
	private Set userlabels = new HashSet(0);
	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	private Set orders = new HashSet(0);

	public User() {
	}
	
	
	public User(String nickname, String sex, String descy) {
		super();
		this.nickname = nickname;
		this.sex = sex;
		this.descy = descy;
	}


	public User(int id) {
		this.id = id;
	}
	
	
	public User(int id, String nickname, String phone, String sex, String qq, String career, String descy,
			Set userlabels, Set orders) {
		this.id = id;
		this.nickname = nickname;
		this.phone = phone;
		this.sex = sex;
		this.qq = qq;
		this.career = career;
		this.descy = descy;
		this.userlabels = userlabels;
		this.orders = orders;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getQq() {
		return this.qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getCareer() {
		return this.career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getDescy() {
		return this.descy;
	}

	public void setDescy(String descy) {
		this.descy = descy;
	}

	public Set getUserlabels() {
		return this.userlabels;
	}

	public void setUserlabels(Set userlabels) {
		this.userlabels = userlabels;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}