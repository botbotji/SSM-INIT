package com.direct.est.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.est.dao.BannerDao;
import com.direct.est.entity.Banner;
import com.direct.est.service.BannerService;


@Service
public class BannerServiceImpl implements BannerService {
	
	@Autowired
	private BannerDao bannerDao;
	
	@Override
	public List<Banner> findAll(Map<String, Object> map) {
		return bannerDao.findAll(map);
	}

	@Override
	public int totalCount(Map<String,Object> map) {
		return bannerDao.totalCount(map);

	}

	@Override
	public Banner findById(int id) {
		return bannerDao.findById(id);
	}

	@Override
	public int delById(int id) {
		return bannerDao.delById(id);
	}

	@Override
	public int add(Banner banner) {
		return bannerDao.add(banner);
	}

	@Override
	public int update(Banner banner) {
		return bannerDao.update(banner);
	}

	@Override
	public int save(Banner banner) {
		// TODO Auto-generated method stub
		return bannerDao.save(banner);
	}
}
