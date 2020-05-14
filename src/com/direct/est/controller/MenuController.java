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
import com.direct.est.entity.Menu;
import com.direct.est.entity.PageModel;
import com.direct.est.service.MenuService;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("/findAll")
	public ModelAndView findAll(String menuName,PageModel pageModel) {
		ModelAndView modelAndView = new ModelAndView();
		
		//创建参数集合
		Map<String, Object>  map = new HashMap<String, Object>();
		//设置模糊查询条件
		if(menuName != null && !"".equals(menuName)) {
			map.put("MenuName","%"+menuName+"%");
		}
		
		//查询数据总条数
		int total  = menuService.totalCount(map);
		
		//分页查询
		//设置分页模型数据总条数
		pageModel.setTotal(total);
		//设置分页查询参数
		map.put("currNum", pageModel.getCurrNum());
		map.put("pageSize", pageModel.getPageSize());
		//调用service层
		List<Menu> menuList =  menuService.findAll(map);

		modelAndView.addObject("condition", new Menu(menuName));
		modelAndView.addObject("pageModel",pageModel);
		modelAndView.addObject("menuList",menuList);
		modelAndView.setViewName("WEB-INF/backstage/menu_list");
		
		
		return modelAndView;
	}
	
	@RequestMapping("/getAll")
	public @ResponseBody List<Menu> getAll() {
	
		List<Menu> menuList =  menuService.getAll();
		
		return menuList;
	}
	/*
	 * @responseBody注解的作用是将controller的方法返回的对象通过适当的转换器转换为指定的格式之后，
	   * 写入到response对象的body区，通常用来返回JSON数据或者是XML
       * 数据，需要注意的呢，在使用此注解之后不会再走试图处理器，
       * 而是直接将数据写入到输入流中，他的效果等同于通过response对象输出指定格式的数据。
	 * */
	@RequestMapping("/findById")
	public @ResponseBody Menu findById(int id) {
		
		Menu menu =  menuService.findById(id);
		
		return menu;
	}

	@RequestMapping("/delById")
	public @ResponseBody String delById(int id) {
		
		int  num =  menuService.delById(id);
		
		return "{msg:'ok'}";
	}
    /*return admin; 
     * 相当于 == response.getWriter.write(JSONObject.fromObject(admin).toString());
     */
	@RequestMapping("/add")
	public @ResponseBody String add(Menu menu) {
		
		int  num =  menuService.add(menu);
		
		return "{msg:'ok'}";
	}
	@RequestMapping("/update")
	public @ResponseBody String update(Menu menu) {
		
		int  num =  menuService.update(menu);
		
		return "{msg:'ok'}";
	}
	

	
}
