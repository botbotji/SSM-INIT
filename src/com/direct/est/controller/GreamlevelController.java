package com.direct.est.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.direct.est.entity.Greamlevel;
import com.direct.est.entity.Greamtype;
import com.direct.est.entity.PageModel;
import com.direct.est.service.GreamlevelSevice;
import com.direct.est.service.GreamtypeService;

@Controller
@RequestMapping("/GLevel")
public class GreamlevelController{
	
	@Autowired
	private GreamlevelSevice gameLevelService;
	
	@Autowired
	private GreamtypeService gametypeService;
	
	@RequestMapping("/findAll")
	public ModelAndView findAll(String levelname,String descy,Integer greamType_id,PageModel pageModel) {
		ModelAndView modelAndView = new ModelAndView();
		
		//创建参数集合
		Map<String, Object>  map = new HashMap<String, Object>();
		//设置模糊查询条件
		if(levelname != null && !"".equals(levelname)) {
			map.put("levelname","%"+levelname+"%");
		}
		if(descy != null && !"".equals(descy)) {
			map.put("descy","%"+descy+"%");
		}
		if(greamType_id != null && greamType_id>0) {
			map.put("greamType_id",greamType_id);
		}
		
		//查询数据总条数
		int total  = gameLevelService.totalCount(map);
		
		//分页查询
		//设置分页模型数据总条数
		pageModel.setTotal(total);
		//设置分页查询参数
		map.put("currNum", pageModel.getCurrNum());
		map.put("pageSize", pageModel.getPageSize());
		//调用service层
		List<Greamlevel> glevelList =  gameLevelService.findAll(map);
		List<Greamtype> gtypeList =  gametypeService.getAll();

		
		modelAndView.addObject("condition",new Greamlevel(greamType_id!=null?greamType_id:0,levelname,descy));
		modelAndView.addObject("pageModel",pageModel);
		modelAndView.addObject("glevelList",glevelList);
		modelAndView.addObject("gtypeList",gtypeList);
		modelAndView.setViewName("WEB-INF/backstage/glevel_list");
		System.out.println(glevelList.get(0).getLevelname());
		
		return modelAndView;
	}
	
	@RequestMapping("/findById")
	public @ResponseBody Greamlevel findById(int id) {
		
		Greamlevel gameLevel = gameLevelService.findById(id);
		
		return gameLevel;
	}

	@RequestMapping("/delById")
	public @ResponseBody String delById(int id) {
		
		int  num =  gameLevelService.delById(id);
		
		return "{msg:'ok'}";
	}
	
	@RequestMapping("/add")
	public @ResponseBody String add(Greamlevel gameLevel) {
		
		int  num =  gameLevelService.add(gameLevel);
		
		return "{msg:'ok'}";
	}
	@RequestMapping("/update")
	public @ResponseBody String update(Greamlevel gameLevel) {
		
		int  num =  gameLevelService.update(gameLevel);
		
		return "{msg:'ok'}";
	}
	
	
}
