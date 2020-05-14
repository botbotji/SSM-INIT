package com.direct.est.service;

import java.util.List;
import java.util.Map;

import aj.org.objectweb.asm.Label;

public interface LabelService {

	public List<Label> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Label findById(int id);
	public int delById(int id);
	public int add(Label label);
	public int update(Label label);
	
}
