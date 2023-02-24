package com.kh.carrot.booking.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.carrot.booking.model.service.BookingService;
import com.kh.carrot.booking.model.vo.CheckedBaggage;
import com.kh.carrot.booking.model.vo.CookieAll;
import com.kh.carrot.booking.model.vo.Seat;
import com.kh.carrot.common.model.vo.Airport;
import com.kh.carrot.common.model.vo.Route;

@Controller
public class BookingController {
	
	@Autowired
	private BookingService bookingService;
	
	//항공예약폼(Page1 리턴)
	@RequestMapping("bookingPage1_1.re")
	public String bookingPage1_1(){
		return "booking/bookingPage1_1";
	}
	
	//[출발지]airport테이블에서 contiCode 정보가져와서 city(공항)정보 리스트 뿌리
	@ResponseBody
	@RequestMapping(value="selectDepCityList.re",produces="application/json; charset=UTF-8")
	public String selectDepCityList(String continentArr){
		ArrayList<Airport> cityList = bookingService.selectDepCityList(continentArr);
		//System.out.println("cityList; "+cityList);
		
		return new Gson().toJson(cityList);
	}
	
	//[도착지]airport테이블에서 contiCode 정보가져와서 city(공항)정보 리스트 뿌리
	@ResponseBody
	@RequestMapping(value="selectAbleCityList.re",produces="application/json; charset=UTF-8")
	public String selectAbleCityList(String caDepartureAirport){
		//앞에서 가져온 conti정보, 출발지 공항 코드 들고가서 , 도착지 공항 코드 있는 conti의 city리스트만 가져오기
		ArrayList<Airport> contiList = bookingService.selectAbleCityList(caDepartureAirport);
		//System.out.println("contiList : "+contiList);
		return new Gson().toJson(contiList);
	}
	
	//[도착지]airport테이블에서 contiCode 정보가져와서 city(공항)정보 리스트 뿌리
	@ResponseBody
	@RequestMapping(value="selectArrCityList.re",produces="application/json; charset=UTF-8")
	public String selectArrCityList(String continent, String caDepartureAirport){
		
		Airport apInfo = new Airport();
		
		apInfo.setContinent(continent);
		apInfo.setAirportCode(caDepartureAirport);
		
		ArrayList<Airport> cityList = bookingService.selectArrCityList(apInfo);
		
		return new Gson().toJson(cityList);
	}
	
	//편도 - 뷰단에서 넘어온 값 가지고 오기
	//항공예약 (Page1) _ bookingTicket
	//쿠키에 정보넣기 (왕복/편도,출발공항,도착공항,출발날짜/도착날짜,인원수(성인,소아,유아))
	@RequestMapping(value="bookingOW.re")
	public ModelAndView
	methodOW(HttpServletResponse response, String caKind, String caDepartureAirport, String caArrivalAirport
							, String caDepCity, String caArrCity, String caDepartureDate, String caArrivalDate, String caConti
							, int caAdult, int caChild, int caBaby, ModelAndView mv) {
		
		//System.out.println(caDepCity);
		CookieAll cookieAll = new CookieAll();
		
		cookieAll.setCaKind(caKind);
		cookieAll.setCaDepartureAirport(caDepartureAirport);	
		cookieAll.setCaArrivalAirport(caArrivalAirport);
		cookieAll.setCaDepartureDate(caDepartureDate);
		cookieAll.setCaArrivalDate(caArrivalDate);

		cookieAll.setCaDepCity(caDepCity);
		cookieAll.setCaArrCity(caArrCity);
		cookieAll.setCaConti(caConti);
		
		cookieAll.setCaAdult(caAdult);
		cookieAll.setCaChild(caChild);
		cookieAll.setCaBaby(caBaby);
		
		
		try {	
			
			Gson gson = new Gson();
			//caKind, caDepartureAirport, caArrivalAirport, caDepartureDate, caDepCity, caArrCity, caConti, caAdult, caChild, caBaby
			ArrayList<CookieAll> cookieAllList = new ArrayList<CookieAll>(); 
			
			for(int i=0;i<caAdult;i++) {
				cookieAllList.add(new CookieAll(caKind,caDepartureAirport,caArrivalAirport,caDepartureDate,caArrivalDate,caDepCity,caArrCity,caConti,1,0,0));
			}
			for(int i=0;i<caChild;i++) {
				cookieAllList.add(new CookieAll(caKind,caDepartureAirport,caArrivalAirport,caDepartureDate,caArrivalDate,caDepCity,caArrCity,caConti,0,1,0));
			}
			for(int i=0;i<caBaby;i++) {
				cookieAllList.add(new CookieAll(caKind,caDepartureAirport,caArrivalAirport,caDepartureDate,caArrivalDate,caDepCity,caArrCity,caConti,0,0,1));
			}
			
			Cookie cookieSet = new Cookie("cookieSet", URLEncoder.encode(gson.toJson(cookieAllList),"UTF-8"));
			cookieSet.setMaxAge(3600);
			cookieSet.setPath("/");
			response.addCookie(cookieSet);
		} catch (Exception e) {
			System.out.println("cookie 만들기 실패");
		}

		mv.addObject("ca", cookieAll).setViewName("booking/bookingPage1_2");
		return mv;
	}
		
