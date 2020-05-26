package com.study.common.interceptor;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(false);

		if (session == null) {
			response.sendError(HttpServletResponse.SC_FORBIDDEN); // 403, 접근 금지.
			return false;
		}
		if (session.getAttribute("USER_INFO") == null) {
			System.out.println("유저인포 없음");
			//Ajax 요청인 경우 401, SC_UNAUTHORIZED 에러를 던져주세요 
			//"X-Requested-With", "XMLHttpRequest"
			
			/*
			System.out.println("---------");
			System.out.println(request.getHeader("X-Requested-With"));
			System.out.println("---------");
			Enumeration<String> em = request.getHeaderNames();
			 
		    while(em.hasMoreElements()){
		        String name = em.nextElement() ;
		        String val = request.getHeader(name) ;
		    
		        System.out.println((name + " : " + val)) ;
		    }
		    */
		 
		 String xre= request.getHeader("X-Requested-With");
		 if(xre!=null && xre.equals("XMLHttpRequest")) {
			 response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
		  }else {
			 response.sendRedirect(request.getContextPath() + "/login/login.do");
		   }
		 return false;
		}
		return true;
	} // preHandle
} // class