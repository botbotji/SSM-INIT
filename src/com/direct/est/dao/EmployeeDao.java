package com.direct.est.dao;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Admin;
import com.direct.est.entity.Employee;

public interface EmployeeDao {

	public List<Employee> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Employee findById(int id);
	public int delById(int id);
	public int add(Employee employee);
	public int update(Employee employee);
	
	public List<Employee> getAll();
}
