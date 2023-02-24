package com.kh.carrot.admin.model.service;

import java.time.LocalDate;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carrot.admin.model.dao.AdminDao;
import com.kh.carrot.admin.model.vo.Sales;
import com.kh.carrot.common.model.vo.Route;
import com.kh.carrot.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;
	@Autowired
	private SqlSessionTemplate sqlSession;

	//회원관리페이지에서 전체 회원을 조회하는 메소드
	@Override
	public ArrayList<Member> memberList() {
		return adminDao.memberList(sqlSession);
	}

	@Override
	public int deleteBoard(int boardNo) {
		return adminDao.deleteBoard(sqlSession, boardNo);
	}
	//이달의 항공권 판매량
	@Override
	public int selectSalesCount(int monthValue) {
		return adminDao.selectSalesCount(sqlSession, monthValue);
	}
	//오늘의 항공권 판매량
	@Override
	public int selectTodaySalesCount(String sNow) {
		return adminDao.selectTodaySalesCount(sqlSession, sNow);
	}
	//오늘의 항공편
	@Override
	public int selectFtotalCount(int dayOfmonth) {
		return adminDao.selectFtotalCount(sqlSession, dayOfmonth);
	}
	//오늘 예매율
	@Override
	public ArrayList<Object> selectSalesRate(String sNow) {
		
		return (ArrayList)adminDao.selectSalesRate(sqlSession, sNow);
	}
	//오늘 비행일정
	@Override
	public int selectTodaySche(String sNow) {
		return adminDao.selectTodaySche(sqlSession, sNow);
	}
	//오늘의 예매한 사람 총 명수
	@Override
	public int selectTodayPerson(String sNow) {
		return adminDao.selectTodayPerson(sqlSession, sNow);
	}
	//올해 월별 매출 조회하기
	@Override
	public ArrayList<Object> selectMonthOfThisYear(int year) {
		return adminDao.selectMonthOfThisYear(sqlSession, year);
	}
	//항공편 조회하기
	@Override
	public ArrayList<Route> routeList() {
		return adminDao.routeList(sqlSession);
	}
	
}
