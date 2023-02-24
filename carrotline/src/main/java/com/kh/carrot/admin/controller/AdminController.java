package com.kh.carrot.admin.controller;


import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.carrot.admin.model.service.AdminService;
import com.kh.carrot.board.model.service.BoardService;
import com.kh.carrot.board.model.vo.Board;
import com.kh.carrot.common.model.vo.Route;
import com.kh.carrot.member.model.vo.Member;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private BoardService boardService;
	
	//관리자페이지 메인폼 접속메소드
	@RequestMapping("adminMainForm.ad")
		public ModelAndView AdminMain(ModelAndView mv) {

		//현재 날짜 구하기(시스템 시계, 시스템 타임존)
		LocalDate now = LocalDate.now();
		//현재 년도 구하기
		int thisYear = now.getYear();
		//현재 월 구하기
		int monthValue = now.getMonthValue();
		//현재 일 구하기
		int dayOfmonth = now.getDayOfMonth();
		//현재 년도 + 현재 월
		String yearMonth = thisYear+"-"+monthValue;
		//이달의 항공권 판매량
		int monthSalesCount = adminService.selectSalesCount(monthValue);	
		
		//오늘의 항공권 판매량
		//날짜를 문자열로 변환
		String sNow = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		int todaySalesCount = adminService.selectTodaySalesCount(sNow);
			if(todaySalesCount>0) {
				mv.addObject("todaySalesCount",todaySalesCount);	
			}else {
				todaySalesCount = 0;
				mv.addObject("todaySalesCount",todaySalesCount);	
			}
		
		//오늘의 항공편
		int ftotal = adminService.selectFtotalCount(dayOfmonth);
			if(todaySalesCount>0) {
				mv.addObject("ftotal",ftotal);
			}else {
				ftotal = 0;
				mv.addObject("ftotal",ftotal);
			}
			
		//오늘의 예매율
		float salesRate = 0;
		//1.오늘의 일정번호 
		float todaySchedule = adminService.selectTodaySche(sNow);
		String todaySche = "금일 항공 일정이 없습니다.";
		
		//금일 비행이 있으면
		if(todaySchedule>0) {
			//2.오늘의 예매한 사람 총 명수
			float todaySalesPerson = adminService.selectTodayPerson(sNow);
	//  	오늘 예매한 비율 = (예매한 사람(어른+아이))/189석*(오늘 항공 출발 비행기 수)
			float todayRate = todaySalesPerson/((189*todaySchedule));
			//오늘 예매율 퍼센트 구하기
			salesRate = 100*todayRate;
			//오늘 예매율 소숫점 두 자리까지 남기고 나머지 절삭.
			salesRate = (float) (Math.round(salesRate*100)/100.0);
			mv.addObject("salesRate",salesRate);
		}else {//금일 비행이 없으면.
			mv.addObject("todaySche",todaySche);
		}

		mv.addObject("now",now);
		mv.addObject("yearMonth",yearMonth);
		mv.addObject("monthSalesCount",monthSalesCount);
		mv.setViewName("admin/adminMain");
	
		return mv;
	
	}

	//관리자페이지 매출관리 폼 접속 메소드
	@GetMapping("adminSalesM.ad")
		public ModelAndView adminSalesM(ModelAndView mv) {
		
		//현재 날짜 구하기(시스템 시계, 시스템 타임존)
		LocalDate now = LocalDate.now();
		//현재 년도 구하기
		int year = now.getYear();
		//현재 월 구하기
		int monthValue = now.getMonthValue();
		//현재 일 구하기
		int dayOfmonth = now.getDayOfMonth();
		
		//올해 월별 매출 조회하기
		ArrayList<Object> monthofThisYear = new ArrayList<Object>();
		
		monthofThisYear = adminService.selectMonthOfThisYear(year);
		int [] month = new int[12];
		
		for(int i=0;i<monthofThisYear.size();i++) {
			month[i] = (Integer) monthofThisYear.get(i);	
		}
		int janMonthSales = month[0];
		int fenMonthSales = month[1];
		int marMonthSales = month[2];
		int aprMonthSales = month[3];
		int mayMonthSales = month[4];
		int junMonthSales = month[5];
		int julMonthSales = month[6];
		int augMonthSales = month[7];
		int sepMonthSales = month[8];
		int octMonthSales = month[9];
		int novMonthSales = month[10];
		int decMonthSales = month[11];

		mv.addObject("janMonthSales", janMonthSales);
		mv.addObject("fenMonthSales", fenMonthSales);
		mv.addObject("marMonthSales", marMonthSales);
		mv.addObject("aprMonthSales", aprMonthSales);
		mv.addObject("mayMonthSales", mayMonthSales);
		mv.addObject("junMonthSales", junMonthSales);
		mv.addObject("julMonthSales", julMonthSales);
		mv.addObject("augMonthSales", augMonthSales);
		mv.addObject("sepMonthSales", sepMonthSales);
		mv.addObject("octMonthSales", octMonthSales);
		mv.addObject("novMonthSales", novMonthSales);
		mv.addObject("decMonthSales", decMonthSales);

		mv.setViewName("admin/adminSalesM");
		
		return mv;

	}
	
	//관리자페이지 항공편관리 폼 접속 메소드
	@GetMapping("adminAirplanM.ad")
		public String AdminAirplanM(Model model) {

		ArrayList<Route> route = adminService.routeList();
		model.addAttribute("route", route);

		
		return "admin/adminAirplanM";
	}
	
	//관리자페이지 항공예약관리 폼 접속 메소드
	@GetMapping("adminAirBookingM.ad")
		public String AdminAirBookingM() {
		System.out.println("항공예약관리 들어왔음.");
		
		return "admin/adminAirBookingM";
	}
	
	//관리자페이지 고객센터관리 폼 접속 메소드
	@GetMapping("adminServiceM.ad")
		public ModelAndView adminServiceM(ModelAndView mv) {
			ArrayList<Board> list = boardService.selectList();
			
			mv.addObject("list",list);
			System.out.println(list);
			mv.setViewName("admin/adminServiceM");
		
		return mv;
	}
	
	//관리자페이지 고객센터(공지사항)상세보기
	@RequestMapping("detail.ad")
	public ModelAndView detailBoard(int bno,
									ModelAndView mv) {
				
		int result = boardService.increaseCount(bno);
		
		if(result>0) {
			Board b = boardService.selectBoard(bno);
			mv.addObject("b",b).setViewName("board/boardDetailView");
		}else {
			mv.addObject("errorMsg", "게시글 조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	//관리자페이지 고객센터(공지사항)삭제
	@RequestMapping("delete.bo")
	public String boardDelete(int bno,
							  HttpSession session,
							  Model model) {
		
		int result = adminService.deleteBoard(bno);
		
//			if(result>0) {//데이터 삭제에 성공했으면 - 서버에 저장된 파일도 삭제하여 자원 낭비하지 않기
//						
//						if(!filePath.equals("")) {
//							//물리적인 경로 찾기
//							String realPath = session.getServletContext().getRealPath(filePath);
//							//해당 경로와 연결시켜 파일객체 생성후 삭제 메소드(해당 파일 삭제)
//							new File(realPath).delete();
//						}
//						
//					}else {
//						model.addAttribute("errorMsg","게시글 삭제 실패 뚜둔");
//						return "common/errorPage";	
//					}
				return "redirect:/adminServiceM.ad";
		
	}
	
	//관리자페이지 회원관리 폼 접속 메소드
	@GetMapping("adminMemberM.ad")
		public ModelAndView AdminMemberM(ModelAndView mv) {
			
			ArrayList<Member> list = adminService.memberList();
			
			mv.addObject("list", list);
			mv.setViewName("admin/adminMemberM");
		System.out.println(list);
		
		return mv;
	}
	
	

}
