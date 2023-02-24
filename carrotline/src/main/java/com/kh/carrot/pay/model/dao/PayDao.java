package com.kh.carrot.pay.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carrot.booking.model.vo.Booking;

@Repository
public class PayDao {

	public int insertBookingInfo(SqlSessionTemplate sqlSession, Booking bo) {
		return sqlSession.insert("bookingMapper.insertBookingInfo",bo);
	}

	
	
}
