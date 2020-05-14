package com.direct.est.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
public class loginController {

	@Autowired
	GreamtypeService typeService;
	@Autowired
	UserService userService;
	@Autowired
	MenuService menuService;
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping("/login")
	public @ResponseBody ModelAndView login(User user,HttpServletRequest request,HttpServletResponse response){
		
		ModelAndView modelAndView = new ModelAndView();
		
		/*
		 * String username = request.getParameter("username"); 
		 * String password =
		 * request.getParameter("password");
		 */
		//查询所有类型
		User u = userService.login(user);
		List<Greamtype>  typeList =  typeService.getAll();
		List<Employee>  employeeList =  employeeService.getAll();
		List<Menu>  menuList =  menuService.getAll();
		/*"u.username".equals(user.getUsername()) && ".password"u.equals(user.getPassword())*/
		//设置数据
		modelAndView.addObject("typeList", typeList);
		modelAndView.addObject("employeeList", employeeList);
		modelAndView.addObject("menuList", menuList);
		System.out.println(u.getNickname());
		if(u != null){//判断用户是否登录成功
			System.out.println(u.getNickname());
		request.getSession().setAttribute("user1",u);
			//跳转地址
			modelAndView.setViewName("index");
		}else {
			modelAndView.setViewName("login.jsp");
			/*
			 * try { response.sendRedirect("login.jsp"); } catch (IOException e) { // TODO
			 * Auto-generated catch block e.printStackTrace(); }
			 */
		}
	
		return modelAndView;
	}
	
	
	@RequestMapping("/register")
	public @ResponseBody ModelAndView add(User user) {
		ModelAndView modelAndView = new ModelAndView();
		int  num =  userService.add(user);
		modelAndView.setViewName("login");
		return modelAndView;
	}
	@RequestMapping("/logout")
	public @ResponseBody ModelAndView logou(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		request.getSession().removeAttribute("user1");
		modelAndView.setViewName("index");
		return modelAndView;
	}
}
