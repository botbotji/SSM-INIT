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
import com.direct.est.entity.Order;
import com.direct.est.entity.PageModel;
import com.direct.est.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
		
		@Autowired
		private OrderService orderService;
		
		@RequestMapping("/findAll")
		public ModelAndView findAll(Integer number,Float money,PageModel pageModel) {
			ModelAndView modelAndView = new ModelAndView();
			
			//创建参数集合
			Map<String, Object>  map = new HashMap<String, Object>();
			//设置模糊查询条件
			if(number != null && !"".equals(number)) {
				map.put("number","%"+number+"%");
			}
			if(money != null && !"".equals(money)) {
				map.put("money","%"+money+"%");
			}
			System.out.println(money);
			//查询数据总条数
			int total  = orderService.totalCount(map);
			
			//分页查询
			//设置分页模型数据总条数
			pageModel.setTotal(total);
			//设置分页查询参数
			map.put("currNum", pageModel.getCurrNum());
			map.put("pageSize", pageModel.getPageSize());
			//调用service层
			List<Order> orderList =  orderService.findAll(map);

			modelAndView.addObject("condition", new Order(number,money));
			modelAndView.addObject("pageModel",pageModel);
			modelAndView.addObject("orderList",orderList);
			modelAndView.setViewName("WEB-INF/backstage/order_list");
			
			
			return modelAndView;
		}
		/*
		 * @responseBody注解的作用是将controller的方法返回的对象通过适当的转换器转换为指定的格式之后，
		   * 写入到response对象的body区，通常用来返回JSON数据或者是XML
	       * 数据，需要注意的呢，在使用此注解之后不会再走试图处理器，
	       * 而是直接将数据写入到输入流中，他的效果等同于通过response对象输出指定格式的数据。
		 * */
		@RequestMapping("/findById")
		public @ResponseBody Order findById(int id) {
			
			Order order =  orderService.findById(id);
			
			return order;
		}

		@RequestMapping("/delById")
		public @ResponseBody String delById(int id) {
			
			int  num =  orderService.delById(id);
			
			return "{msg:'ok'}";
		}
//		return admin; 相当于 == response.getWriter.write(JSONObject.fromObject(admin).toString());
		@RequestMapping("/add")
		public @ResponseBody String add(Order order) {
			
			int  o =  orderService.add(order);
			
			return "{msg:'ok'}";
		}
		@RequestMapping("/update")
		public @ResponseBody String update(Order order) {
			
			int  num =  orderService.update(order);
			
			return "{msg:'ok'}";
		}
}
