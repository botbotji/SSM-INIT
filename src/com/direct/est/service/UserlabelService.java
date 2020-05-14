package com.direct.est.service;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Userlabel;

public interface UserlabelService {

	public List<Userlabel> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Userlabel findById(int id);
	public int delById(int id);
	public int add(Userlabel userlabel);
	public int update(Userlabel userlabel);
	
}
