package com.direct.est.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.est.entity.Employee;
import com.direct.est.entity.Greamtype;
import com.direct.est.entity.Menu;
import com.direct.est.entity.User;
import com.direct.est.service.EmployeeService;
import com.direct.est.service.GreamtypeService;
import com.direct.est.service.MenuService;
import com.direct.est.service.UserService;


@Controller
public class indexController {
		
		@Autowired
		GreamtypeService typeService;
		@Autowired
		UserService userService;
		@Autowired
		MenuService menuService;
		@Autowired
		EmployeeService employeeService;
		
		@RequestMapping("/index")
		public ModelAndView index(){
			
			ModelAndView modelAndView = new ModelAndView();  
			
			//查询所有类型
			List<Greamtype>  typeList =  typeService.getAll();
			List<Employee>  employeeList =  employeeService.getAll();
			List<Menu>  menuList =  menuService.getAll();
			//设置数据
			modelAndView.addObject("typeList", typeList);
			modelAndView.addObject("employeeList", employeeList);
			modelAndView.addObject("menuList", menuList);
			System.out.println("--------------------");
			System.out.println(typeList);
			//跳转地址
			modelAndView.setViewName("index");
			
			return modelAndView;
		}
	}
