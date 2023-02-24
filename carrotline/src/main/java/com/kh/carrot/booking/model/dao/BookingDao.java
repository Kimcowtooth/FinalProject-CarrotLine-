package com.kh.carrot.booking.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carrot.booking.model.vo.CheckedBaggage;
import com.kh.carrot.booking.model.vo.CookieAll;
import com.kh.carrot.booking.model.vo.Seat;
import com.kh.carrot.common.model.vo.Airport;
import com.kh.carrot.common.model.vo.Route;


@Repository
public class BookingDao {

	public ArrayList<Airport> selectDepCityList(SqlSessionTemplate sqlSession, String continent) {
		return (ArrayList)sqlSession.selectList("bookingMapper.selectDepCityList", continent);
	}

	public ArrayList<Airport> selectAbleCityList(SqlSessionTemplate sqlSession, String caDepartureAirport) {
		return (ArrayList)sqlSession.selectList("bookingMapper.selectAbleCityList", caDepartureAirport);
	}

	public ArrayList<Airport> selectArrCityList(SqlSessionTemplate sqlSession, Airport apInfo) {
		return (ArrayList)sqlSession.selectList("bookingMapper.selectArrCityList", apInfo);
	}
	
	public ArrayList<Route> dailyLowFor7Days(SqlSessionTemplate sqlSession, Route r) {
		return (ArrayList)sqlSession.selectList("bookingMapper.dailyLowFor7Days", r);
	}

	public ArrayList<Route> selectItinerary(SqlSessionTemplate sqlSession, Route r) {
		return (ArrayList)sqlSession.selectList("bookingMapper.selectItinerary", r);
	}
	
	public ArrayList<Seat> selectBookingSeat(SqlSession sqlSession) {
		return (ArrayList)sqlSession.selectList("bookingMapper.selectBookingSeat");
	}

	public ArrayList<CheckedBaggage> BaggageInfo(SqlSession sqlSession) {
		return (ArrayList)sqlSession.selectList("bookingMapper.BaggageInfo");
	}

	public int SelectSeatPrice(SqlSession sqlSession, CookieAll sPrice) {
		return sqlSession.selectOne("bookingMapper.SelectSeatPrice", sPrice);
	}

	public int SelectBaggagePrice(SqlSession sqlSession, String caCbPrice) {
		return sqlSession.selectOne("bookingMapper.SelectBaggagePrice", caCbPrice);
	}

	
	
	
}
