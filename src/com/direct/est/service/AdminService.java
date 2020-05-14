package com.direct.est.service;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Admin;

public interface AdminService {

	
	public List<Admin> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Admin findById(int id);
	public int delById(int id);
	public int add(Admin admin);
	public int update(Admin admin);
	public Admin login(Admin admin);
}
