package com.kh.carrot.booking.model.service;

import java.util.ArrayList;

import com.kh.carrot.booking.model.vo.CheckedBaggage;
import com.kh.carrot.booking.model.vo.CookieAll;
import com.kh.carrot.booking.model.vo.Seat;
import com.kh.carrot.common.model.vo.Airport;
import com.kh.carrot.common.model.vo.Route;

public interface BookingService {

	//출발지 대륙별 공항리스트 조회하기
	ArrayList<Airport> selectDepCityList(String continentArr);

	//도착지 대륙리스트 조회하기
	ArrayList<Airport> selectAbleCityList(String caDepartureAirport);

	//도착지 대륙별 공항리스트 조회하기
	ArrayList<Airport> selectArrCityList(Airport apInfo);

	//선택일 기준 일주일 간의 최저가 조회
	ArrayList<Route> dailyLowFor7Days(Route r);
	
	//선택일의 운항일정 상세 조회
	ArrayList<Route> selectItinerary(Route r);
		
	// 예매된 좌석 조회
	ArrayList<Seat> selectBookingSeat();
	
	// 좌석 가격 정보
	int SelectSeatPrice(CookieAll sPrice);
	
	// 위탁수하물 정보
	ArrayList<CheckedBaggage> BaggageInfo();
	
	// 위탁수하물 가격 정보
	int SelectBaggagePrice(String caCbPrice);
	
		
}
