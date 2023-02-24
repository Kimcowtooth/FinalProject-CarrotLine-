package com.kh.carrot.pay.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.carrot.booking.model.vo.Booking;
import com.kh.carrot.booking.model.vo.CookieAll;
import com.kh.carrot.member.model.vo.Member;
import com.kh.carrot.pay.model.service.PayService;

@Controller
public class PayController {
	@Autowired
	private PayService payService;
	
	
	@RequestMapping("payment.pa")
	public ModelAndView totalPayMent(ModelAndView mv,
									 HttpServletRequest request,
									 HttpSession session) throws IOException {
		//0.앞단에서 저장해놓은 쿠키를 받아오기 위한 ArrayList 선언
		//혜진단
		ArrayList<Object> caKind = new ArrayList<Object>(); //종류(편도/왕복)
		ArrayList<Object> caDepartureAirport = new ArrayList<Object>(); //출발공항코드
		ArrayList<Object> caArrivalAirport = new ArrayList<Object>(); //도착공항코드
		ArrayList<Object> caDepCity = new ArrayList<Object>();			//출발공항이름
		ArrayList<Object> caArrCity = new ArrayList<Object>();			//도착공항이름
		ArrayList<Object> caDepartureDate = new ArrayList<Object>();	//출발날짜
		ArrayList<Object> caConti = new ArrayList<Object>();			//여행국가
		ArrayList<Object> caAdult = new ArrayList<Object>();			//성인 수
		ArrayList<Object> caChild = new ArrayList<Object>();			//소아 수
		ArrayList<Object> caBaby = new ArrayList<Object>();				//유아 수
		
		//예약 1단계
		ArrayList<Object> caScheduleNo = new ArrayList<Object>();//일정번호
		ArrayList<Object> caRouteCost = new ArrayList<Object>();//노선기본금
		ArrayList<Object> caScheduleCost = new ArrayList<Object>();//운항일정추가금
		ArrayList<Object> caPlaneSizeCost = new ArrayList<Object>(); //비행기기본비용
		
		//예약 2단계
		ArrayList<Object> caEngName = new ArrayList<Object>();//영문명
		ArrayList<Object> caFirstName = new ArrayList<Object>(); //성 
		ArrayList<Object> caLastName = new ArrayList<Object>(); //이름
		ArrayList<Object> caGender = new ArrayList<Object>(); //성별
		ArrayList<Object> caNationality = new ArrayList<Object>();//국적
		ArrayList<Object> caBirthday = new ArrayList<Object>();//생년월일
		ArrayList<Object> caPasspartNo = new ArrayList<Object>(); //여권번호
		
		//예약 3단계
		ArrayList<Object> caSeatCode = new ArrayList<Object>();//좌석코드
		ArrayList<Object> caSeatPrice = new ArrayList<Object>();//좌석 가격
		ArrayList<Object> caCb = new ArrayList<Object>();//위탁수하물 무게
		ArrayList<Object> caCbPrice = new ArrayList<Object>();//위탁수하물 가격
		ArrayList<Object> caFm = new ArrayList<Object>();//기내식
		ArrayList<Object> caFmPrice = new ArrayList<Object>();//기내식 가격
		ArrayList<Object> caTi = new ArrayList<Object>();//여행보험
		ArrayList<Object> caTiPrice = new ArrayList<Object>();//여행보험 가격

		
		
		Cookie[] cookies = request.getCookies();
		String cName="";
		String cookieValue="";
		CookieAll[] cookieAllList = null;
		
		int totalPerson = 0; //총 탑승 인원
		int adult = 0; //어른 인원
		int child = 0;	// 아이 인원
		int baby = 0;	// 소아 인원
		String kind = ""; //편도 or 왕복
		int scheduleNo = 0; //스케줄 번호
		
		//1. 앞단에서 저장해놓은 쿠키 모두 가져오기.
		if(cookies != null){
		    for(int i=0; i<cookies.length; i++){
		    	if(cookies[i].getName().equals("cookieSet")){
		    		
			        //2. 쿠키 값 가져오기
			        cookieValue = URLDecoder.decode(cookies[i].getValue(), "UTF-8");
			        
			        Gson gson = new Gson();
					cookieAllList = gson.fromJson(cookieValue, CookieAll[].class);
					//쿠키 가지고 와서 각 ArrayList에 저장해놓기. 이후 필요한 것 DB에 저장하기 위함
					//향상된 포문으로 하지 않아도 된다. 그게 여기서는 더 좋을 듯.
					for(CookieAll ca : cookieAllList) {
		 				
						//혜진단
						caKind.add(ca.getCaKind());
						caDepartureAirport.add(ca.getCaDepartureAirport());
						caArrivalAirport.add(ca.getCaArrivalAirport());
						caDepCity.add(ca.getCaDepCity());
						caArrCity.add(ca.getCaArrCity());
						caDepartureDate.add(ca.getCaDepartureDate());
						caConti.add(ca.getCaConti());
						caAdult.add(ca.getCaAdult());
						caChild.add(ca.getCaChild());
						caBaby.add(ca.getCaBaby());
						//예약 1s
						caScheduleNo.add(ca.getCaScheduleNo());
						caRouteCost.add(ca.getCaRouteCost());
						caScheduleCost.add(ca.getCaScheduleCost());
						caPlaneSizeCost.add(ca.getCaPlaneSizeCost());
						//예약 2단계	
						caEngName.add(ca.getCaEngName());
						caFirstName.add(ca.getCaFirstName());
						caLastName.add(ca.getCaLastName());
						caGender.add(ca.getCaGender());
						caNationality.add(ca.getCaNationality());
						caBirthday.add(ca.getCaBirthday());
						caPasspartNo.add(ca.getCaPasspartNo());
						//예약 3단계
						caSeatCode.add(ca.getCaSeatCode());
						caSeatPrice.add(ca.getCaSeatPrice());
						caCb.add(ca.getCaCb());
						caCbPrice.add(ca.getCaCbPrice());
						caFm.add(ca.getCaFm());
						caFmPrice.add(ca.getCaFmPrice());
						caTi.add(ca.getCaTi());
						caTiPrice.add(ca.getCaTiPrice());
						
						//booking테이블에 정보 insert 사전 작업.
						//1. 성인 소아 유아 인원 수 각각 체크 and 편도 or 왕복인지		
						adult += ca.getCaAdult();
						child += ca.getCaChild();
						baby += ca.getCaBaby();
						kind = ca.getCaKind();
						System.out.println("ca.getCaScheduleNo(): "+ ca.getCaScheduleNo());
						scheduleNo = ca.getCaScheduleNo();
	
//						//사용자 정보 db에 insert 하기
				
					}
		    	}
		    }
		}
		
		
		//Booking 테이블에 정보 insert 하기
		System.out.println("adult: "+ adult);
		System.out.println("child: "+ child);
		System.out.println("baby: "+ baby);
		System.out.println("kind: "+ kind);
		System.out.println("scheduleNo: "+ scheduleNo);	
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		System.out.println(m.getUserNo());
		Booking bo = new Booking();
		bo.setKind(kind);
		bo.setAdult(adult);
		bo.setChild(child);
		bo.setBaby(baby);
		System.out.println();
		bo.setScheduleNo(scheduleNo);
		System.out.println("넘어가고 있나요?5");
		
		bo.setUserNo(userNo);
		
		System.out.println("넘어가고 있나요?");
		
		
		int result = payService.insertBookingInfo(bo);
		
		if(result>0) {
			System.out.println("완료되었나요? ");
			
		}
		
		
		

		
		//결제 총가격 구하고 jsp에 뿌리기.
		int totalPrice = 0;
		
		for(CookieAll ca : cookieAllList) {
			totalPrice += ca.getCaRouteCost()
				     +ca.getCaRouteCost()
				     +ca.getCaScheduleCost()
				     +ca.getCaPlaneSizeCost();
//				     +Integer.parseInt(ca.getCaSeatPrice())
//				     +Integer.parseInt(ca.getCaCbPrice())
//				     +Integer.parseInt(ca.getCaFmPrice())
//				     +Integer.parseInt(ca.getCaTiPrice());
		}
		
		session.setAttribute("totalPrice", totalPrice);	
		mv.addObject("totalPrice",totalPrice);

		//2.앞단에서 가져온 쿠키 전부 DB에 insert 하기.
		
		//3.쿠키 기준으로 jsp에 뿌려주기.
		
		//3-1) 결제 총액 가져오기.

		
		mv.setViewName("pay/pay"); //마일리지 사용
		
		
		
//		mv.setViewName("pay/payComplete"); //결제완료 페이지
//		mv.setViewName("pay/E_recipt"); // 결제 영수증.
//		mv.setViewName("imPay/impay"); // 모름.


		
		return mv;
	}
	//결제하기 버튼 누른 뒤 결제확인 페이지 보여주기
	@RequestMapping("kakaoPayment.pa")
	public ModelAndView kakaoPayment(ModelAndView mv) {
		
		System.out.println("카카오 들어옴 ");
		
		mv.setViewName("pay/payComplete");
		
		return mv;
	}
	//매출전표 버튼 클릭 시 영수증 페이지 보여주기
	@RequestMapping("salesSlip.pa")
	public ModelAndView salesSlip(ModelAndView mv,
								  HttpServletRequest request,
								  HttpSession session) throws IOException {
		
		System.out.println("영수증페이지 들어옴");
		
		//0.앞단에서 저장해놓은 쿠키 중 가격에 대한 정보를 받아오기 위한 부분
				//혜진단
				ArrayList<Object> caAdult = new ArrayList<Object>();			//성인 수
				ArrayList<Object> caChild = new ArrayList<Object>();			//소아 수
				ArrayList<Object> caBaby = new ArrayList<Object>();				//유아 수
				
				//예약 1단계
				ArrayList<Object> caRouteCost = new ArrayList<Object>();//노선기본금
				ArrayList<Object> caScheduleCost = new ArrayList<Object>();//운항일정추가금
				ArrayList<Object> caPlaneSizeCost = new ArrayList<Object>(); //비행기기본비용

				//예약 3단계
				ArrayList<Object> caSeatPrice = new ArrayList<Object>();//좌석 가격
				ArrayList<Object> caCbPrice = new ArrayList<Object>();//위탁수하물 가격
				ArrayList<Object> caFmPrice = new ArrayList<Object>();//기내식 가격
				ArrayList<Object> caTiPrice = new ArrayList<Object>();//여행보험 가격
				
				Cookie[] cookies = request.getCookies();
				String cName="";
				String cookieValue="";
				CookieAll[] cookieAllList = null;
				

				//1. 앞단에서 저장해놓은 쿠키 모두 가져오기.
				if(cookies != null){
				    for(int i=0; i<cookies.length; i++){
				    	if(cookies[i].getName().equals("cookieSet")){
				    		
					        //2. 쿠키 값 가져오기
					        cookieValue = URLDecoder.decode(cookies[i].getValue(), "UTF-8");
					        
					        Gson gson = new Gson();
							cookieAllList = gson.fromJson(cookieValue, CookieAll[].class);
							//쿠키 가지고 와서 각 ArrayList에 저장해놓기. 이후 필요한 것 DB에 저장하기 위함
							for(CookieAll ca : cookieAllList) {
				 				
					
								caAdult.add(ca.getCaAdult());
								caChild.add(ca.getCaChild());
								caBaby.add(ca.getCaBaby());
								//예약 1단계
								caRouteCost.add(ca.getCaRouteCost());
								caScheduleCost.add(ca.getCaScheduleCost());
								caPlaneSizeCost.add(ca.getCaPlaneSizeCost());
					
								//예약 3단계
								caSeatPrice.add(ca.getCaSeatPrice());
								caCbPrice.add(ca.getCaCbPrice());
								caFmPrice.add(ca.getCaFmPrice());
								caTiPrice.add(ca.getCaTiPrice());
					
							}
				    	}
				    }
				}
				//결제 총가격 구하고 jsp에 뿌리기.
				int totalPrice = 0;
				
				for(CookieAll ca : cookieAllList) {
					totalPrice +=ca.getCaRouteCost()
						     +ca.getCaRouteCost()
						     +ca.getCaScheduleCost()
						     +ca.getCaPlaneSizeCost();
//						     +Integer.parseInt(ca.getCaSeatPrice())
//						     +Integer.parseInt(ca.getCaCbPrice())
//						     +Integer.parseInt(ca.getCaFmPrice())
//						     +Integer.parseInt(ca.getCaTiPrice());
					
				}
				
				mv.addObject("totalPrice",totalPrice);
				mv.setViewName("pay/salesSlip");

		return mv;
	}
	
	
	
	
	
}
	
	
	
	

