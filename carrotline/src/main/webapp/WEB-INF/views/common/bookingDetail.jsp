<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="ie=edge" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=1400">
<!-- <link rel="stylesheet" type="text/css" href="https://contents-image.twayair.com/homepage/css/style.css?ver=xLa2XMQS+lXZNnNZJT/w1o+tqU09m0cQds7pNdg4sJIh4Nk79MAhD2BFWRsfr5r2"> -->
<link rel="stylesheet" type="text/css" href="https://contents-image.twayair.com/homepage/css/waitMe.css">

<title>여정 정보 | 예약 조회 | 나의 예약 | 캐럿라인</title>
<!-- CSS 영역 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/reservationDetail.css">
<!-- <link rel="stylesheet" type="text/css" href="css/reservationDetail.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="https://contents-image.twayair.com/homepage/css/waitMe.css"> -->
<style type="text/css">
    div.debug {
        display:none;
    }
</style>

<!-- end, from Publishing -->
</head>
<body>
<%@include file="../common/header.jsp" %>

	<div id="wrap">

<!-- Contnent -->
<div id="container">
<div class="content" id="content">
    <!-- 컨텐츠 영역 -->
    <!-- 타이틀 -->
    <div class="pg_tit_wrap">
        <h2 class="pg_tit">여정 정보</h2>
    </div>
    <!--// 타이틀 -->

    <!-- 예약 정보 -->
    <div class="resevation_info_box">
        <span class="num">예약 번호 : ${bk.bookingNo}</span>
        <span class="passenger">총 ${bk.totalCnt}명</span>

    </div>
    <!-- 예약 정보 -->


    <!-- 나의 예약 목록 -->
    <div class="tab_wrap">
        <ul class="tab n3 added3">
            <li id="t1" class="on"><a href="#tab1" id="tabItinerary" name="tabItinerary" title="선택됨">여정 정보</a></li>
            <li id="t2"><a href="#tab2" id="tabPassenger" name="tabPassenger" title="선택됨">탑승객 상세정보</a></li>
        </ul>
        <h3 class="hidden">여정 정보</h3>
        <!-- 여정정보 -->
        <div class="tab_cont" id="tab1" tabindex="0" style="display: block;">
            <h4 class="hidden">여정 정보</h4>
            <!-- 구간정보 -->
            <div class="reservation_section">
    <ul>
        
            
                <!-- 특정 여정 선택인 경우 선택 SegmentGroupId 확인 -->
                
                    <!-- 리어컴 화면인 경우 : 변경 전 여정 -->
                    
                        <!-- 리어컴 화면인 경우 : 변경 후 여정 -->
                        
                            
                                <li>
                                    <div class="section_tit">
                                        <span class="num">구간1</span>
                                        <span class="status">
                                            상태 : 
                                            <i class="red">
                                               <c:choose>
                                                    <c:when test="${bk.state eq 'Y'}">
                                                		정상
                                                	</c:when>
                                                	<c:otherwise>
                                                		취소
                                                	</c:otherwise>
                                            	</c:choose>
                                            </i>
                                        </span>
                                    </div>
                                    <dl class="reservation_detail" data-segmentid="500" data-segindex="1">
                                        <dt>
                                            <c:set var="depDate" value="${bk.departureDate}"/>
                                            <span class="date">${fn:substring(depDate,0,10)}</span>
                                        </dt>
                                        <dd>
                                            <!-- 구간정보 -->
                                            <div class="service_section_box type02">
                                                <!-- 출발 -->
                                                <div class="service_name first">
                                                    <strong class="tit">${bk.departureCode}</strong>
                                                    <span class="addition">${bk.depCity}</span>
                                                </div>
                                                <!-- 출발 -->
                                                <!-- 설명 -->
                                                <div class="service_exp">
                                                    <p class="top">
                                                            <a class="air_info" date-id="flight_operate_info_layer" date-type="layer" href="#">${bkList.flightName}</a>
                                                    </p>
                                                    <p class="bttm">
                                                        ${bk.depTime} ~ ${bk.arrTime}
                                                        
                                                        <span class="divide">
                                                        <fmt:parseNumber integerOnly="true" value="${bk.flightTime div 60}"/>h ${bk.flightTime mod 60}m
                                                        </span>
                                                            <a date-id="aircraft_info_layer" date-type="layer" href="javascript:;void(0)">
                                                                <span class="air_model">${bk.planeName}</span>
                                                            </a>
                                                    </p>
                                                </div>
                                                <!--// 설명 -->
                                                <!-- 도착 -->
                                                <div class="service_name last">
                                                    <strong class="tit">${bk.arrivalCode}</strong>
                                                    <span class="addition">${bk.arrCity}</span>
                                                </div>
                                                <!-- 도착 -->
                                            </div>
                                            <!--// 구간정보 -->
                                        </dd>
                                    </dl>
                                </li>
    </ul>
