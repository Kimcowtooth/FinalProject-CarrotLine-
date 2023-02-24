package com.kh.carrot.booking.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Booking {
	
	private int bookingNo;		//	BOOKING_NO	NUMBER
	private Date bookingDate;	//	BOOKING_DATE	DATE
	private String kind;		//	KIND	VARCHAR2(10 BYTE)
	private int adult;			//	ADULT	NUMBER
	private int child;			//	CHILD	NUMBER
	private int baby;			//	BABY	NUMBER
	private int scheduleNo;		//	SCHEDULE_NO	NUMBER
	private int userNo;			//	USER_NO	NUMBER
	
	private String departureDate;             
    private String departureCode;                 
    private String depCity;                      
    private String arrivalCode;            
    private String arrCity;
    private String depTime;
    private String arrTime;
    private int totalCnt; 
    private String state;
    
  //SALES VO
  	private String paymentMethod;
  	private String cardNo;
  	private String approvalNo;
  	private String paymentDate;
  	private int useMileage;
  	private int cardPayment;
  	
  	//route VO
  	private String flightName;
  	private int flightTime;
  	
  	private String planeName;
	
}
