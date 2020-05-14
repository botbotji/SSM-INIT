package com.direct.est.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.direct.est.entity.Greamtype;
import com.direct.est.entity.PageModel;
import com.direct.est.service.GreamtypeService;

@Controller
@RequestMapping("/GType")
public class GreamtypeController {
	
	@Autowired
	private GreamtypeService gameTypeService;
	
	@RequestMapping("/findAll")
	public ModelAndView findAll(String greamName,String descy,PageModel pageModel) {
		ModelAndView modelAndView = new ModelAndView();
		
		//创建参数集合
		Map<String, Object>  map = new HashMap<String, Object>();
		//设置模糊查询条件
		if(greamName != null && !"".equals(greamName)) {
			map.put("greamName","%"+greamName+"%");
		}
		if(descy != null && !"".equals(descy)) {
			map.put("descy","%"+descy+"%");
		}
		
		//查询数据总条数
		int total  = gameTypeService.totalCount(map);
		
		//分页查询
		//设置分页模型数据总条数
		pageModel.setTotal(total);
		//设置分页查询参数
		map.put("currNum", pageModel.getCurrNum());
		map.put("pageSize", pageModel.getPageSize());
		//调用service层
		List<Greamtype> gtypeList =  gameTypeService.findAll(map);

		modelAndView.addObject("condition", new Greamtype(greamName,descy));
		modelAndView.addObject("pageModel",pageModel);
		modelAndView.addObject("gtypeList",gtypeList);
		modelAndView.setViewName("WEB-INF/backstage/gtype_list");
		
		
		return modelAndView;
	}
	
	@RequestMapping("/getAll")
	public @ResponseBody List<Greamtype> getAll(String greamName,String descy,PageModel pageModel) {
	
		List<Greamtype> gtypeList =  gameTypeService.getAll();
		
		return gtypeList;
	}
	
	@RequestMapping("/findById")
	public @ResponseBody Greamtype findById(int id) {
		
		Greamtype gameType = gameTypeService.findById(id);
		
		return gameType;
	}

	@RequestMapping("/delById")
	public @ResponseBody String delById(int id) {
		
		int  num =  gameTypeService.delById(id);
		
		return "{msg:'ok'}";
	}
	
	@RequestMapping("/add")
	public @ResponseBody String add(Greamtype gameType) {
		
		int  num =  gameTypeService.add(gameType);
		
		return "{msg:'ok'}";
	}
	@RequestMapping("/update")
	public @ResponseBody String update(Greamtype gameType) {
		
		int  num =  gameTypeService.update(gameType);
		
		return "{msg:'ok'}";
	}
	
	
}
