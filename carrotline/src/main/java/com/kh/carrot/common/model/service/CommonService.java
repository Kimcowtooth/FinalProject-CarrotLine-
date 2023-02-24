package com.kh.carrot.common.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.kh.carrot.booking.model.vo.Booking;
import com.kh.carrot.booking.model.vo.Ticket;

public interface CommonService {
	
	//나의 예약 조회
	ArrayList<Booking> selectMyBookingList(int userNo);

	//예약상세에서 한번만 뿌릴 Booking객체 조회
	Booking selectBooking(Map<String, Object> map);

	//예약 상세 조회 좌석 선택
	ArrayList<Ticket> selectBookingDetailY(int bookingNo);

	//예약 상세 조회 좌석 미선택
	ArrayList<Ticket> selectBookingDetailN(int bookingNo);
	
}
