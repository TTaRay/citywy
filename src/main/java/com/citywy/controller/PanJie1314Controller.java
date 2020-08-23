package com.citywy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PanJie1314Controller extends BaseController{
	@RequestMapping("panjie1314")
	public ModelAndView pj1314(){
		String uri = getRequest().getRequestURI();
		System.out.println("out:"+uri+"---------------------");
		/*if(!uri.endsWith("/")){
			getResponse().setStatus(301);
			getResponse().setHeader("Location", "//www.citywy.com"+uri+"/");
			return null;
		}*/
		System.out.println("shi is in here");
		ModelAndView res = new ModelAndView("/pj1314");
		return res;
	}
}
