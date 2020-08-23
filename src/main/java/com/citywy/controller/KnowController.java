package com.citywy.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.citywy.common.PageHelper.Page;
import com.citywy.entity.TKnow;
import com.citywy.service.TKnowService;
import com.citywy.util.PublicUtil;
/**
 * 
 * @ClassName:  KnowController   
 * @Description:知识类   
 * @author: TaRay 
 * @date:   2019年2月9日 下午7:50:25
 */
@Controller
public class KnowController extends BaseController {
	@Autowired
	private TKnowService tKnowService;
	
	@RequestMapping(value={"/know","/know/"})
	public String list(){
		//获取头部信息
		super.getHeader();
		String uri = getRequest().getRequestURI();
		System.out.println(uri);
		if(!uri.endsWith("/")){
			getResponse().setStatus(301);
			getResponse().setHeader("Location", "//www.citywy.com"+uri+"/");
			return null;
		}
		return getList(1);
	}
	
	@RequestMapping("/know/p{pageindex:\\d+}")
	public String fylist(@PathVariable int pageindex) throws Exception{
		//获取头部信息
		super.getHeader();
		if(pageindex<=1 || !getRequest().getRequestURI().endsWith(".htm")){
			getResponse().sendError(404);
			return null;
		}
		return getList(pageindex);
	}
	
	public String getList(int pageIndex){
		TKnow tKnow = new TKnow();
		Page<TKnow> page = tKnowService.findAllByUpvote(tKnow, pageIndex, 10);
		System.out.println("总页数："+page.getPages()+"--总条数："+page.getTotal()+"--当前页："+pageIndex+"--当前页："+page.getPageNum());
		super.getRequest().setAttribute("page", page);
		super.getRequest().setAttribute("url", "/know/");
		return "/know";
	}
	
}
