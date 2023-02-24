package com.kh.carrot.admin.model.service;

import java.time.LocalDate;
import java.util.ArrayList;

import com.kh.carrot.admin.model.vo.Sales;
import com.kh.carrot.common.model.vo.Route;
import com.kh.carrot.member.model.vo.Member;

public interface AdminService {
	//회원관리페이지에서 전체 회원을 조회하는 메소드
	ArrayList<Member> memberList();

	int deleteBoard(int bno);
	//이달의 항공권 판매량
	int selectSalesCount(int monthValue);
	//오늘의 항공권 판매량
	int selectTodaySalesCount(String sNow);
	//오늘의 항공편
	int selectFtotalCount(int dayOfmonth);
	//오늘 비행일정 갯수.
	int selectTodaySche(String sNow);
	//오늘 예매율
	ArrayList<Object> selectSalesRate(String sNow);
	//오늘의 예매한 사람 총 명수
	int selectTodayPerson(String sNow);
	//올해 월별 매출 조회하기
	ArrayList<Object> selectMonthOfThisYear(int year);
	//항공리스트 불러오는 메소드
	ArrayList<Route> routeList();

}
