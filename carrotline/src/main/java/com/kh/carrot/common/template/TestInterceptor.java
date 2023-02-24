package com.kh.carrot.common.template;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.kh.carrot.member.model.vo.Member;

public class TestInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	
			HttpSession session = request.getSession();
			
			Member loginUser = (Member)session.getAttribute("loginUser");
			
			if(loginUser != null) {
				return true;
			}else {
				session.setAttribute("alertMsg", "濡쒓렇�씤 �썑 �씠�슜媛��뒫�븳 �꽌鍮꾩뒪�엯�땲�떎.");
				return false;
			}
		}
		
	

}
