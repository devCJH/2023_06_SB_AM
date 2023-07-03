package com.example.demo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.example.demo.vo.Rq;

@Component
public class BeforeActionInterceptor implements HandlerInterceptor {

	private Rq rq;
	
	@Autowired
	public BeforeActionInterceptor(Rq rq) {
		this.rq = rq;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		rq.init();
		
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}
	
	
}
