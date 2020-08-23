package com.citywy.util;

import com.citywy.controller.BaseController;

public class PublicUtil {
	/**
	 * 通过reuquest获取参数
	 * @param request
	 * @param name 参数名
	 * @param defval 默认值
	 * @return 返回String类型
	 */
	public static final String getParam(String name, String defval) {
		String param = BaseController.getRequest().getParameter(name);
		return (param != null ? param : defval);
	}
	
	/**
	 * 通过reuquest获取参数
	 * @param request
	 * @param name 参数名
	 * @param defval 默认值
	 * @return 返回int类型
	 */
	public static final int getParam(String name, int defval) {
		String param = BaseController.getRequest().getParameter(name);
		return (param!=null ? Integer.parseInt(param.trim()) : defval);
	}
	
	/**
	 * 通过reuquest获取参数
	 * @param request
	 * @param name 参数名
	 * @param defval 默认值
	 * @return 返回long类型
	 */
	public static final long getParam(String name, long defval) {
		String param = BaseController.getRequest().getParameter(name);
		return (param!=null ? Long.parseLong(param) : defval);
	}
	
	/**
	 * 通过reuquest获取参数
	 * @param request
	 * @param name 参数名
	 * @param defval 默认值
	 * @return 返回double类型
	 */
	public static final double getParam(String name, double defval) {
		String param = BaseController.getRequest().getParameter(name);
		return (param!=null ? Double.parseDouble(param) : defval);
	}
	
}