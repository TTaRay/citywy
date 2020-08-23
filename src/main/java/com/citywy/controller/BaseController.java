package com.citywy.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Component
public class BaseController {
    private static final String[] HEADERS_TO_TRY = {
            "X-Forwarded-For",
            "Proxy-Client-IP",
            "WL-Proxy-Client-IP",
            "HTTP_X_FORWARDED_FOR",
            "HTTP_X_FORWARDED",
            "HTTP_X_CLUSTER_CLIENT_IP",
            "HTTP_CLIENT_IP",
            "HTTP_FORWARDED_FOR",
            "HTTP_FORWARDED",
            "HTTP_VIA",
            "REMOTE_ADDR",
            "X-Real-IP"};

    /**
     * 获取request
     * @return
     */
    public static HttpServletRequest getRequest() {
        ServletRequestAttributes attrs =(ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        return attrs.getRequest();
    }

    /**
     * 获取response
     * @return
     */
    public static HttpServletResponse getResponse() {
        HttpServletResponse response = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();
        return response;
    }

    /**
     * 获取session
     * @return
     */
    public static HttpSession getSession() {
        HttpSession session = null;
        try {
            session = getRequest().getSession();
        } catch (Exception e) {}
        return session;
    }

    /***
     * 获取客户端ip地址(可以穿透代理)
     * @return
     */
    public static String getClientIpAddress() {
        HttpServletRequest request = getRequest();
        for (String header : HEADERS_TO_TRY) {
            String ip = request.getHeader(header);
            if (ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip)) {
                return ip;
            }
        }
        return request.getRemoteAddr();
    }
    /**
     * 返回头部栏目等信息
     */
    public void getHeader(){
    	String uri=getRequest().getRequestURI();
    	int headMenu=1;
    	if(uri!=null && !"".equals(uri)){
    		if(uri.contains("/develop")){
    			headMenu=2;
    		}else if(uri.contains("/seo")){
    			headMenu=3;
    		}else if(uri.contains("/know")){
    			headMenu=4;
    		}else if(uri.contains("/news")){
    			headMenu=5;
    		}
    	}
    	getRequest().setAttribute("headmenu", headMenu);
    }

}
