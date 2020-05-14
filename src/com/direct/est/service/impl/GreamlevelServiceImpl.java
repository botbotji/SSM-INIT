package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.GreamlevelDao;
import com.direct.est.entity.Greamlevel;
import com.direct.est.service.GreamlevelSevice;

@Service
public class GreamlevelServiceImpl implements GreamlevelSevice {
	@Autowired
	private GreamlevelDao greamlevelDao;
	@Override
	public List<Greamlevel> findAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return greamlevelDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return greamlevelDao.totalCount(map);
	}

	@Override
	public Greamlevel findById(int id) {
		// TODO Auto-generated method stub
		return greamlevelDao.findById(id);
	}

	@Override
	public int delById(int id) {
		// TODO Auto-generated method stub
		return greamlevelDao.delById(id);
	}

	@Override
	public int add(Greamlevel greamlevel) {
		// TODO Auto-generated method stub
		return greamlevelDao.add(greamlevel);
	}

	@Override
	public int update(Greamlevel greamlevel) {
		// TODO Auto-generated method stub
		return greamlevelDao.update(greamlevel);
	}

	@Override
	public List<Greamlevel> getAll() {
		// TODO Auto-generated method stub
		return greamlevelDao.getAll();
	}
}
