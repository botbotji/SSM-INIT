package com.direct.est.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.est.entity.Employee;
import com.direct.est.entity.Menu;
import com.direct.est.service.EmployeeService;
import com.direct.est.service.MenuService;

@Controller
public class lolController {
		
		
		@Autowired
		EmployeeService employeeService;
		
		@Autowired
		MenuService menuService;
		@RequestMapping("/lol")
		public ModelAndView index(int id){
			
			ModelAndView modelAndView = new ModelAndView();  
			
			//查询所有类型
			
			Employee  employee = employeeService.findById(id);
			List<Menu>  menuList = menuService.getAll();
			
			//设置数据
	
			modelAndView.addObject("employee", employee);
			modelAndView.addObject("menuList", menuList);
			System.out.println("--------------------");
	
			//跳转地址
			modelAndView.setViewName("employee");
			
			return modelAndView;
		}
	}