	/* =================================================================================== */
	
	@ResponseBody
	@RequestMapping(value="dailyList.bo", produces="application/json; charset=UTF-8")
	public String dailyLowFor7Days(Route r) {
		
		ArrayList<Route> dailyList = bookingService.dailyLowFor7Days(r);
		return new Gson().toJson(dailyList);
	}
	
	@ResponseBody
	@RequestMapping(value="selectItinerary.bo", produces="application/json; charset=UTF-8")
	public String selectItinerary(Route r) {
		
		ArrayList<Route> itineraryList = bookingService.selectItinerary(r);
		return new Gson().toJson(itineraryList);
	}
	
	
	@RequestMapping(value="booking/bookingPage2")
	public String bookingPage2(@CookieValue(name="cookieSet", defaultValue="") String cookie
							,Route r
							,HttpServletRequest request
							,HttpServletResponse response) {
		
		//쿠키 가져오기
		Gson gson = new Gson();
		CookieAll[] cookieAllList = gson.fromJson(cookie, CookieAll[].class);
		
		//form에서 보낸 데이터 가져오기
		String caDepartureDate = r.getRoDepartureDate();
		int caScheduleNo = r.getRoScheduleNo();
		int caRouteCost = r.getRouteCost();
		int caScheduleCost = r.getRoScheduleCost();
		int caPlaneSizeCost = r.getRoPlaneSizeCost();
		int babyRouteCost = r.getRouteNo();
		
		int adult = 0;
		int child = 0;
		int baby = 0;
		int totalPerson = 0;
		int totalPrice = 0;
		
		//쿠키
		for(int i=0; i<cookieAllList.length; i++) {
			adult += cookieAllList[i].getCaAdult();//성인
			child += cookieAllList[i].getCaChild();//소아
			baby += cookieAllList[i].getCaBaby();//유아
			
			
			//출발날짜, 일정번호 set
			cookieAllList[i].setCaDepartureDate(caDepartureDate);
			cookieAllList[i].setCaScheduleNo(caScheduleNo);
			
			if((adult>0 || child>0) && baby == 0) {//성인, 소아 set
				cookieAllList[i].setCaRouteCost(caRouteCost);
				cookieAllList[i].setCaScheduleCost(caScheduleCost);
				cookieAllList[i].setCaPlaneSizeCost(caPlaneSizeCost);
			}else if(baby>0) {//유아 set
				cookieAllList[i].setCaRouteCost(babyRouteCost);
				cookieAllList[i].setCaScheduleCost(0);
				cookieAllList[i].setCaPlaneSizeCost(0);
			}
			
			totalPrice += cookieAllList[i].getCaRouteCost() + cookieAllList[i].getCaScheduleCost() + cookieAllList[i].getCaPlaneSizeCost();
			
		}
		
		totalPerson = adult + child + baby; // 전체 인원수
		
		try {
			Cookie cookieSet = new Cookie("cookieSet", URLEncoder.encode(gson.toJson(cookieAllList),"UTF-8"));
			cookieSet.setMaxAge(3600);
			cookieSet.setPath("/");
			response.addCookie(cookieSet);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("cookieAllList : " + cookieAllList);
		
		request.setAttribute("cookieAllList", cookieAllList);
		request.setAttribute("totalPerson", totalPerson);
		request.setAttribute("totalPrice", totalPrice);
		
		return "booking/bookingPage2";
	}
	
	@RequestMapping(value = "bookingPage2.re")
	public String bookingPage2() {
		return "booking/bookingPage2";
	}
	
	
	//항공예약폼(Page3 리턴)//소이 -> 남호/선경으로 넘어가는 부분.
		@PostMapping(value="bookingPage3.re")
		public ModelAndView bookingPage3(@CookieValue(name="cookieSet", defaultValue="") String cookie,
													HttpServletResponse response,
													ModelAndView mv) {

			// 예매되어있는 좌석 불러오기
			ArrayList<Seat> seatList = bookingService.selectBookingSeat();
			// 위탁수하물 정보 불러오기
			ArrayList<CheckedBaggage> baggageList = bookingService.BaggageInfo();
			
			//쿠키 가져오기
			Gson gson = new Gson();
			CookieAll[] cookieAllList = gson.fromJson(cookie, CookieAll[].class);
			
			int totalPrice = 0;
			
			for(int i=0; i<cookieAllList.length; i++) {
				if(i == 0) {
					cookieAllList[i].setCaFirstName("KIM");
					cookieAllList[i].setCaLastName("SEONKYOUNG");
					cookieAllList[i].setCaGender("MALE");
					cookieAllList[i].setCaNationality("REPUBLICOFKOREA");
					cookieAllList[i].setCaBirthday("920215");
					cookieAllList[i].setCaPasspartNo("M1234567");
				}else if(i == 1) {
					cookieAllList[i].setCaFirstName("KIM");
					cookieAllList[i].setCaLastName("NAMO");
					cookieAllList[i].setCaGender("MALE");
					cookieAllList[i].setCaNationality("GANA");
					cookieAllList[i].setCaBirthday("960505");
					cookieAllList[i].setCaPasspartNo("M7654321");
				}
				else if(i == 2) {
					cookieAllList[i].setCaFirstName("KIM");
					cookieAllList[i].setCaLastName("SSOI");
					cookieAllList[i].setCaGender("MALE");
					cookieAllList[i].setCaNationality("USA");
					cookieAllList[i].setCaBirthday("950815");
					cookieAllList[i].setCaPasspartNo("M789456");
				}
				
				totalPrice += cookieAllList[i].getCaRouteCost() + cookieAllList[i].getCaScheduleCost() + cookieAllList[i].getCaPlaneSizeCost();

			}
			
			try {
				Cookie cookieSet = new Cookie("cookieSet", URLEncoder.encode(gson.toJson(cookieAllList),"UTF-8"));
				cookieSet.setMaxAge(3600);
				cookieSet.setPath("/");
				response.addCookie(cookieSet);
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			
			mv.addObject("seatList", seatList);
			mv.addObject("baggageList", baggageList);
			mv.addObject("totalPrice", totalPrice);
			
			
			mv.setViewName("booking/bookingPage3");
			
			return mv;
		}
	
	// 좌석 가격 불러오기
	@ResponseBody
	@RequestMapping(value = "booking3_seatPrice.re", produces = "application/json; charset=UTF-8")
	public int SelectSeatPrice(int caScheduleNo,
								String caSeatPrice) {
		
		CookieAll sPrice = new CookieAll(caScheduleNo,caSeatPrice);
		int selectSeatPrice = bookingService.SelectSeatPrice(sPrice);
		
		return selectSeatPrice;
	}
	
	// 위탁수하물 가격 불러오기
	@ResponseBody
	@RequestMapping(value = "booking3_baggagePrice.re", produces = "application/json; charset=UTF-8")
	public int SelectBaggagePrice(String caCbPrice) {
		
		int selectBaggagePrice = bookingService.SelectBaggagePrice(caCbPrice);
		
		return selectBaggagePrice;
	}
	
	// 보험 가격 쿠키에 넣기 , 아래에 있는거에 조건 걸어서 처리하기 (보험 관련 데이터가 있을경우에만 보험쪽 데이터 변경)
	@ResponseBody
	@RequestMapping(value = "booking3_insurancePrice.re", produces = "application/json; charset=UTF-8")
	public String SelectInsurancePrice(String caFirstName,
										String caLastName,
										String caTi,
										String caTiPrice,
										HttpServletResponse response,
										HttpServletRequest request) throws IOException {
		
		return "booking/bookingPage3";
	}
	
	// 부가서비스 쿠키에 담기
	@RequestMapping(value = "booking3.re")
	public String booking3(@CookieValue(name="cookieSet", defaultValue="") String cookie,
							String caFirstName,
							String caLastName,
							String caSeatCode,
							String caSeatPrice,
							String caCb,
							String caCbPrice,
							String caFm,
							String caFmPrice,
							String caTi,
							String caTiPrice,
							HttpServletResponse response,
							HttpServletRequest request) throws IOException {
		
		// 성 + 이름 용도
		String userName =""; // 쿠키에 담겨있는 이름
		String checkUserName = ""; // 받아온 이름
		
		//쿠키 가져오기
		Gson gson = new Gson();
		CookieAll[] cookieAllList = gson.fromJson(cookie, CookieAll[].class);
			
		//쿠키
		for(int i=0; i<cookieAllList.length; i++) {
			userName = cookieAllList[i].getCaFirstName() + cookieAllList[i].getCaLastName();
			checkUserName = caFirstName + caLastName;
			
			System.out.println("userName : " + userName);
			System.out.println("checkUserName : " + checkUserName);
			
			if(userName.equals(checkUserName)) { // 이름이 같을때
				if(caTi.isEmpty()) { // 보험 값이 비었을때
					cookieAllList[i].setCaSeatCode(caSeatCode);
					cookieAllList[i].setCaSeatPrice(caSeatPrice);
					cookieAllList[i].setCaCb(caCb);
					cookieAllList[i].setCaCbPrice(caCbPrice);
					cookieAllList[i].setCaFm(caFm);
					cookieAllList[i].setCaFmPrice(caFmPrice);
				}else { // 받은 보험 값이 있을때
					if(caSeatCode.isEmpty() && caCb.isEmpty() && caFm.isEmpty()) { // 좌석, 위탁수하물, 기내식이 비었을때
						cookieAllList[i].setCaTi(caTi);
						cookieAllList[i].setCaTiPrice(caTiPrice);
					}else {
						cookieAllList[i].setCaSeatCode(caSeatCode);
						cookieAllList[i].setCaSeatPrice(caSeatPrice);
						cookieAllList[i].setCaCb(caCb);
						cookieAllList[i].setCaCbPrice(caCbPrice);
						cookieAllList[i].setCaFm(caFm);
						cookieAllList[i].setCaFmPrice(caFmPrice);
						cookieAllList[i].setCaTi(caTi);
						cookieAllList[i].setCaTiPrice(caTiPrice);
					}
					
				}
			}else { // 일치하는 이름이 없을때
				System.out.println("일치하는 이름이 없습니다.");
			}
			
		}
		
		try {
			Cookie cookieSet = new Cookie("cookieSet", URLEncoder.encode(gson.toJson(cookieAllList),"UTF-8"));
			cookieSet.setMaxAge(3600);
			cookieSet.setPath("/");
			response.addCookie(cookieSet);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			System.out.println("쿠키 만들기 실패");
		}
		
		return "booking/bookingPage3";
	}

	@RequestMapping("bookingPage4.re")
	public String BookingPage4() {
		
		return "booking/bookingPage4";
	}
	
}
