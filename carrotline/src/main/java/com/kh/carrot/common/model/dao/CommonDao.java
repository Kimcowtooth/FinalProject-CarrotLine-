package com.kh.carrot.common.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carrot.booking.model.vo.Booking;
import com.kh.carrot.booking.model.vo.Ticket;

@Repository
public class CommonDao {

	public ArrayList<Booking> selectMyBookingList(SqlSessionTemplate sqlSession, int userNo) {
		return (ArrayList)sqlSession.selectList("commonMapper.selectMyBookingList", userNo);
	}


	public Booking selectBooking(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		return sqlSession.selectOne("commonMapper.selectBooking", map);
	}


	public ArrayList<Ticket> selectBookingDetailY(SqlSessionTemplate sqlSession, int bookingNo) {
		return (ArrayList)sqlSession.selectList("commonMapper.selectMyBookingDetailY", bookingNo);
	}


	public ArrayList<Ticket> selectBookingDetailN(SqlSessionTemplate sqlSession, int bookingNo) {
		return (ArrayList)sqlSession.selectList("commonMapper.selectMyBookingDetailN", bookingNo);
	}
}
