package com.kh.carrot.common.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carrot.booking.model.vo.Booking;
import com.kh.carrot.booking.model.vo.Ticket;
import com.kh.carrot.common.model.dao.CommonDao;

@Service
public class CommonServiceImpl implements CommonService{

	@Autowired
	private CommonDao commonDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Booking> selectMyBookingList(int userNo) {
		return commonDao.selectMyBookingList(sqlSession, userNo);
	}

	@Override
	public Booking selectBooking(Map<String, Object> map) {
		return commonDao.selectBooking(sqlSession, map);
	}

	@Override
	public ArrayList<Ticket> selectBookingDetailY(int bookingNo) {
		return commonDao.selectBookingDetailY(sqlSession, bookingNo);
	}

	@Override
	public ArrayList<Ticket> selectBookingDetailN(int bookingNo) {
		return commonDao.selectBookingDetailN(sqlSession, bookingNo);
	}

}
