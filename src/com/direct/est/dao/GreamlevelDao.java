package com.direct.est.dao;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Admin;
import com.direct.est.entity.Greamlevel;

public interface GreamlevelDao {

	public List<Greamlevel> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Greamlevel findById(int id);
	public int delById(int id);
	public int add(Greamlevel greamlevel);
	public int update(Greamlevel greamlevel);
	
	public List<Greamlevel> getAll();
}
