
package com.vinspin.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.vinspin.model.form.Login;

@Component("authenticationInterceptor")
public class AuthenticationInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle (HttpServletRequest request, HttpServletResponse response, Object handler) 
			throws Exception{
		String uri = request.getRequestURI();
		System.out.println("AuthenticationInterceptor :: preHandle :: uri="+uri);
		
		/*if (!uri.endsWith("index.htm") && !uri.endsWith("login.htm") && !uri.endsWith("logout.htm")) {
			Login userData = (Login) request.getSession().getAttribute(Login.class.getName());
			if (userData == null) {
				response.sendRedirect("index.htm");
				return false;
			}
		}
		return true;*/
		return super.preHandle(request, response, handler); 
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		String uri = request.getRequestURI();
		System.out.println("AuthenticationInterceptor :: postHandle :: uri="+uri);
		
		/*if (!uri.endsWith("index.htm") && !uri.endsWith("login.htm") && !uri.endsWith("logout.htm")) {
			Login userData = (Login) request.getSession().getAttribute(Login.class.getName());
			if (userData == null) {
				response.sendRedirect("index.htm");
			}
		}*/
		super.postHandle(request, response, handler, modelAndView);
	}
}
