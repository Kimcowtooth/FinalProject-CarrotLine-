package com.kh.carrot.imPay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.carrot.booking.model.service.BookingService;
import com.kh.carrot.member.model.service.MemberService;

@Controller
public class ImPayController {

	@Autowired
	private BookingService bookingService;
	
	@Autowired
	private MemberService memberService;
	
	
}
