package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.UserlabelDao;
import com.direct.est.entity.Userlabel;
import com.direct.est.service.UserlabelService;

@Service
public class UserlabelServiceImpl implements UserlabelService {

	@Autowired
	private UserlabelDao userlabelDao;
	@Override
	public List<Userlabel> findAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userlabelDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userlabelDao.totalCount(map);
	}

	@Override
	public Userlabel findById(int id) {
		// TODO Auto-generated method stub
		return userlabelDao.findById(id);
	}

	@Override
	public int delById(int id) {
		// TODO Auto-generated method stub
		return userlabelDao.delById(id);
	}

	@Override
	public int add(Userlabel userlabel) {
		// TODO Auto-generated method stub
		return userlabelDao.update(userlabel);
	}

	@Override
	public int update(Userlabel userlabel) {
		// TODO Auto-generated method stub
		return 0;
	}

}
