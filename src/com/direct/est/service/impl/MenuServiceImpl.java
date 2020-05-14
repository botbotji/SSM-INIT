package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.MenuDao;
import com.direct.est.entity.Menu;
import com.direct.est.service.MenuService;



@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuDao menuDao;

	@Override
	public List<Menu> findAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return menuDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return menuDao.totalCount(map);
	}

	@Override
	public Menu findById(int id) {
		// TODO Auto-generated method stub
		return menuDao.findById(id);
	}

	@Override
	public int delById(int id) {
		// TODO Auto-generated method stub
		return menuDao.delById(id);
	}

	@Override
	public int add(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.add(menu);
	}

	@Override
	public int update(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.update(menu);
	}

	@Override
	public List<Menu> getAll() {
		// TODO Auto-generated method stub
		return menuDao.getAll();
	}
	
	
}
