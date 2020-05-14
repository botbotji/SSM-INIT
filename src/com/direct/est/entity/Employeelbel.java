package com.direct.est.entity;
// Generated 2019-12-13 10:36:57 by Hibernate Tools 5.4.7.Final

/**
 * 员工标签
 */
public class Employeelbel implements java.io.Serializable {

	private int id;
	private Employee employee;//标签id
	private Label label; //员工标签id

	public Employeelbel() {
	}

	public Employeelbel(int id) {
		this.id = id;
	}

	public Employeelbel(int id, Employee employee, Label label) {
		this.id = id;
		this.employee = employee;
		this.label = label;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Label getLabel() {
		return this.label;
	}

	public void setLabel(Label label) {
		this.label = label;
	}

}