</div>
            <!-- 구간정보 -->

            <div class="con_tit_wrap mt70">
                <h3 class="con_tit">탑승자 정보 조회 및 예약 취소</h3>
            </div>
            <div class="reservation_link_box">
                <p class="txt_guide">탑승자 정보 조회와 예약하신 여정 취소가 필요한 경우 아래 메뉴를 이용하세요.</p>
                <div class="lst_lnk_bx">
                    <a class="ico_chg" date-id="changeReservationAuth_layer" date-type="layer" href="#none">
                        <span>전체 탑승객 정보 조회</span>
                    </a>
                    <a class="ico_cnl" date-id="changeReservationAuth_layer" date-type="layer" href="#none">
                        <span>전체 탑승객 예약 취소</span>
                    </a>
                </div>
            </div>

                <!-- 결제 내역 -->
                <div class="con_tit_wrap mt70">
                    <h3 class="con_tit">결제 내역</h3>
                </div>
                <div class="grid">
    <table class="tb_col">
        <caption>결제 내역</caption>
        <colgroup>
            <col style="width:15%">
            <col style="width:*">
            <col style="width:15%">
            <col style="width:20%">
            <col style="width:20%">
        </colgroup>
        <thead>
            <tr>
                <th>결제 방법</th>
                <th>카드번호</th>
                <th>승인번호</th>
                <th>결제일</th>
                <th>결제 금액</th>
            </tr>
        </thead>
        <tbody>
                    <tr>
                        <td>
                                마일리지
                        </td>
                        <td>
                            
                            
                        </td>
                        <td></td>
                        <td>${bk.paymentDate}</td>
                        <td>
                            <p>KRW  ${bk.useMileage}</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                ${bk.paymentMethod}
                        </td>
                        <td>
                                ${bk.cardNo} 
                        </td>
                        <td>${bk.approvalNo}</td>
                        <td>${bk.paymentDate}</td>
                        <td>
                            <p>KRW ${bk.cardPayment}</p>
                        </td>
                    </tr>
        </tbody>
    </table>
</div>  <!-- /* paymentInfo fragment 적용 -  190224 PJH */ -->
                <!-- 결제 내역 -->

            <!-- /* alliance Banner */ -->

            
        </div>



        <!-- 탑승객 상세정보 -->
        <div class="tab_cont" id="tab2" tabindex="-1" style="display: none;">
            <h4 class="hidden">탑승객 상세 정보</h4>
            <div class="passenger_list_wrap">
                <div class="passenger_list">
                    <ul>
                        <c:forEach var="tY" items="${tListY}" varStatus="status">
                            <li>
                                <a class="title on i${status.index}" href="#none">
                                    <span>
                                        <span class="name">${tY.engName}</span>
                                        <span class="sex">성인</span>
                                        <span class="date">${tY.birthday}</span>
                                    </span>
                                    <div class="price_wrap">
                                            
                                        <span class="unit">KRW</span>
                                        <span class="price">${tY.routeCost+tY.scheduleCost+tY.planeSizeCost+tY.cbPrice+tY.fmPrice+tY.tiPrice}</span>
                                            
                                    </div>
                                </a>
                                <div class="passenger_cont" style="display: block;">
                                            
                                                <div class="section_tit">
                                                    <h5>구간</h5>
                                                </div>
                                                <!-- 구간정보 -->
                                                <div class="section_nav">
                                                    <span class="route start pl0">
                                                        <i class="eng">${bk.departureCode}</i>
                                                        <i>${bk.depCity}</i>
                                                    </span>
                                                    <span class="route end">
                                                        <i class="eng">${bk.arrivalCode}</i>
                                                        <i>${bk.arrCity}</i>
                                                    </span>
                                                    <span class="sub_price">
                                                        <i class="sub_tit">소계</i>
                                                        
                                                            <i class="unit">KRW</i>
                                                            <i class="price">
                                                            	${tY.routeCost+tY.scheduleCost+tY.planeSizeCost+tY.cbPrice+tY.fmPrice+tY.tiPrice}
