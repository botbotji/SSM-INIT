package com.direct.est.web;

import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.est.entity.Employee;
import com.direct.est.entity.Menu;
import com.direct.est.entity.Order;
import com.direct.est.entity.User;
import com.direct.est.service.EmployeeService;
import com.direct.est.service.MenuService;
import com.direct.est.service.OrderService;
import com.direct.est.service.UserService;

@Controller
public class dingdanController {
		
		
		@Autowired
		EmployeeService employeeService;
		@Autowired
		UserService userService;
		@Autowired
		MenuService menuService;
		@Autowired
		OrderService orderService;
		
		@RequestMapping("/dingdan")
		public ModelAndView index(int id,int num,HttpServletRequest request){
			
			ModelAndView modelAndView = new ModelAndView();  
			
			User u =(User)request.getSession().getAttribute("user1");
			if(u != null) {
				//查询所有类型
				Employee  employee = employeeService.findById(id);
				List<Menu>  menuList = menuService.getAll();
				//设置数据
				Date date = new Date();
				SimpleDateFormat sdf =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				
				String date1 = sdf.format(date);
				Order o = new Order(employee.getId(),u.getId(),date,num,num*employee.getPrice(),"");
				int numb = orderService.add(o);
				System.out.println(o.getId());
			/* modelAndView.addObject("user", user); */
				modelAndView.addObject("employee", employee);
				modelAndView.addObject("menuList", menuList);
				modelAndView.addObject("od",o);
				modelAndView.addObject("num",num);
				modelAndView.addObject("date",date1);
				System.out.println("--------------------");
		
				//跳转地址
				modelAndView.setViewName("order");
				
			}else {
				modelAndView.setViewName("login");
			}
			
			
			return modelAndView;
		}
	}
