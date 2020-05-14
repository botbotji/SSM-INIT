package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.AdminDao;
import com.direct.est.entity.Admin;
import com.direct.est.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<Admin> findAll(Map<String, Object> map) {
		return adminDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String,Object> map) {
		return adminDao.totalCount(map);

	}

	@Override
	public Admin findById(int id) {
		return adminDao.findById(id);
	}

	@Override
	public int delById(int id) {
		return adminDao.delById(id);
	}

	@Override
	public int add(Admin admin) {
		return adminDao.add(admin);
	}

	@Override
	public int update(Admin admin) {
		return adminDao.update(admin);
	}

	@Override
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.login(admin);
	}
}
