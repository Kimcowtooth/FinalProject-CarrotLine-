package com.kh.carrot.admin.model.vo;

import java.sql.Date;

import com.kh.carrot.booking.model.vo.Booking;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Sales {
	private int bookingNo;
	private String paymentMethod;
	private String cardNo;
	private String approvalNo;
	private String paymentDate;
	private int useMileage;
	private int cardPayment;
	
	private Booking booking;
	private Date bookingDate;
	

}
