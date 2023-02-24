<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko-KR">
    <head>
    <title>캐롯라인 | carrotline</title>

    	<!-- CSS 영역 -->	
		<script src='https://kit.fontawesome.com/77ad8525ff.js' crossorigin="anonymous"></script>
   		 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/pay/pay.css">
        <!-- 상단 노출 아이콘 -->
         <link rel="shortcut icon" type="image/x-icon" href="https://i.pinimg.com/564x/14/48/c1/1448c186eca4cbc8972c3c4d12782d05.jpg">

		<script src="http://code.jquery.com/jquery-latest.js"></script>

        <style type="text/css">
            div.debug {
                display:none;
            }
        </style>

    </head>
    
    
    <body class="payment Landscape" style="overflow: visible;">
	<c:import url="../common/header.jsp" />

    <!-- 본문 바로가기 -->
    <div class="skip_nav" title="스킵메뉴">
        <a href="#content">본문 바로가기</a>
    </div>
    <!--// 본문 바로가기 -->

    <div id="wrap" data-loading="" style="height: auto; overflow: auto;">
        <!--// begin headerFragment -->

	<div class="header">
	    <div class="header_inner">
	        <a class="top_logo" onclick="returnCancelUrl('gWwf8EJHnaj+ner9VbSJiwIJHjJmAw09aEfaaR9/G8ooxsi3QEhv5Fz+72EFf/t4swJ7mqlXplc6SzaJuEKphw==');">
	            
	            
	                <!-- 일반 로고(헤더 상단 로고 이미지) -->
	                <img alt="tway" src="https://i.pinimg.com/564x/14/48/c1/1448c186eca4cbc8972c3c4d12782d05.jpg">
	            
	
	            <h1>캐럿항공</h1>
	        </a>
	        <span class="page-tit">결제</span>
	        <a class="btn_back"><span class="hidden">이전화면으로이동</span></a>
	        <a class="btn_home"><span class="hidden">홈화면으로이동</span></a>
	    </div>
	</div>
	
	<!-- container -->
	<iframe height="0" name="paymentFrame" scrolling="no" style="display:none;" width="0"></iframe>
	
	<div id="container">
	    <!-- content  -->
	    <div class="content" id="content">
	
	
	<!-- 쿠폰 선택 및 할인 혜택 -->
	<section class="discount_coupon_wrap cpnPaymentEventInfo" id="couponInfo">
	    <div class="con_tit_wrap">
	        <h3 class="con_tit">마일리지</h3>
	    </div>
	    <div class="flex_wrap">
	        <!-- 비회원 -->
	        
	        <!-- //비회원 -->
	        <!-- 회원 -->
	        <div class="flex_con coupon_con couponInfo">
	            <div class="coupon_available">
	                <div class="coupon_about">
	                    <span class=" vertical_middle">사용가능 마일리지</span>
	                    <div>
	                        <b class="red vertical_middle" id="availableCoupon"><fmt:formatNumber value="${loginUser.mileage}" pattern="#,###,###"/></b>
	                        <span class="vertical_middle">point</span>
	                    </div>
	                </div>
	                <button class="btn_small" date-id="layer_cp_benefit" date-type="layer" onclick="btn_mil();">마일리지 안내</button>
	            </div>
	            <!-- 사용 마일리지(사용/모두사용/사용취소)  -->
	            <div class="coupon_select select">
	                <input type="text" class="use_mileage_input" id="useMil" style="text-align: right" placeholder="0"/>
	                <button class="mileage_use btn_N" data-state="N">모두사용</button>                
					<button class="mileage_use btn_Y" data-state="Y" style="display: none;">사용취소</button>
	            </div>
	        </div>
	                
	        
	        <!-- 회원 -->
	        <div class="slide_wrap wrap_sale paymentEventInfo">
	            <div class="slick-track slick-initialized slick-slider slick-dotted"><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 2360px; transform: translate3d(-944px, 0px, 0px);"><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 472px;"><div><div class="slider_con" style="width: 100%; display: inline-block;">
	</div></div></div><div class="slick-slide slick-cloned" data-slick-	index="1" aria-hidden="true" tabindex="-1" style="width: 472px;"><div><div class="slider_con" style="width: 100%; display: inline-block;">
	<div class="notice_tit_area">
	<span class="notice_sort">안내</span>
	<span class="notice_tit">이벤트 안내</span></div>
	<ul class="notice_con">
	<li>이벤트 내용 : Event Content</li>
	<li>이벤트 방법 : Event way</li>
	<li>이벤트 기간 : Event Time</li>
	</ul>
	</div></div></div><div class="slick-slide slick-cloned" data-slick-index="3" aria-hidden="true" tabindex="-1" style="width: 472px;"><div><div class="slider_con" style="width: 100%; display: inline-block;">
	<div class="notice_tit_area">
	<span class="notice_sort">안내</span>
	<span class="notice_tit">이벤트 안내</span></div>
	<ul class="notice_con">
	<li>이벤트 내용 : 캐럿항공과 함께하는 OPEN 이벤트 </li>
	<li>이벤트 방법 : 캐럿항공을 이용하는 모든 손님</li>
	<li>이벤트 기간 : 2023/01/01 ~ 2023/01/31</li>
	</ul>
	</div></div></div></div></div><ul class="slick-dots" style="display: table;" role="tablist"><li class="" role="presentation"><a><span class="now_pagi">01</span> <span class="dotmaxnum total_pagi"></span></a></li><li role="presentation" class="slick-active"><a><span class="now_pagi">02</span> <span class="dotmaxnum total_pagi"></span></a></li></ul></div>
	        </div>
	    </div>
	</section>
	

	<c:forEach var="payCookie" items="${cookie.cookieAll }">
		<c:if test="${payCookie.name == cookieAll}">
		<td class="pay_price_table">
			<h1>${payCookie.caRouteCost}</h1>
		</td>
		</c:if>
	</c:forEach>

	
	
	
	<!-- 결제 정보 -->
	<section class="payment_info_wrap paymentInfo">
	    <div class="con_tit_wrap">
	        <h3 class="con_tit">결제 정보</h3>
	    </div>
	    <div class="price_detail_wrap">
	        <!-- 운임 및 할인리스트 -->
	        
	       
	        <dl class="calc_list">
	            <dt>결제 총액</dt>
	            <dd class="pay_totalPrice">${totalPrice}</dd>
	        </dl>
	        <dl class="calc_list">
	            <dt>사용 마일리지</dt>
	            <dd class="pay_Mileage"></dd>
	        </dl>
	        <!-- //운임 및 할인리스트 -->
	        <!-- 총 결제금액: price_sum -->
	        <dl class="price_sum">
	            <dt>최종 결제 금액</dt>
	            <dd class="pay_finalTotalPrice"></dd>
	        </dl>
	        <!-- 총 결제금액 -->
	    </div>
	</section>
	
	
	
	<!-- 결제수단 -->
	<section class="payment_method_wrap paymentMethodBlock">
	    <form method="post" name="paymentForm">
	
	        <div class="con_tit_wrap">
	            <h3 class="con_tit">결제 수단</h3>
	        </div>
	        <div class="accordion_tab paymentMethodBlock" style="height: 120px;">
	            <ul class="tab_list">                
	            <!-- //2. 그외 -->                      
	            	<li class="tab_creditcard on">
	            		<div class="tab_cont paymentTab" id="PAY_GRP_EP" name="PAY_GRP_EP" style="display: block;">
	                    	<div class="wrap_payment">
	                        	<ul class="tab_menu_list">                                                                                    
	                            	<li>
	                                	<a class="btn_payment credit_card" href="javascript:void(0);" name="paymentMethod" data-ibsfoptype="CC" data-paymentcode="EPKP" data-ibsfopsubtype="KAKAOPAY" data-paymentdiv="EP" data-availextn="true">                                                     
	                                    	<img alt="" src="https://contents-image.twayair.com/payment/images/payment_icon/EPKP.png">                                         
	                                    </a>
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                </li>                       
	            </ul>
	        </div>
	    </form>
	
	
	    <input id="encPnrNumber" name="encPnrNumber" type="hidden" value="Zz8Tx/qOL6mQ3YtWznjOmQ==">
	    <!--// twaygtm > dataForm > gtmDataFormBooking -->
	    <input name="identCertLoc" type="hidden" value="EPSP">
	</section>
	<!-- //결제수단 -->
	
	<!-- button set -->
	<div class="button_wrap btn_payment" id="paymentBtnSet">
	    <button class="btn_type1 totalAmtBtn" id="paymentBtn" name="paymentBtn" type="button">결제하기</button>
	</div>
		
	    <!-- 1. 쿠폰 혜택 Layer-->
	<div class="layer layer_payment" id="layer_cp_benefit">
	    <div class="layer_header">
	        <h2>마일리지 안내 및 사용방법</h2>
	    </div>
	    <form id="allCoupons">
	        <input name="encTransactionId" type="hidden" value="gWwf8EJHnaj%2Bner9VbSJiwIJHjJmAw09aEfaaR9%2FG8ooxsi3QEhv5Fz%2B72EFf%2Ft4swJ7mqlXplc6SzaJuEKphw%3D%3D">
	        <input name="webSessionId" type="hidden" value="32aa1ded-f5f5-4066-a8d3-c1d8252c8359">
	        
	    </form>
	    <div class="layer_content" tabindex="0">
	        <div class="layer_coupon_wrap"><!-- 쿠폰 혜택 : layer_coupon_wrap-->
	            <div class="coupon_area">
	                <div class="coupon_list">
	                    <!-- 다운로드 가능한 쿠폰이 없는 경우 -->
	                    <p class="txt_null" id="noMoreDowonloadCoupon">마일리지 안내 content</p>
	                    <!-- 다운로드 가능한 쿠폰이 없는 경우 -->
	                    <!-- 다운로드 가능한 쿠폰이 있는 경우 -->
	                    
	                    <!-- 다운로드 가능한 쿠폰이 있는 경우 -->
	                </div>
	            </div>
	            <!-- 유의사항 -->
	            <div class="layer_list02_wrap">
	                <span class="layer_list_tit">유의사항</span>
	                <ul>
	                	<li>· 부가서비스 쿠폰은 예매 완료 후 [나의예약&gt;예약조회]메뉴에서 부가서비스를 추가 구매할 경우 사용이 가능합니다. </li>
						<li>· 결제 수단 편의점 결제, 무통장 입금 선택시 쿠폰사용이 불가합니다. </li>
					</ul>
	            </div>
	            <!-- //유의사항 -->
	        </div>
	    </div>
	    <div class="button_wrap btn_payment">
	        <button class="btn_type1" onclick="javascript:controlLayer('#layer_cp_benefit', '0');" type="button">확인</button>
	    </div>
	    <a class="btn_layer_close" href="javascript:controlLayer('#layer_cp_benefit', '0');">레이어 닫기</a>
	</div>
	<!--// 1. 쿠폰 혜택-->
	
	<!--// end footerFragment -->
	<div class="loading-container" style="width: 1920px; height: 961px; display: none;"><span style="top: 440.5px; left: 920px;"><lottie-player src="https://assets6.lottiefiles.com/packages/lf20_ypybg6wo.json" background="transparent" speed="1" style="width:100%; height:100%;" loop="" autoplay=""></lottie-player></span></div></div>
	
	<div class="dim" style="width: 1256; height: 1209; display: none;"></div>
	
	
		<script>
		
		$(document).ready(function(){
			
			/* 주문정보란 최신화 */
			totalPayment();
			
		});
		
