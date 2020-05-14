package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.GreamtypeDao;
import com.direct.est.entity.Greamtype;
import com.direct.est.service.GreamtypeService;

@Service
public class GreamtypeServiceImpl implements GreamtypeService {

	@Autowired 
	private GreamtypeDao greamtypeDao;
	@Override
	public List<Greamtype> findAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return greamtypeDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return greamtypeDao.totalCount(map);
	}

	@Override
	public Greamtype findById(int id) {
		// TODO Auto-generated method stub
		return greamtypeDao.findById(id);
	}

	@Override
	public int delById(int id) {
		// TODO Auto-generated method stub
		return greamtypeDao.delById(id);
	}

	@Override
	public int add(Greamtype greamtype) {
		// TODO Auto-generated method stub
		return greamtypeDao.add(greamtype);
	}

	@Override
	public int update(Greamtype greamtype) {
		// TODO Auto-generated method stub
		return greamtypeDao.update(greamtype);
	}

	@Override
	public List<Greamtype> getAll() {
		// TODO Auto-generated method stub
		return greamtypeDao.getAll();
	}

}
