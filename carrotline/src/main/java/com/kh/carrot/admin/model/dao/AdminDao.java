package com.kh.carrot.admin.model.dao;

import java.time.LocalDate;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carrot.admin.model.vo.Sales;
import com.kh.carrot.common.model.vo.Route;
import com.kh.carrot.member.model.vo.Member;

@Repository
public class AdminDao {
	
	//회원관리페이지에서 전체 회원을 조회하는 Dao
	public ArrayList<Member> memberList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("memberMapper.memberList");
	}

	public int deleteBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.delete("boardMapper.deleteBoard",boardNo);
	}

	public int selectSalesCount(SqlSessionTemplate sqlSession, int monthValue) {
		return sqlSession.selectOne("adminMapper.selectSalesCount", monthValue);
	}

	public int selectTodaySalesCount(SqlSessionTemplate sqlSession, String sNow) {
		return sqlSession.selectOne("adminMapper.todaySalesCount", sNow);
	}

	public int selectFtotalCount(SqlSessionTemplate sqlSession, int dayOfmonth) {
		return sqlSession.selectOne("adminMapper.todayFtotalCount",dayOfmonth);
	}

	public ArrayList<Object> selectSalesRate(SqlSessionTemplate sqlSession, String sNow) {
		return (ArrayList)sqlSession.selectList("adminMapper.todaySalesRate",sNow);
	}

	public int selectTodaySche(SqlSessionTemplate sqlSession, String sNow) {
		return sqlSession.selectOne("adminMapper.todaySche", sNow);
	}

	public int selectTodayPerson(SqlSessionTemplate sqlSession, String sNow) {
		return sqlSession.selectOne("adminMapper.todayPerson", sNow);
	}

	public ArrayList<Object> selectMonthOfThisYear(SqlSessionTemplate sqlSession, int year) {
		return (ArrayList)sqlSession.selectList("adminMapper.sMonthOfThisyear", year);
	}
	
	public ArrayList<Route> routeList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminMapper.routeList");
	}

	}



