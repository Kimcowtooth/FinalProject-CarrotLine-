<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,java.util.Arrays"%>
<%@page import="java.net.URLDecoder,
				com.google.gson.Gson,
				com.kh.carrot.booking.model.vo.CookieAll"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
//1. 쿠키 정보 가져오기
Cookie[] cookies = request.getCookies();
String cName="";
String cookieValue="";
CookieAll[] cookieAllList = null;

if(cookies != null){
    for(int i=0; i<cookies.length; i++){
    	if(cookies[i].getName().equals("cookieSet")){
    		
	        //2. 쿠키 값 가져오기
	        cookieValue = URLDecoder.decode(cookies[i].getValue(), "UTF-8");
	        
	        Gson gson = new Gson();
			cookieAllList = gson.fromJson(cookieValue, CookieAll[].class);
			
// 			System.out.println("list for문으로 확인하기");
			for(CookieAll ca : cookieAllList) {
// 				System.out.println("-----------JSP-----------");
// 				System.out.println("CaConti : "+ca.getCaConti());
// 				System.out.println("-----------");
			}
    	}
    }
}
%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
    
	<meta name="viewport" content="width=1400">
    <title>결제 | 캐럿항공</title>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
	
    <meta charset="UTF-8">
    <meta content="noindex" name="robots">
    <meta content="ie=edge" http-equiv="X-UA-Compatible">

    <meta content="5eadc56f-adb0-43a8-becf-a41f108be237" name="_csrf">
    <meta content="X-CSRF-TOKEN" name="_csrf_header">

    <meta http-equiv="content-language" content="ko-KR">

    <!-- SNS Sharing -->

    <!-- CSS 영역 -->
    
		<link rel="stylesheet" type="text/css" href="https://contents-image.twayair.com/homepage/css/style.css?ver=eiPLuw10c/wGkmZm05kJBqOeoj79XppENHTPNVm2jVzmpvG9vWzElzodeG437dvZ">
        <link rel="stylesheet" type="text/css" href="https://contents-image.twayair.com/homepage/css/waitMe.css">

		<!-- 상단 노출 아이콘 -->
        <link rel="shortcut icon" type="image/x-icon" href="https://i.pinimg.com/564x/14/48/c1/1448c186eca4cbc8972c3c4d12782d05.jpg">

        <style type="text/css">
            div.debug {
                display:none;
            }
        </style>
</head>
<body class="booking">
<c:import url="../common/header.jsp" />


<!-- container -->
<div id="container">
    <!-- content -->
    <div class="content" id="content">
    <div id="layerTest"></div>

    <div class="tit_booking_wrap">
        <h2 class="pg_tit">항공권 예매</h2>
        <div class="step_booking">
            <ol>
                <li class="step01 on past">
                    <span class="text_step">01  <em>여정 선택</em></span>
                </li>
                <li class="step02 on past">
                    <span class="text_step">02  <em>탑승자 정보 입력</em></span>
                </li>
                <li class="step03 on past">
                    <span class="text_step">03  <em>부가서비스 선택</em></span>
                </li>
                <li class="step04 on past">
                    <span class="text_step">04  <em>선택내역 확인 및 규정 동의</em></span>
                </li>
                <li class="step05 on past">
                    <span class="text_step">05  <em>결제</em></span>
                </li>
                <li class="step06 on">
                    <span class="text_step">06  <em>항공권 결제 완료</em></span>
                </li>
            </ol>
        </div>
    </div>

    <div class="result_msg complete fix mt60">
        <p class="tit">항공권 구매가 완료되었습니다.</p>
        

        <!-- 티웨이플러스 추가, 2022-10-20, dhkim -->
        
        <!-- // 티웨이플러스 추가, 2022-10-20, dhkim -->

        <div class="txt">
            <ul class="ul_dot txt_left pl40">
                <li>예매확인증(E-ticket)은 출국 및 세관 통과 시 요구할 수 있으므로 탑승자는 반드시 지참하시기 바랍니다.</li>
                <li>국제선의 경우 예매확인증(E-ticket) 영문 이름과 여권상의 영문 이름이 다른 경우 탑승이 거절될 수 있으니 반드시 확인하세요.</li>
                <li>각 공항 별 탑승 수속 마감이 다르므로 공항에 도착 하셔야 할 시간을 반드시 확인 하시기 바랍니다.</li>
                <li>국내선의 경우 신분증 미 소지 시 탑승이 불가 하오니 신분증을 꼭 지참하여 주시기 바랍니다.</li>
                <li>해당 예약은 나의 예약 메뉴 에서 조회 및 변경/취소가 가능합니다. 등록하신 이메일 주소로 예매확인증 (E-ticket)이 발송 되었으니 확인 부탁 드립니다.</li>
            </ul>
        </div>

        <div class="btn_wrap">
            <button class="btn_small gray2" name="reservationDetailBtn">나의 예약 바로가기</button>
        </div>
    </div>

    <div class="con_tit_wrap mt70">
        <h3 class="con_tit">예약 정보</h3>
    </div>
    <div class="grid mt20">
        <table class="tb_col">
            <caption>예약정보 표 - 예약 번호, 예약 일자, 예약자, 휴대푠, 이메일의 순서로 정보확인</caption>
            <colgroup>
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">예약 번호</th>
                    <th scope="col">예약 일자</th>
                    <th scope="col">예약자</th>
                    <th scope="col">연락처</th>
                    <th scope="col">이메일</th>
                    <th scope="col">영수증</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><span class="point">YAFXCJ</span></td>
                    <td id="today"></td>
                    <td>${loginUser.korName }</td>
                    <td>
                            ${loginUser.phone }
                    </td>
                    <td>
                            ${loginUser.email }
                    </td>
                    <td>
                    	<button class="sbtn_cont mt10" OnClick="location.href ='salesSlip.pa'">매출전표</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    </div>
	<!-- //content -->
</div>
<script>
	$(function(){
		
	let now = new Date();
	console.log(now);
	var year = now.getFullYear(); //연도
	var month = now.getMonth()+1; //월
	var date = now.getDate(); //일
	var day = now.getDay(); //요일
	var dayKor = "";
			switch(day){
			case 1: 
				dayKor = "월요일";
			case 2: 
				dayKor= "화요일";
			case 3: 
				dayKor = "수요일";
			case 4: 
				dayKor = "목요일";
			case 5: 
				dayKor = "금요일";
			case 6: 
				dayKor = "토요일";	
			case 7: 
				dayKor = "일요일";
			}
	dayKor = dayKor.substr(0,1);
	
	if(month<10){
		month = "0" + month;		
	}
	
	
	let totalToday = year + "-" + month + "-" + date + "-" + dayKor;
	console.log(totalToday);

	$("#today").text(totalToday);
	
	});
	
	
</script>

<!-- //container -->
<c:import url="../common/footer.jsp" />

</body>
</html>