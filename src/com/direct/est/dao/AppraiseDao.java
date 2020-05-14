package com.direct.est.dao;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Admin;
import com.direct.est.entity.Appraise;

public interface AppraiseDao {

	public List<Appraise> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Appraise findById(int id);
	public int delById(int id);
	public int add(Appraise appraise);
	public int update(Appraise appraise);
	public List<Appraise> getAll();
	
}
