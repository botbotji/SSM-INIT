package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.EmployeelbelDao;
import com.direct.est.entity.Employeelbel;
import com.direct.est.service.EmployeelbelService;

@Service
public class EmployeelbelServiceImpl implements EmployeelbelService {

	@Autowired
	private EmployeelbelDao employeelbelDao;
	@Override
	public List<Employeelbel> findAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return employeelbelDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return employeelbelDao.totalCount(map);
	}

	@Override
	public Employeelbel findById(int id) {
		// TODO Auto-generated method stub
		return employeelbelDao.findById(id);
	}

	@Override
	public int delById(int id) {
		// TODO Auto-generated method stub
		return employeelbelDao.delById(id);
	}

	@Override
	public int add(Employeelbel employee) {
		// TODO Auto-generated method stub
		return employeelbelDao.add(employee);
	}

	@Override
	public int update(Employeelbel employee) {
		// TODO Auto-generated method stub
		return employeelbelDao.update(employee);
	}

}
