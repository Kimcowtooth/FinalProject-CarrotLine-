package com.kh.carrot.pay.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carrot.booking.model.vo.Booking;
import com.kh.carrot.pay.model.dao.PayDao;

@Service
public class PayServiceImpl implements PayService{
	@Autowired
	private PayDao payDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//Booking 테이블에 정보 insert 하기
	@Override
	public int insertBookingInfo(Booking bo) {
		return payDao.insertBookingInfo(sqlSession, bo);
	}
	
	
}
