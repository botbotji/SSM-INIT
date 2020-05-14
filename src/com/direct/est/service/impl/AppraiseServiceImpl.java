package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.AppraiseDao;
import com.direct.est.entity.Appraise;
import com.direct.est.service.AppraiseService;

@Service
public class AppraiseServiceImpl implements AppraiseService {
	
	@Autowired
	private AppraiseDao appraiseDao;
	
	@Override
	public List<Appraise> findAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return appraiseDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return appraiseDao.totalCount(map);
	}

	@Override
	public Appraise findById(int id) {
		// TODO Auto-generated method stub
		return appraiseDao.findById(id);
	}

	@Override
	public int delById(int id) {
		// TODO Auto-generated method stub
		return appraiseDao.delById(id);
	}

	@Override
	public int add(Appraise appraise) {
		// TODO Auto-generated method stub
		return appraiseDao.add(appraise);
	}

	@Override
	public int update(Appraise appraise) {
		// TODO Auto-generated method stub
		return appraiseDao.update(appraise);
	}

	@Override
	public List<Appraise> getAll() {
		// TODO Auto-generated method stub
		return appraiseDao.getAll();
	}

}
