package com.direct.est.dao;

import java.util.List;
import java.util.Map;

import com.direct.est.entity.Banner;

public interface BannerDao {

	public List<Banner> findAll(Map<String,Object> map);
	public int totalCount(Map<String,Object> map);
	public Banner findById(int id);
	public int delById(int id);
	public int add(Banner banner);
	public int update(Banner banner);
	
	//保存图片
	public int save(Banner banner);
}
