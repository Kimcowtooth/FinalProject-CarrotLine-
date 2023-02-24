<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CARROT LINE Booking</title>
<link href="<%=request.getContextPath()%>/resources/css/reset.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/common/header.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/booking/bookingWrite.css" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src='https://kit.fontawesome.com/77ad8525ff.js' crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>


<style>
	.bs4-order-tracking{margin-bottom: 30px;overflow: hidden; color: #878788;padding-left: 0px;margin-top: 30px} 
	.bs4-order-tracking li{list-style-type: none;font-size: 13px;width: 15%;   float: left;position: relative;font-weight: 400;color: #878788;text-align: center}
	.bs4-order-tracking li:first-child:before{margin-left: 15px !important;padding-left: 11px !important;text-align : left !important}
	.bs4-order-tracking li:last-child:before{margin-right: 5px !important;padding-right: 11px !important;text-align : right !important}
	.bs4-order-tracking li>div{color: #fff;width: 29px; height: 29px; text-align: center; line-height: 29px;display: block;font-size: 12px;background: #878788;border-radius: 50%; margin: auto;}
	.bs4-order-tracking li>div>i{margin-top: 10px;}
	.bs4-order-tracking li:after{content: '';width: 150%;height: 2px;background: #878788;position: absolute;left: 0%;right: 0%;top: 15px;z-index: -1}
	.bs4-order-tracking li:first-child:after{left: 50%}
	.bs4-order-tracking li:last-child:after{left: 0%!important;width: 0% !important}
	.bs4-order-tracking li.active{font-weight: bold;color: #dc3545}
	.bs4-order-tracking li.active>div{background: #da5c3d}
	.bs4-order-tracking li.active:after{background: #da5c3d}
	.card-timeline{background-color: #fff;z-index: 0}
	
	input[type="checkbox"], input[type="radio"]{
	display: none;
}
	input[type="radio"]:checked + label {
	    background-position: 0 -20px;}
	input[type="radio"] + label {
	    height: 20px;
	    padding: 0 30px;
	    background: url(<%=request.getContextPath() %>/resources/images/bg_radio.png) no-repeat;
	    font-size: 16px;
	    color: #222;
	    vertical-align: middle;
	    line-height: 18px;}
	/* checkbox */
	input[type="checkbox"]:checked + label {
	    background: url(<%=request.getContextPath() %>/resources/images/bg_checkbox_check.png) no-repeat;
	}
	
	input[type="checkbox"] + label {
	    min-height: 20px;
	    padding: 0 40px 0 30px;
	    background: url(<%=request.getContextPath() %>/resources/images/bg_checkbox_default.png) no-repeat;
	    font-size: 16px;
	    color: #222;
	    vertical-align: middle;
	    line-height: 18px;
	}
	
	table .bth{
		background-color: #EB8401;
	}
	
	#btn{
		background-color: #EB8401;
	}
	
	/* checkbox 끝  */
	
	select {
		height: 46px;
		padding: 0 45px 0 15px;
		margin-right: 10px;
		border: 1px solid #f3f3f3;
		border-bottom: 1px solid #ddd;
		background: #f3f3f3 url('<%=request.getContextPath() %>/resources/images/bg_select_arrow.png') no-repeat
			right 13px top 50%;
		background-size: 12px 8px;
		color: #222;
		vertical-align: middle;
		-webkit-appearance:none;
	}
	
</style>
</head>
<body>


<form action="${pageContext.request.contextPath}/bookingPage3.re" method="post">
<section>

	<!--넘어가는 과정 추가 -->
	<div class="card card-timeline px-2 border-none">
		<ul class="bs4-order-tracking"> 
			<li class="step active">
				 <div><i class="fas fa-check"></i></div> 1.여정검색 </li>
			<li class="step active"> 
				<div><i class="fas fa-check"></i></div> 2.탑승자 정보 입력 </li> 
			<li class="step "> 
				<div><i class="fas fa-check"></i></div> 3.부가서비스 </li>
			<li class="step "> 
				<div><i class="fas fa-check"></i></div> 4.선택내역 확인 및 규정동의 </li>
			<li class="step "> 
				<div><i class="fas fa-check"></i></div> 5.결제 </li> 
			<li class="step "> 
				<div><i class="fas fa-check"></i></div> 6.예약완료 </li>  			 
		</ul> 
	</div>
	<div id="title">탑승자 정보</div>
	<div id="tmsg" align="center">신분증에 기재된 이름,생년월일 등을 작성하세요.</div>
	
<div> 

<c:forEach begin="1" end="3" varStatus="status"> 
<table style="margin-left: 111px;"><!-- 성인1 -->
<tr><td colspan="2"><h4 style="font-size: 28px;">성인 ${status.index}</h4></td> </tr>

<tr> 
<td class="bth">성별</td> 
<td class="btb">
<input type="radio" name="adultList[${status.index-1}].gender" value="여" id="womana${status.index}" class="rfchk" checked="checked"> 
<label for="womana${status.index}">여자</label>
<input type="radio" name="adultList[${status.index-1}].gender" value="남" id="mana${status.index}" class="rfchk">  
<label for="mana${status.index}">남자</label>
</td>
</tr>

<tr>
<td class="bth">영문명</td> 
<td class="btb">
<input type="text" placeholder="성(신분증언어)" class="hannaName" name="firstName" id="firstName"> 
<input type="text" placeholder="이름(신분증언어)" class="hannaName" name="lastName" id="lastName"> 
</td>
</tr>

<tr>
<td class="bth">생년월일</td>
<td class="btb"> 

<select name="adultList[${status.index-1}].year" class="hn1"> 
<option selected="selected">년</option>
<c:forEach begin="1910" end="2023" varStatus="status1">
<option>${status1.index}</option>
</c:forEach>
</select> 

<select name="adultList[${status.index-1}].month" class="hn2"> 
<option selected="selected">월</option>
<c:forEach begin="01" end="12" varStatus="status2">
<option>${status2.index}</option>
</c:forEach>
</select> 

<select name="adultList[${status.index-1}].day" class="hn3"> 
<option selected="selected">일</option>
<c:forEach begin="01" end="31" varStatus="status3">
<option>${status3.index}</option>
</c:forEach>
</select> 
</td>
</tr>

<tr>
<td class="bth">국적</td>
<td class="btb">
	<div class="input_wrap">
		<input type="hidden" id="nationality" name="nationality">
							
		<input class="" id="nationCodeExplain" name="nationCodeExplain" title="거주 지역 입력" type="text" placeholder="지역을 검색해주세요." value="대한민국">
		<input id="apisNationCode" name="apisNationCode" type="hidden" value="KR">
	</div>
</td>
</tr>

<tr>
<td class="bth">개인할인(가는편)</td>
<td class="btb"> 
<select name="adultList[${status.index-1}].depCoupon">
<option>개인할인 선택 안함</option>
<option>[30%] 장애인 1~3급</option>
<option>[10%] 장애인 4~6급</option>
<option>[30%] 장애인 1~3급 동반 보호자 1인</option>
<option>[10%] 현역군인(휴가증소지의 의무복무사병)</option>
<option>[10%] 고엽제 후유증 환자</option>
<option>[30%] 국가유공상이 4급 동반 보호자 1인</option>
<option>[30%] 5.18민주유공 1~4급 동반 보호자 1인</option>
<option>[30%] 국가유공상이 1~3급 동반 보호자 1인</option>
<option>[30%] 독립유공자 동반 보호자 1인</option>
<option>[10%] 독립유공자 유족증소지자</option>
<option>[30%] 독립유공자</option>
<option>[10%] 국가유공자/5.18민주유공자/월남전 참전유공자 &#38; 유공자 유족증 소지자</option>
<option>[30%] 국가유공상이자 &#38; 5.18민주유공부상자</option>
</select>

 </td>
</tr>

</table><!-- 성인1 -->
<br><br>
<hr>
<br><br>
</c:forEach>


<!-- %%%%%%%% -->

<c:if test="${bTVO.child != 0}">
<c:forEach begin="1" end="${bTVO.child}" varStatus="status"> 
<table style="margin-left: 111px;"><!-- 아이1 -->

<tr><td colspan="2"><h4 style="font-size: 28px;">아이 ${status.index}</h4></td> </tr>

<tr> 
<td class="bth">성별</td> 
<td class="btb">
<input type="radio" name="caGender" value="여" id="select" class="rfchk" checked="checked"> 
<label for="select">여자</label>
<input type="radio" name="caGender" value="남" id="select" class="rfchk">  
<label for="select">남자</label>
</td>
</tr>

<tr>
<td class="bth">이름</td> 
<td class="btb"><input type="text" placeholder="성(신분증언어)" class="hannaName"  name="FirstName"> 
<input type="text" placeholder="이름(신분증언어)" class="hannaName" name="LastName"> </td>
</tr>

<tr>
<td class="bth">생년월일</td>
<td class="btb"> 

<select name="childList[${status.index-1}].year"> 
<option selected="selected">년</option>
<c:forEach begin="1910" end="2020" varStatus="status1">
<option>${status1.index}</option>
</c:forEach>
</select> 

<select name="childList[${status.index-1}].month"> 
<option selected="selected">월</option>
<c:forEach begin="01" end="12" varStatus="status2">
<option>${status2.index}</option>
</c:forEach>
</select> 

<select name="childList[${status.index-1}].day"> 
<option selected="selected">일</option>
<c:forEach begin="01" end="31" varStatus="status3">
<option>${status3.index}</option>
</c:forEach>
</select> 
</td>
</tr>

<tr>
	<td class="bth">국적</td>
	<td class="btb">
	<input type="text" placeholder="대한민국" name="adultList[${status.index-1}].memberNum" class="mnum" readonly="readonly">
	<input type="button" value="국적 검색" class="mbtn">
	</td>
	</tr>

<tr>
<td class="bth">개인할인(가는편)</td>
<td class="btb"> 
<select name="childList[${status.index-1}].depCoupon">
<option>개인할인 선택 안함</option>
<option selected="selected">[25%] 아이(만2~13세미만)할인</option>
<option>[50%] 국가유공상이자1~4급 동반 소아1인</option>
<option>[50%] 5.18부상 동반 소아1인</option>
<option>[50%] 독립유공자 동반 소아1인</option>
<option>[50%] 1~3급 소아 장애인 할인</option>
<option>[30%] 4~6급 소아 장애인 할인</option>
<option>[50%] 장애인(1~3급)동반 소아</option>
<option>[25%] 청소년(만14~18세미만)할인</option>
</select>

 </td>
</tr>

</table><!-- 아이1 -->
<div style="padding-left: 117px; padding-top: 18px;">소아/유아 동반 시, 반드시 나이를 확인할 수 있는 서류를 준비하시기 바랍니다.</div>
<hr>
</c:forEach>
</c:if>
</div>


<div>
<div id="title">예약자 연락처 정보</div>
<div id="tmsg">예약정보수신 연락처에 작성하신 이메일로 구매 결과와 여정안내서를 전송해드립니다.</div>

<table style="margin-left: 111px;">
<tr>
<td class="bth">이메일</td>
<td class="btb">
<input type="email" name="resEmail" class="hannaName" id="re" >
<input type="checkbox" name="resECheck" id="resECheck" checked="checked">
<label for="resECheck">이메일 항공권 수신동의</label>
</td>
</tr>

<tr>
<td class="bth">전화번호</td>
<td class="btb">
<input type="text" name="resPhone" class="hannaName" id="rp" maxlength="13">
<input type="checkbox" name="resPCheck" id="resPCheck" checked="checked">
<label for="resPCheck">SMS 수신 동의</label>
</td>
</tr>
</table>

</div>

<hr>

<div class="gray_box" id="rev_dom_notice">
	<h5>유의사항</h5>
	<ul class="list_type2">
		<li>예약 클래스에 따라 마일리지 적립이 불가하거나 적립률이 상이할 수 있으며, 실제 운항하는 항공사의 기준에 따라 적립이 이루어집니다.</li>
		<li>해당 항공사 마일리지 적립 규정상 적립이 불가한 경우에는 회원번호를 입력하셔도 적립이 되지 않습니다.</li>
		<li>현재 시스템 문제로, 숫자와 영문을 조합한 이메일 주소만 사용 가능합니다.</li>
	</ul>
</div>

</section>
<!-- Summary -->
<div class="summary_wrap">
    <div class="summary_top">
        <div class="summary_top_cont">
            <!-- 가격 -->
            <div class="price_wrap" id="summaryTopPrice">
                <span class="total">항공운임 등 총액</span>
                <span class="unit summary_currency">KRW</span>
                <span class="price" id="summary_title_amount">
                	${totalPrice}
                </span>
            </div>
            <!-- 가격 -->
            <!-- 버튼 -->
            <div class="float--right font0" id="buttonSet">
            	<!-- 
                   <button class="btn_large gray buttonControl" id="nextStep" type="button">다음 구간</button>
                   <button class="btn_large gray buttonControl" id="undoStep" type="button">이전 구간</button>
                   -->
               <button class="btn_large red buttonControl next" id="checkIn" style="background-color:  rgb(210, 44, 38); color: white;">다음 단계</button>
            </div>
        </div>
    </div>
</div>
<!-- Summary -->

</form>

<script>

//영문 성 input 정규식
$("#firstName").keyup(function(event) {
    if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
       var inputVal = $(this).val();
       $(this).val(inputVal.replace(/[^(a-zA-Z)]/gi, '').toUpperCase());
    }
 });
//영문 이름 input 정규식
$("#lastName").keyup(function(event) {
    if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
       var inputVal = $(this).val();
       $(this).val(inputVal.replace(/[^(a-zA-Z)]/gi, '').toUpperCase());
    }
 });



$('#rp').blur(function(){
	if($(this).val().length > 12 ){
		tel_check($(this).val());
	}
});





function tel_check(str){
	var regTel = /^(01[016789]{1}|070|02|0[3-9]{1}[0-9]{1})-[0-9]{3,4}-[0-9]{4}$/;
	
	if(!regTel.test(str)) {
		alert('올바른 전화번호를 입력하세요.');
		return false;
	}
	return true;
}


var x = 0;
$('.hannaName').blur(function(){
	if($(this).val()==""){
		x=1;
	}
});


$('#btn').click(function(){
	x=0;
	$('.hn1').each(function(){
		if($('.hn1 option:eq(0)').prop('selected')){
		x=3;
		}
	});
	
	$('.hn2').each(function(){
		if($('.hn2 option:eq(0)').prop('selected')){
		x=3;
	}
	});
	
	$('.hn3').each(function(){
		if($('.hn3 option:eq(0)').prop('selected')){
		x=3;
	}
	});

	$('.hannaName').each(function(){
		if($('.hannaName').val()==""){
			x=1;
		}
	});

	if($('#re').val() == ''){
		x=1;
	}

	if($('#rp').val() == ''){
		x=1;
	}

	if(x==1){
		alert("모든 항목을 입력하세요.");
	}else if(x==3){
		alert("생년월일을 입력하세요.");

	}else{
		$("#frm").submit();
	}
});

</script>

</body>
</html>