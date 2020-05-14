package com.direct.est.service;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Order;

public interface OrderService {

	public List<Order> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Order findById(int id);
	public int delById(int id);
	public int add(Order order);
	public int update(Order order);
	
}
