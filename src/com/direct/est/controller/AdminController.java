package com.direct.est.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.direct.est.entity.Admin;
import com.direct.est.entity.PageModel;
import com.direct.est.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/findAll")
	public ModelAndView findAll(String username,String descy,PageModel pageModel) {
		ModelAndView modelAndView = new ModelAndView();
		
		//创建参数集合
		Map<String, Object>  map = new HashMap<String, Object>();
		//设置模糊查询条件
		if(username != null && !"".equals(username)) {
			map.put("username","%"+username+"%");
		}
		if(descy != null && !"".equals(descy)) {
			map.put("descy","%"+descy+"%");
		}
		
		//查询数据总条数
		int total  = adminService.totalCount(map);
		
		//分页查询
		//设置分页模型数据总条数
		pageModel.setTotal(total);
		//设置分页查询参数
		map.put("currNum", pageModel.getCurrNum());
		map.put("pageSize", pageModel.getPageSize());
		//调用service层
		List<Admin> adminList =  adminService.findAll(map);

		modelAndView.addObject("condition", new Admin(username,descy));
		modelAndView.addObject("pageModel",pageModel);
		modelAndView.addObject("adminList",adminList);
		modelAndView.setViewName("WEB-INF/backstage/admin_list");
		
		
		return modelAndView;
	}
	/*
	 * @responseBody注解的作用是将controller的方法返回的对象通过适当的转换器转换为指定的格式之后，
	   * 写入到response对象的body区，通常用来返回JSON数据或者是XML
       * 数据，需要注意的呢，在使用此注解之后不会再走试图处理器，
       * 而是直接将数据写入到输入流中，他的效果等同于通过response对象输出指定格式的数据。
	 * */
	@RequestMapping("/findById")
	public @ResponseBody Admin findById(int id) {
		
		Admin admin =  adminService.findById(id);
		
		return admin;
	}

	@RequestMapping("/delById")
	public @ResponseBody String delById(int id) {
		
		int  num =  adminService.delById(id);
		
		return "{msg:'ok'}";
	}
    /*return admin; 
     * 相当于 == response.getWriter.write(JSONObject.fromObject(admin).toString());
     */
	@RequestMapping("/add")
	public @ResponseBody String add(Admin admin) {
		
		int  num =  adminService.add(admin);
		
		return "{msg:'ok'}";
	}
	@RequestMapping("/update")
	public @ResponseBody String update(Admin admin) {
		
		int  num =  adminService.update(admin);
		
		return "{msg:'ok'}";
	}

	@RequestMapping("/index")
	public  String index() {
		return "WEB-INF/backstage/index";
	}
	
	@RequestMapping("login")
	public String login(Admin admin, HttpServletRequest request){
		String url = null;
		//访问service层获取用户昵称
		Admin ad = adminService.login(admin);
		if(ad!=null){//判断用户是否登录成功
			request.getSession().setAttribute("ad", ad);
			url="WEB-INF/backstage/index";
		}
		return url;
	}
	
}