<!--                                                             	+tList.좌석가} -->
                                                            </i>
                                                        
                                                    </span>
                                                </div>
                                                <!-- 구간정보 -->
                                                <div class="summary_list">
                                                    <dl class="fl">
                                                        <dt>항공 운임</dt>
                                                        <dd>KRW ${tY.routeCost+tY.scheduleCost}</dd>

                                                        <dt>위탁수하물 (${tY.cb}KG)</dt>
                                                        <dd>${tY.cbPrice}</dd>
                                                        
                                                        <dt>기내식(${tY.fm})</dt>
                                                        <dd>${tY.fmPrice}</dd>
                                                        
                                                    </dl>
                                                    <dl class="fr">
                                                        <dt>유류할증료</dt>
                                                        <dd>KRW ${tY.planeSizeCost}</dd>

                                                        <dt>좌석 번호(${tY.seatCode})</dt>
                                                        <dd>KRW 3,000</dd>
                                                        
                                                        <dt>여행보험(${tY.ti})</dt>
                                                        <dd>${tY.tiPrice}</dd>
                                                    </dl>
                                                </div>
                                                <!--// 내역 리스트 -->
                                                <div class="section_tit">
                                                    <h5>탑승자 정보</h5>
                                                </div>
                                                <!-- 구간정보 -->
                                                <!-- 구간정보 -->
                                                <div class="summary_list">
                                                    <dl class="fl">
                                                        <dt>예매번호</dt>
                                                        <dd>${tY.ticketNo}</dd>
                                                        <dt>성별</dt>
                                                        <dd>${tY.gender}</dd>
                                                    </dl>
                                                    <dl class="fr">
                                                         <dt>국적</dt>
                                                         <dd>${tY.nationality}</dd>
                                                         <dt>생년월일</dt>
                                                         <dd>${tY.birthday}</dd>
                                                    </dl>
                                                </div>
                                </div>
                            </li>
                        </c:forEach>
                        <c:forEach var="tN" items="${tListN}" varStatus="status">
                            <li>
                                <a class="title on i${status.index}" href="#none">
                                    <span>
                                        <span class="name">${tN.engName}</span>
                                        <span class="sex">성인</span>
                                        <span class="date">${tN.birthday}</span>
                                    </span>
                                    <div class="price_wrap">
                                            
                                        <span class="unit">KRW</span>
                                        <span class="price">${tN.routeCost+tN.scheduleCost+tN.planeSizeCost+tN.cbPrice+tN.fmPrice+tN.tiPrice}</span>
                                            
                                    </div>
                                </a>
                                <div class="passenger_cont" style="display: block;">
                                            
                                                <div class="section_tit">
                                                    <h5>구간</h5>
                                                </div>
                                                <!-- 구간정보 -->
                                                <div class="section_nav">
                                                    <span class="route start pl0">
                                                        <i class="eng">${bk.departureCode}</i>
                                                        <i>${bk.depCity}</i>
                                                    </span>
                                                    <span class="route end">
                                                        <i class="eng">${bk.arrivalCode}</i>
                                                        <i>${bk.arrCity}</i>
                                                    </span>
                                                    <span class="sub_price">
                                                        <i class="sub_tit">소계</i>
                                                        
                                                            <i class="unit">KRW</i>
                                                            <i class="price">
                                                            	${tN.routeCost+tN.scheduleCost+tN.planeSizeCost+tN.cbPrice+tN.fmPrice+tN.tiPrice}
