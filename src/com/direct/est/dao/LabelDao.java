package com.direct.est.dao;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Admin;

import aj.org.objectweb.asm.Label;

public interface LabelDao {

	public List<Label> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Label findById(int id);
	public int delById(int id);
	public int add(Label label);
	public int update(Label label);
	
}
