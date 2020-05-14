package com.direct.est.dao;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Admin;
import com.direct.est.entity.User;

public interface UserDao {

	public List<User> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public User findById(int id);
	public int delById(int id);
	public int add(User user);
	public int update(User user);
	public List<User> getAll();
	public User login(User user);
}
