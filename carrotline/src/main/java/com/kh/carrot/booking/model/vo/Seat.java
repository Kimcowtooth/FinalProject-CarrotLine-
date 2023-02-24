package com.kh.carrot.booking.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Seat {
	
	private String seatCode;//	SEAT_CODE	VARCHAR2(10 BYTE)
	private int scheduleNo;//	SCHEDULE_NO	NUMBER
	private String seatGrade;//	SEAT_GRADE	VARCHAR2(20 BYTE)
	private String bookingStatus;//	BOOKING_STATUS	VARCHAR2(1 BYTE)
	
	
}