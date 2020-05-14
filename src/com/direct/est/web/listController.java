package com.direct.est.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.est.entity.Employee;
import com.direct.est.entity.Greamlevel;
import com.direct.est.entity.Greamtype;
import com.direct.est.entity.Menu;
import com.direct.est.service.EmployeeService;
import com.direct.est.service.GreamlevelSevice;
import com.direct.est.service.GreamtypeService;
import com.direct.est.service.MenuService;


@Controller
public class listController {
	@Autowired
	private GreamtypeService gameTypeService;
	
	@Autowired
	MenuService menuService;
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	GreamlevelSevice glevelService;
	
	@RequestMapping("/list")
	public ModelAndView excute() {
		ModelAndView modelAndView = new ModelAndView();
		
		List<Greamtype> typeList =  gameTypeService.getAll();
		List<Menu>  menuList =  menuService.getAll();
		List<Employee>  employeeList =  employeeService.getAll();
		List<Greamlevel>  levelList =  glevelService.getAll();
		
		modelAndView.addObject("menuList", menuList);
		modelAndView.addObject("typeList",typeList);
		modelAndView.addObject("employeeList", employeeList);
		modelAndView.addObject("levelList", levelList);
		
		modelAndView.setViewName("peiwan_list");
		
		return modelAndView;
	}
}
