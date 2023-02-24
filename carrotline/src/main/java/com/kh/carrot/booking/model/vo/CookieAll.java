package com.kh.carrot.booking.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class CookieAll {
	
	//항공예매 - 쿠키에 담을 변수
	
	//혜진단
	private String caKind;		//종류(편도/왕복)
	private String caDepartureAirport; //출발공항코드
	private String caArrivalAirport; //도착공항코드
	private String caDepCity;			//출발공항이름
	private String caArrCity;			//도착공항이름
	private String caDepartureDate;	//출발날짜
	private String caArrivalDate;	//도착날짜
	private String caConti;		//여행국가
	private int caAdult; 		//성인 수
	private int caChild; 		//소아 수
	private int caBaby; 		//유아 수
	
	//예약 1단계
	private int caScheduleNo; //일정번호
	private int caRouteCost; //노선기본금
	private int caScheduleCost; //운항일정추가금
	private int caPlaneSizeCost; //비행기기본비용
	
	//예약 2단계
	private String caEngName; //영문명
	private String caFirstName; //성 
	private String caLastName; //이름
	private String caGender; //성별
	private String caNationality; //국적
	private String caBirthday; //생년월일
	private String caPasspartNo; //여권번호
	
	//예약 3단계
	private String caSeatCode; //좌석코드
	private String caSeatPrice; //좌석 가격
	private String caCb; //위탁수하물 무게
	private String caCbPrice; //위탁수하물 가격
	private String caFm; //기내식
	private String caFmPrice; //기내식 가격
	private String caTi; //여행보험
	private String caTiPrice; //여행보험 가격
	
	//혜진단 필드
	public CookieAll(String caKind, String caDepartureAirport, String caArrivalAirport, String caDepartureDate,
			String caDepCity, String caArrCity, String caConti, int caAdult, int caChild, int caBaby) {
		super();
		this.caKind = caKind;
		this.caDepartureAirport = caDepartureAirport;
		this.caArrivalAirport = caArrivalAirport;
		this.caDepartureDate = caDepartureDate;
		this.caDepCity = caDepCity;			
		this.caArrCity = caArrCity;			
		this.caConti = caConti;		
		this.caAdult = caAdult;
		this.caChild = caChild;
		this.caBaby = caBaby;
	}
	
	//혜진단 필드
		public CookieAll(String caKind, String caDepartureAirport, String caArrivalAirport
				, String caDepartureDate, String caArrivalDate, String caDepCity
				, String caArrCity, String caConti, int caAdult, int caChild, int caBaby) {
			super();
			this.caKind = caKind;
			this.caDepartureAirport = caDepartureAirport;
			this.caArrivalAirport = caArrivalAirport;
			this.caDepartureDate = caDepartureDate;
			this.caArrivalDate = caArrivalDate;
			this.caDepCity = caDepCity;			
			this.caArrCity = caArrCity;			
			this.caConti = caConti;		
			this.caAdult = caAdult;
			this.caChild = caChild;
			this.caBaby = caBaby;
		}

	public CookieAll(String caKind, String caDepartureAirport, String caArrivalAirport, String caDepCity,
			String caArrCity, String caDepartureDate, String caArrivalDate, String caConti, int caAdult, int caChild, int caBaby,
			int caScheduleNo, int caRouteCost, int caScheduleCost, int caPlaneSizeCost, String firstName,
			String lastName, String caGender, String caNationality, String caBirthday, String caPasspartNo) {
		super();
		this.caKind = caKind;
		this.caDepartureAirport = caDepartureAirport;
		this.caArrivalAirport = caArrivalAirport;
		this.caDepCity = caDepCity;
		this.caArrCity = caArrCity;
		this.caDepartureDate = caDepartureDate;
		this.caArrivalDate = caArrivalDate;
		this.caConti = caConti;
		this.caAdult = caAdult;
		this.caChild = caChild;
		this.caBaby = caBaby;
		this.caScheduleNo = caScheduleNo;
		this.caRouteCost = caRouteCost;
		this.caScheduleCost = caScheduleCost;
		this.caPlaneSizeCost = caPlaneSizeCost;
		this.caFirstName = firstName;
		this.caLastName = lastName;
		this.caGender = caGender;
		this.caNationality = caNationality;
		this.caBirthday = caBirthday;
		this.caPasspartNo = caPasspartNo;
	}
	
	//예약 2단계 생성자
	public CookieAll(String caFirstName, String caLastName, String caGender, String caNationality, String caBirthday) {
		super();
		this.caFirstName = caFirstName;
		this.caLastName = caLastName;
		this.caGender = caGender;
		this.caNationality = caNationality;
		this.caBirthday = caBirthday;
	}

	// 예약 3단계 생성자
		public CookieAll(String caSeatCode, String caSeatPrice, String caCb, String caCbPrice, String caFm, String caFmPrice,
				String caTi, String caTiPrice) {
			super();
			this.caSeatCode = caSeatCode;
			this.caSeatPrice = caSeatPrice;
			this.caCb = caCb;
			this.caCbPrice = caCbPrice;
			this.caFm = caFm;
			this.caFmPrice = caFmPrice;
			this.caTi = caTi;
			this.caTiPrice = caTiPrice;
		}
		
	// 좌석 가격 불러오는 용
	public CookieAll(int caScheduleNo, String caSeatPrice) {
		super();
		this.caScheduleNo = caScheduleNo;
		this.caSeatPrice = caSeatPrice;
	}

	// 보험 값 제외하고 쿠키 생성
	public CookieAll(String caKind, String caDepartureAirport, String caArrivalAirport, String caDepCity,
			String caArrCity, String caDepartureDate, String caConti, int caAdult, int caChild, int caBaby,
			int caScheduleNo, int caRouteCost, int caScheduleCost, int caPlaneSizeCost, String caEngName,
			String caFirstName, String caLastName, String caGender, String caNationality, String caBirthday,
			String caPasspartNo, String caSeatCode, String caSeatPrice, String caCb, String caCbPrice, String caFm,
			String caFmPrice) {
		super();
		this.caKind = caKind;
		this.caDepartureAirport = caDepartureAirport;
		this.caArrivalAirport = caArrivalAirport;
		this.caDepCity = caDepCity;
		this.caArrCity = caArrCity;
		this.caDepartureDate = caDepartureDate;
		this.caConti = caConti;
		this.caAdult = caAdult;
		this.caChild = caChild;
		this.caBaby = caBaby;
		this.caScheduleNo = caScheduleNo;
		this.caRouteCost = caRouteCost;
		this.caScheduleCost = caScheduleCost;
		this.caPlaneSizeCost = caPlaneSizeCost;
		this.caEngName = caEngName;
		this.caFirstName = caFirstName;
		this.caLastName = caLastName;
		this.caGender = caGender;
		this.caNationality = caNationality;
		this.caBirthday = caBirthday;
		this.caPasspartNo = caPasspartNo;
		this.caSeatCode = caSeatCode;
		this.caSeatPrice = caSeatPrice;
		this.caCb = caCb;
		this.caCbPrice = caCbPrice;
		this.caFm = caFm;
		this.caFmPrice = caFmPrice;
	}

	

	


	
	
	

}