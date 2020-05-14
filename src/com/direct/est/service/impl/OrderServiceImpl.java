package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.OrderDao;
import com.direct.est.entity.Order;
import com.direct.est.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDao orderDao;
	@Override
	public List<Order> findAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return orderDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return orderDao.totalCount(map);
	}

	@Override
	public Order findById(int id) {
		// TODO Auto-generated method stub
		return orderDao.findById(id);
	}

	@Override
	public int delById(int id) {
		// TODO Auto-generated method stub
		return orderDao.delById(id);
	}

	@Override
	public int add(Order order) {
		// TODO Auto-generated method stub
		return orderDao.add(order);
	}

	@Override
	public int update(Order order) {
		// TODO Auto-generated method stub
		return orderDao.update(order);
	}

}
