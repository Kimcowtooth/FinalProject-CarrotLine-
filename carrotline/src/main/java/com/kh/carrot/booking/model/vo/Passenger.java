package com.kh.carrot.booking.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Passenger {
	
	private int ticketNo;//	TICKET_NO	NUMBER
	private String engName;//	ENG_NAME	VARCHAR2(20 BYTE)
	private String gender;//	GENDER	VARCHAR2(1 BYTE)
	private String nationality;//	NATIONALITY	VARCHAR2(100 BYTE)
	private Date birthday;//	BIRTHDAY	DATE
	private String passportNo;//	PASSPORT_NO	VARCHAR2(20 BYTE)
	
}