package com.direct.est.dao;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Admin;
import com.direct.est.entity.Employeelbel;

public interface EmployeelbelDao {

	public List<Employeelbel> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Employeelbel findById(int id);
	public int delById(int id);
	public int add(Employeelbel employee);
	public int update(Employeelbel employee);
	
}
