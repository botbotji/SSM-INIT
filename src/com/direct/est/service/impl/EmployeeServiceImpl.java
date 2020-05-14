package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.EmployeeDao;
import com.direct.est.entity.Employee;
import com.direct.est.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	private EmployeeDao employeeDao;
	@Override
	public List<Employee> findAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return employeeDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return employeeDao.totalCount(map);
	}

	@Override
	public Employee findById(int id) {
		// TODO Auto-generated method stub
		return employeeDao.findById(id);
	}

	@Override
	public int delById(int id) {
		// TODO Auto-generated method stub
		return employeeDao.delById(id);
	}

	@Override
	public int add(Employee employee) {
		// TODO Auto-generated method stub
		return employeeDao.add(employee);
	}

	@Override
	public int update(Employee employee) {
		// TODO Auto-generated method stub
		return employeeDao.update(employee);
	}

	@Override
	public List<Employee> getAll() {
		// TODO Auto-generated method stub
		return employeeDao.getAll();
	}

}
