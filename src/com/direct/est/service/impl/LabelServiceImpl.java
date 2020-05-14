package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.LabelDao;
import com.direct.est.service.LabelService;

import aj.org.objectweb.asm.Label;

@Service
public class LabelServiceImpl implements LabelService {
	@Autowired
	private LabelDao labelDao;
	@Override
	public List<Label> findAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return labelDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return labelDao.totalCount(map);
	}

	@Override
	public Label findById(int id) {
		// TODO Auto-generated method stub
		return labelDao.findById(id);
	}

	@Override
	public int delById(int id) {
		// TODO Auto-generated method stub
		return labelDao.delById(id);
	}

	@Override
	public int add(Label label) {
		// TODO Auto-generated method stub
		return labelDao.add(label);
	}

	@Override
	public int update(Label label) {
		// TODO Auto-generated method stub
		return labelDao.update(label);
	}

}
