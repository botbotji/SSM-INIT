package com.direct.est.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.direct.est.entity.Banner;
import com.direct.est.entity.PageModel;
import com.direct.est.service.BannerService;

@Controller
@RequestMapping("/banner")
public class BannerController {
	
	@Autowired
	private BannerService bannerService;
	
	@RequestMapping("/findAll")
	public ModelAndView findAll(String imgName,String image,Integer menu_id,PageModel pageModel) {
		ModelAndView modelAndView = new ModelAndView();
		
		//创建参数集合
		Map<String, Object>  map = new HashMap<String, Object>();
		//设置模糊查询条件
		if(imgName != null && !"".equals(imgName)) {
			map.put("imgName","%"+imgName+"%");
		}
		if(menu_id != null && !"".equals(menu_id)) {
			map.put("menu_id","%"+menu_id+"%");
		}else {menu_id=0;}
		
		
		//查询数据总条数
		int total  = bannerService.totalCount(map);
		
		//分页查询
		//设置分页模型数据总条数
		pageModel.setTotal(total);
		//设置分页查询参数
		map.put("currNum", pageModel.getCurrNum());
		map.put("pageSize", pageModel.getPageSize());
		//调用service层
		List<Banner> bannerList =  bannerService.findAll(map);
		System.out.println(bannerList+";"+total);
		modelAndView.addObject("condition", new Banner(menu_id,image,imgName));
		modelAndView.addObject("pageModel",pageModel);
		modelAndView.addObject("bannerList",bannerList);
		modelAndView.setViewName("WEB-INF/backstage/banner_list");
		
		
		return modelAndView;
	}
	/*
	 * @responseBody注解的作用是将controller的方法返回的对象通过适当的转换器转换为指定的格式之后，
	   * 写入到response对象的body区，通常用来返回JSON数据或者是XML
       * 数据，需要注意的呢，在使用此注解之后不会再走试图处理器，
       * 而是直接将数据写入到输入流中，他的效果等同于通过response对象输出指定格式的数据。
	 * */
	@RequestMapping("/findById")
	public @ResponseBody Banner findById(int id) {
		
		Banner banner =  bannerService.findById(id);
		System.out.println(banner);
		return banner;
	}

	@RequestMapping("/delById")
	public @ResponseBody String delById(int id) {
		
		int  num =  bannerService.delById(id);
		
		return "{msg:'ok'}";
	}
    /*return admin; 
     * 相当于 == response.getWriter.write(JSONObject.fromObject(admin).toString());
     */
	@RequestMapping("/add")
	public @ResponseBody String add(Banner banner,HttpServletRequest request){
		banner.setImage((String)(request.getSession().getAttribute("file")));
		request.getSession().removeAttribute("file");
		int num =  bannerService.add(banner);
		return "{msg:'ok'}";
	}
	
	@RequestMapping("/save")
	public @ResponseBody String save(MultipartFile file,HttpServletRequest request){
			//获取文件的原名称
			String originalFileName = file.getOriginalFilename();
			//获取文件后缀名
			String suffName = originalFileName.substring(originalFileName.lastIndexOf("."));
			//生成唯一文件名称
			String uniName = UUID.randomUUID().toString().replace("-","");
			//将生成的名称保存到数据库中
			//保存文件
			//获取上传文件夹upload的路径
			String url = request.getSession().getServletContext().getRealPath("/upload");
			
			//创建文件流
			File uploadFile = new File(url);
			
			//判断文件夹是否存在
			if(!uploadFile.exists()){
				//没得就创建
				uploadFile.mkdir();
			}
			//将上传文件保存到upload文件夹中
			try {
				file.transferTo(new File(uploadFile,uniName+suffName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		request.getSession().setAttribute("file", uniName+suffName);
		
		return "{'msg':'ok'}";
	}
	
	@RequestMapping("/update")
	public @ResponseBody String update(Banner banner,HttpServletRequest request){
		banner.setImage((String)(request.getSession().getAttribute("file")));
		request.getSession().removeAttribute("file");
		int  num =  bannerService.update(banner);
		return "{msg:'ok'}";
	}
		
}
