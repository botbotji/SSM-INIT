package com.direct.est.service;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Menu;




public interface MenuService {

	
	public List<Menu> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Menu findById(int id);
	public int delById(int id);
	public int add(Menu menu);
	public int update(Menu menu);
	public List<Menu> getAll();
}