<!--                                                             	+tList.좌석가} -->
                                                            </i>
                                                        
                                                    </span>
                                                </div>
                                                <!-- 구간정보 -->
                                                <div class="summary_list">
                                                    <dl class="fl">
                                                        <dt>항공 운임</dt>
                                                        <dd>KRW ${tN.routeCost+tN.scheduleCost}</dd>

                                                        <dt>위탁수하물 (${tN.cb}KG)</dt>
                                                        <dd>${tN.cbPrice}</dd>
                                                        
                                                        <dt>기내식(${tN.fm})</dt>
                                                        <dd>${tN.fmPrice}</dd>
                                                        
                                                    </dl>
                                                    <dl class="fr">
                                                        <dt>유류할증료</dt>
                                                        <dd>KRW ${tN.planeSizeCost}</dd>

                                                        <dt>좌석 번호(${tN.seatCode})</dt>
                                                        <dd>KRW 3,000</dd>
                                                        
                                                        <dt>여행보험(${tN.ti})</dt>
                                                        <dd>${tN.tiPrice}</dd>
                                                    </dl>
                                                </div>
                                                <!--// 내역 리스트 -->
                                                <div class="section_tit">
                                                    <h5>탑승자 정보</h5>
                                                </div>
                                                <!-- 구간정보 -->
                                                <!-- 구간정보 -->
                                                <div class="summary_list">
                                                    <dl class="fl">
                                                        <dt>예매번호</dt>
                                                        <dd>${tN.ticketNo}</dd>
                                                        <dt>성별</dt>
                                                        <dd>${tN.gender}</dd>
                                                    </dl>
                                                    <dl class="fr">
                                                         <dt>국적</dt>
                                                         <dd>${tN.nationality}</dd>
                                                         <dt>생년월일</dt>
                                                         <dd>${tN.birthday}</dd>
                                                    </dl>
                                                </div>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <!--// 탑승객별 상세정보 -->
    </div>

    <!-- 20190326 : 목록 이동 버튼 추가 -->
    <div class="btn_wrap mt60 mb150">
        <a class="btn_large red" href="myPage.co">목록 이동</a>
    </div>
    <!--// 20190326 : 목록 이동 버튼 추가 -->


    <!--// 나의 예약 목록 -->
    <!--// 컨텐츠 영역 -->
</div>
</div>

        <!--// end content -->



    </div>
   
<script>

	//여정 정보 / 탑승객 상세 정보 
	$('.tab.n3').on('click','li',function(){
		let $tab = $(this).attr('id'); 
		console.log($tab);
		if($tab=='t1'){
			$('#tabPassenger').parent('li').removeClass('on');
			$('#tabItinerary').parent('li').addClass('on');
			$('#tab2').css('display','none');		
			$('#tab1').css('display','block');		
		}
		else if($tab=='t2'){
			$('#tabItinerary').parent('li').removeClass('on');
			$('#tabPassenger').parent('li').addClass('on');
			$('#tab1').css('display','none');		
			$('#tab2').css('display','block');
		}
	})	
	
	//탑승객 상세정보 개인별 보여주고 닫기
	
	
	$('.passenger_list').on('click','a',function(){
		//클릭한 거에 자식 div의 display속성이 none이면 block으로 바꿔주고 아니면 반대로 처리해주
		let disCtl = $(this).next().css('display');
		//console.log($(this).next());
		console.log(disCtl);
		
		if(disCtl=='block'){
			$(this).removeClass('on');
			$(this).next().css('display','none');
		}else {
			$(this).addClass('on');
			$(this).next().css('display','block');
		}
		
	})	
	
</script>
</body>
</html>