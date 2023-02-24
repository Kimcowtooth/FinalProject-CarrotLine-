package com.kh.carrot.booking.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Ticket {
	
	private int ticketNo;		//	TICKET_NO	NUMBER
	private String seatCode;	//	SEAT_CODE	VARCHAR2(10 BYTE)
	private int bookingNo;		//	BOOKING_NO	NUMBER
    
	private int adult;			
	private int child;			
	private int baby;			
	
    //passenger VO
	private String engName;
	private String gender;
	private String nationality;
	private Date birthday;	
	private String passportNo;
	
	//service VO
	private int routeCost;
	private int scheduleCost;
	private int planeSizeCost;	//유류할증료
	private String cb; // 위학수하물 무게
	private int cbPrice; // 위탁수하물 가격
	private String fm; // 기내식 명
	private int fmPrice; // 기내식 가격
	private String ti; // 여행보험 명
	private int tiPrice; // 여행보험 가격
	
	private int seatCost;
}
