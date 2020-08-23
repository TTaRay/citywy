package com.citywy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController extends BaseController{
	@RequestMapping(value="/")
	public ModelAndView indexPage(){
		//获取头部信息
		super.getHeader();
		return indexLoad();
	}
	
	@RequestMapping("index")
	public ModelAndView indexLoad(){
		ModelAndView res=new ModelAndView("../index");
		
		
		return res;
	}
}
