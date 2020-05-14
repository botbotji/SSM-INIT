package com.direct.est.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.direct.est.entity.Admin;
import com.direct.est.entity.Appraise;
import com.direct.est.entity.PageModel;
import com.direct.est.service.AdminService;
import com.direct.est.service.AppraiseService;

@Controller
@RequestMapping("/appraise")
public class AppraiseController {
	
	@Autowired
	private AppraiseService appraiseService;
	
	@RequestMapping("/findAll")
	public ModelAndView findAll(String neirong,String dengji,PageModel pageModel) {
		ModelAndView modelAndView = new ModelAndView();
		
		//创建参数集合
		Map<String, Object>  map = new HashMap<String, Object>();
		//设置模糊查询条件
		if(dengji != null && !"".equals(dengji)) {
			map.put("dengji","%"+dengji+"%");
		}
		if(neirong != null && !"".equals(neirong)) {
			map.put("neirong","%"+neirong+"%");
		}
		System.out.println(neirong);
		//查询数据总条数
		int total  = appraiseService.totalCount(map);
		
		//分页查询
		//设置分页模型数据总条数
		pageModel.setTotal(total);
		//设置分页查询参数
		map.put("currNum", pageModel.getCurrNum());
		map.put("pageSize", pageModel.getPageSize());
		//调用service层
		List<Appraise> appraiseList =  appraiseService.findAll(map);
		List<Appraise> appraise =  appraiseService.getAll();
		modelAndView.addObject("condition", new Appraise(neirong,dengji));
		modelAndView.addObject("pageModel",pageModel);
		modelAndView.addObject("appraiseList",appraiseList);
		modelAndView.addObject("appraise",appraise);
		modelAndView.setViewName("WEB-INF/backstage/appraise_list");
		
		
		return modelAndView;
	}
	/*
	 * @responseBody注解的作用是将controller的方法返回的对象通过适当的转换器转换为指定的格式之后，
	   * 写入到response对象的body区，通常用来返回JSON数据或者是XML
       * 数据，需要注意的呢，在使用此注解之后不会再走试图处理器，
       * 而是直接将数据写入到输入流中，他的效果等同于通过response对象输出指定格式的数据。
	 * */
	@RequestMapping("/findById")
	public @ResponseBody Appraise findById(int id) {
		
		Appraise appraise =  appraiseService.findById(id);
		
		return appraise;
	}

	@RequestMapping("/delById")
	public @ResponseBody String delById(int id) {
		
		int  num =  appraiseService.delById(id);
		
		return "{msg:'ok'}";
	}
    /*return admin; 
     * 相当于 == response.getWriter.write(JSONObject.fromObject(admin).toString());
     */
	@RequestMapping("/add")
	public @ResponseBody String add(Appraise appraise) {
		
		int  num =  appraiseService.add(appraise);
		
		return "{msg:'ok'}";
	}
	@RequestMapping("/update")
	public @ResponseBody String update(Appraise appraise) {
		
		int  num =  appraiseService.update(appraise);
		
		return "{msg:'ok'}";
	}	
}
