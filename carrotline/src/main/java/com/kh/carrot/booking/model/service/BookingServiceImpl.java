package com.kh.carrot.booking.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carrot.booking.model.dao.BookingDao;
import com.kh.carrot.booking.model.vo.CheckedBaggage;
import com.kh.carrot.booking.model.vo.CookieAll;
import com.kh.carrot.booking.model.vo.Seat;
import com.kh.carrot.common.model.vo.Airport;
import com.kh.carrot.common.model.vo.Route;

@Service
public class BookingServiceImpl implements BookingService{

	@Autowired
	private BookingDao bookingDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Airport> selectDepCityList(String continentArr) {
		return bookingDao.selectDepCityList(sqlSession, continentArr);
	}

	@Override
	public ArrayList<Airport> selectAbleCityList(String caDepartureAirport) {
		return bookingDao.selectAbleCityList(sqlSession, caDepartureAirport);
	}

	@Override
	public ArrayList<Airport> selectArrCityList(Airport apInfo) {
		return bookingDao.selectArrCityList(sqlSession, apInfo);
	}
	
	@Override
	public ArrayList<Route> dailyLowFor7Days(Route r) {
		return bookingDao.dailyLowFor7Days(sqlSession, r);
	}
	
	@Override
	public ArrayList<Route> selectItinerary(Route r) {
		return bookingDao.selectItinerary(sqlSession, r);
	}
	
	public ArrayList<Seat> selectBookingSeat() {
		return bookingDao.selectBookingSeat(sqlSession);
	}

	public ArrayList<CheckedBaggage> BaggageInfo() {
		return bookingDao.BaggageInfo(sqlSession);
	}

	// 
	public int SelectSeatPrice(CookieAll sPrice) {
		return bookingDao.SelectSeatPrice(sqlSession, sPrice);
	}

	public int SelectBaggagePrice(String caCbPrice) {
		return bookingDao.SelectBaggagePrice(sqlSession, caCbPrice);
	}
}
