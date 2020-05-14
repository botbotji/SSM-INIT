package com.direct.est.dao;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Admin;
import com.direct.est.entity.Greamtype;

public interface GreamtypeDao {

	public List<Greamtype> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Greamtype findById(int id);
	public int delById(int id);
	public int add(Greamtype greamtype);
	public int update(Greamtype greamtype);
	
	public List<Greamtype> getAll();
	
}
