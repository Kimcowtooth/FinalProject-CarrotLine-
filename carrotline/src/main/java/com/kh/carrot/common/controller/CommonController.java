package com.kh.carrot.common.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.carrot.booking.model.vo.Booking;
import com.kh.carrot.booking.model.vo.Ticket;
import com.kh.carrot.common.model.service.CommonService;
import com.kh.carrot.member.model.vo.Member;

@Controller
public class CommonController {
	
	@Autowired
	private CommonService commonService;
	
	//header에서 마이페이지 이동
	@RequestMapping("myPage.co")
	public ModelAndView myPage(HttpSession session,
			ModelAndView mv){
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		System.out.println(userNo);
		userNo = 2;
		System.out.println(userNo);
		ArrayList<Booking> bkList = commonService.selectMyBookingList(userNo);
		System.out.println("bkList : "+bkList);
		
		mv.addObject("bkList", bkList);
		mv.setViewName("common/myPage");
		
		return mv;
	}
	
	@RequestMapping("bkDetail.bo")
	public ModelAndView selectBookingDetail(HttpSession session,int bookingNo, ModelAndView mv) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		userNo = 2;
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("userNo", userNo);
		map.put("bookingNo", bookingNo);
		
		Booking bk = commonService.selectBooking(map);
		System.out.println(bk);
		
		ArrayList<Ticket> tListY = commonService.selectBookingDetailY(bookingNo);
		ArrayList<Ticket> tListN = commonService.selectBookingDetailN(bookingNo);
		
		System.out.println(tListY);
		System.out.println(tListN);
		
		if((bk!=null && !tListY.isEmpty()) || (bk!=null && !tListN.isEmpty())) {
			mv.addObject("bk", bk);
			mv.addObject("tListY", tListY);
			mv.addObject("tListN", tListN);
			mv.setViewName("common/bookingDetail");
		}else {
			mv.addObject("errorMsg", "게시글 조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
}