// 		const setCookie = (name, json)=>{

// 			  let cookieValue = '';
// 			  let expire = '';
// 			  let period = '';

// 			  //쿠키 이름
// 			  cookieValue = name + '=' + JSON.stringify(json) + ';';

// 			  //쿠키를 사용할수 있는 경로
// 			  cookieValue += 'path=/ ;';

// 			  //쿠키 유효기간 설정
// 			  period = 30; //쿠키 유효시간
// 			  expire = new Date();
// 			  expire.setTime(expire.getTime() + 1000 * 3600 * 24 * period);
// 			  expire.toUTCString();
// 			  cookieValue += 'expires=' + expire + ';';

			  
// 			  document.cookie = cookieValue;
// 			};

// 			const json = {
// 				caRouteCost: 5000,
// 				caScheduleCost: 6000,
// 				caPlaneSizeCost: 7000,
// 				caSeatPrice: 4000,
// 				caCbPrice: 700,
// 				caFmPrice: 800,
// 				caTiPrice: 900
// 			};
// 			setCookie('cookieAll', json);

			
		/* 포인트 입력 */
		//0 이상 & 최대 포인트 수 이하
		$(".use_mileage_input").on("propertychange change keyup paste input", function(){
			const maxMileage = parseInt('${loginUser.mileage}');	
			
			let inputValue = parseInt($(this).val());	
			
			if(inputValue < 0){
				$(this).val(0);
			} else if(inputValue > maxMileage){
				$(this).val(maxMileage);
			}	
			
			totalPayment();
			
		});
		
		/* 포인트 모두사용 취소 버튼 
		 * Y: 모두사용 상태 / N : 모두 취소 상태
		 */
		$(".mileage_use").on("click", function(){
	
			const maxMileage = parseInt('${loginUser.mileage}');	
			
			let state = $(this).data("state");	
			
			if(state == 'N'){
				console.log("n");
				if(maxMileage<$(".pay_totalPrice").text()){
					$(".use_mileage_input").val(maxMileage);					
				}else{
					$(".use_mileage_input").val($(".pay_totalPrice").text());
				}
				
				$(".btn_Y").css("display", "inline-block");
				$(".btn_N").css("display", "none");
			} else if(state == 'Y'){
				console.log("y");
				
				$("#useMil").val(0);
				
				$(".btn_Y").css("display", "none");
				$(".btn_N").css("display", "inline-block");		
			}		
			
			totalPayment();
			
		});
		
		

		function totalPayment(){

			let totalPrice = $(".pay_totalPrice").text();//결제 총액
			let finalPrice = 0;
			let useMileage = $("#useMil").val();// 사용 마일리지(할인가격)
		
			console.log(totalPrice);
			console.log(useMileage);
			//최종 가격 (총 가격 - 사용 마일리지)
			finalPrice = totalPrice - useMileage;
			
			
			/*값 적용*/
			//총 가격
// 			$(".pay_totalPrice").text(totalPrice.toLocaleString());
			// 할인가(사용 마일리지)
			$(".pay_Mileage").text(useMileage.toLocaleString());	
			//최종 가격 
			if(finalPrice<0){
				alert("마일리지는 총 결제금액 이상으로 입력할 수 없습니다.");
				$(".pay_Mileage").text(0);
				$("#useMil").val(0);
				$(".btn_Y").css("display", "none");
				$(".btn_N").css("display", "inline-block");	
				$(".pay_finalTotalPrice").text(totalPrice);
				
				return false;
			}else{
				$(".pay_finalTotalPrice").text(finalPrice.toLocaleString());		
			}
		}
		
		$("#paymentBtn").click(function(){
// 			var INP = window.IMP;
// 			IMP.init('imp56662310');
			
// 			//DOM객체들에서 사용할 데이터 뽑기
// 			var paymentGoods = 
// 			var money = $(".pay_finalTotalPrice").text(finalPrice.toLocaleString());
			
			$(location).attr("href","${pageContext.request.contextPath}/kakaoPayment.pa");		
		
			
		})
		
		
		
		
		</script>

</body>
</html>