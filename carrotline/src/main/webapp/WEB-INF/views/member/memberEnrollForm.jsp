<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CARROT LINE / Member join</title>

<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/reset.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/layout.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/common.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/flyasiana.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/calendar.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/header.css">

<!-- <link rel="stylesheet" type="text/css" href="../resources/css/asiana/reset.css">
<link rel="stylesheet" type="text/css" href="../resources/css/asiana/layout.css">
<link rel="stylesheet" type="text/css" href="../resources/css/asiana/common.css">
<link rel="stylesheet" type="text/css" href="../resources/css/asiana/flyasiana.css">
<link rel="stylesheet" type="text/css" href="../resources/css/asiana/calendar.css"> -->

<style type="text/css">

.modal-content {
  position: relative;
  top: 300px;
  background-color: @modal-content-bg;
  background-clip: padding-box;
  border: 1px solid @modal-content-fallback-border-color; //old browsers fallback (ie8 etc)
  border: 1px solid @modal-content-border-color;
  border-radius: 0px;
  .box-shadow(0 3px 9px rgba(0, 0, 0, .5));
  // Remove focus outline from opened modal
  outline: 0;
}

element.style {
}

.btn_small {
    display: inline-block;
    padding: 12px 20px;
    min-width: 80px;
    min-height: 46px;
    font-size: 16px;
    color: #1a1a1a;
    text-align: center;
    line-height: 1.1;
    background-color: #fff;
    border: 1px solid #808080;
    border-radius: 3px;
    box-sizing: border-box;
    vertical-align: middle;
}

input[type=text], input[type=number], input[type=email], input[type=date], input[type=search], input[type=tel], input[type=time], input[type=password] {
    padding: 0 20px;
    height: 46px;
    font-size: 16px;
    color: #1a1a1a;
    border: 1px solid #ccc;
    background-color: #fff;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.w430 {
    width: 430px !important;
}

.modalArea{
	background-color: black;
}



</style>
</head>
<body>
<c:import url="../common/header.jsp" />

<form action="insert.me" method="post" id="join_form">
<div class="container" id="container">
		<div class="mem_wrap">
			<div class="indicator_wrap">
				<ul>
					<li><span class="hidden">1. 회원 약관동의</span></li> 				
					<li><span class="hidden">2. 본인인증</span></li> 				
					<li class="on"><span class="hidden">3. 기존 회원여부 확인</span></li> 				
					<li><span class="hidden">4. 회원 정보 입력(현재 단계)</span></li> 	
					<li><span class="hidden">5. 가입완료</span></li> 				
				</ul>
			</div>			
			<h3 class="mem_tit">회원정보 입력</h3> 
			<p class="text_type10">회원님의 개인정보를 입력해주시기 바랍니다.</p> 
			<h4>회원정보 입력</h4> 
			<table class="table_form">
				<caption>
					<strong>회원정보 입력 표로 상세한 회원 정보를 입력할 수 있습니다.</strong> 
					
				<p>한글명,영문명,성별,거주지역,아이디,비밀번호,비밀번호 확인,휴대전화,이메일,(선택) 유선전화,주소,뉴스레터 및 상품정보,이벤트 등 수신 로 구성된 표입니다.</p></caption>
				<colgroup>
					<col style="width:216px;">
					<col style="width:auto;">
				</colgroup>
				<tbody>					
					<tr>
						<th scope="row"><label for="userId">아이디</label></th> 
						<td>
							<input type="text" id="userId" name="userId" placeholder="6~15자리 영문+숫자" title="6~15자리 영문+숫자" style="width:298px;">
							<button type="button" class="btn_S white" id="btn_memberidCheck">중복확인</button>
							<button type="button" class="btn_S white" id="btn_idCheck" data-toggle="modal" data-target="#idCheck" style="display: none;">중복확인</button>
							<ul class="list_type3 fsz_14 mar_to10">
								<li>6 ~ 15자리 영문(대소문자 구별), 숫자 조합 입력 가능 <br>(단 한글, 공백, 특수문자 입력 불가)</li> 
							</ul>
							<p class="txt_error_Msg" id="error_id" style="display: none;"></p>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="userPwd">비밀번호</label></th> 
						<td>
							<input type="password" id="userPwd" autocomplete="off" name="userPwd" placeholder="영문+숫자+특수문자 8~20자리" title="영문+숫자+특수문자 8~20자리" style="width:298px;"> 
							<div class="tooltip_wrap">
								<a href="javascript:tooltipBlock();" class="btn_info">도움말</a> 
								<div class="layer_tooltip" style="width: 348px;">
									<div class="inner">
										<ul class="pwd_rule">
											<li>8자 이상<span class="unable">불가</span></li> 	
											<li>영문 대/소문자<span class="unable">불가</span></li>		
											<li>숫자<span class="unable">불가</span></li>		
											<li>특수문자<span class="unable">불가</span></li> 	
											<li>한글, 공백 입력 불가<span class="able">가능</span></li> 				
											<li>20자 이내<span class="able">가능</span></li> 		
											<li>보안정책상 사용 불가<span class="able">가능</span></li>
										</ul>
									</div>
									<a href="javascript:tooltipNone();" class="tooltip_close"><span class="hidden">닫기</span></a> 
								</div>	
							</div>
							<p class="txt_error_Msg" id="error_pw" style="display: none;"></p>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="userPwdConfirm">비밀번호 확인</label></th> 
						<td>
							<input type="password" id="userPwdConfirm" autocomplete="off" placeholder="영문+숫자+특수문자 8~20자리" title="영문+숫자+특수문자 8~20자리" style="width:298px;"> 
							<p class="txt_error_Msg" id="error_pwConfirm" style="display: none;"></p>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="korName">국문명</label></th> 
						<td>
							<input type="text" id="korName" name="korName" placeholder="한글 이름 입력 (예 : 홍길동)" title="한글 이름 입력 (예 : 홍길동)" style="width:314px;"> 
							<p class="txt_error_Msg" id="error_koreanName" style="display: none;"></p>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="engName">영문명</label></th> 
						<td>
							<input type="text" id="engName" name="engName" placeholder="영문 이름 입력 (예 : HOUNGGILDONG)" title="영문 이름 입력 (예 : HOUNGGILDONG)" style="width:314px;"> 
							<p class="txt_error_Msg" id="error_englishLastName" style="display: none;"></p>
						</td>
					</tr>
					<tr>          
						<th scope="row"><label for="input_gender">성별</label></th> 
						<td>
							<input type="radio" id="Male" value="M" name="gender" checked>
		                    <label for="Male">남성</label> &nbsp;&nbsp;
		                    <input type="radio" id="Female" value="F" name="gender">
		                    <label for="Female">여성</label> &nbsp;&nbsp; 
							<p class="txt_error_Msg" id="error_gender" style="display: none;"></p>
						</td>
					</tr>
					<tr>          
						<th scope="row"><label for="input_birthday">생년월일</label></th> 
						<td id="birthdaySum"> 
							<select id="select_year" style="width:120px" title="출생 년도"> 
								<option value="">출생년도</option> 
								<c:forEach var = "year" begin="1910" end="2023">
								<option value="${year }">${year}</option>
								</c:forEach>
							</select>
							<select id="select_month" style="width:120px" title="출생 년도"> 
								<option value="">월</option> 
								<c:forEach var = "month" begin="1" end="12">
								<option value="${month }">${month}</option>
								</c:forEach>
							</select>
							<select id="select_day" style="width:120px" title="출생 년도"> 
								<option value="">일</option> 
								<c:forEach var = "day" begin="1" end="31">
								<option value="${day }">${day}</option>
								</c:forEach>
							</select>
							<p class="txt_error_Msg" id="error_birthday" style="display: none;"></p>	
							<input type="hidden" id="birthday" name="birthday">
						</td>
					</tr>
					<tr>
						<th scope="row"><label>휴대전화</label></th> 
						<td id="korea_phone"> 
							<select id="select_koreaPhone" style="width:120px" title="휴대전화 번호 앞자리"> 
								<option value="">선택</option> 
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>
							<input type="text" id="input_koreaPhoneMiddle" placeholder="중간번호" title="휴대전화 번호 가운데 자리" maxlength="4" style="width:150px;" >- 	
							<input type="text" id="input_koreaPhoneLast" placeholder="끝 번호" title="휴대전화번호 끝자리" maxlength="4" style="width:150px;" > 		
							<p class="txt_error_Msg" id="error_koreaPhone" style="display: none;"></p>
							<input type="hidden" id="phonesum" name="phone">
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="ema
						il">이메일</label></th> 
						<td>
							<input type="text" id="email" placeholder="이메일 입력" title="이메일 아이디 입력" style="width:198px;"> @ &nbsp; 
							<select id="select_emailDomain" title="이메일 도메인 선택" style="width:180px;"> 
								<option value="">직접입력</option> 
								<option value="korea.com">korea.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="naver.com">naver.com</option>
								<option value="lycos.co.kr">lycos.co.kr</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="netian.com">netian.com</option>
								<option value="empal.com">empal.com</option>
								<option value="hanmir.com">hanmir.com</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="hanafos.com">hanafos.com</option>
								<option value="chol.com">chol.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="nate.com">nate.com</option>
								<option value="yahoo.com">yahoo.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="aol.com">aol.com</option>
								<option value="sbcglobal.net">sbcglobal.net</option>
								<option value="hotmail.co.kr">hotmail.co.kr</option>
								<option value="yahoo.co.jp">yahoo.co.jp</option>
							</select>
							<input type="text" id="input_emailDomain" placeholder="직접입력" title="직접입력" style="width:298px;"> 
							<p class="txt_error_Msg" id="error_emailID" style="display: none;"></p>
							<p class="txt_error_Msg" id="error_emailDomain" style="display: none;"></p>
							<input type="hidden" id="emailsum" name="email">
						</td>
					</tr>
					<tr>
						<th class="left" scope="row">거주 지역</th>
						<td>
							<div class="input_wrap">
								<input type="hidden" id="nationality" name="nationality">
													
								<input class="w430" id="nationCodeExplain" name="nationCodeExplain" title="거주 지역 입력" type="text" placeholder="지역을 검색해주세요." >
								<input id="apisNationCode" name="apisNationCode" type="hidden" value="KR">
							
								<a class="btn_small" data-toggle="modal" data-target="#modalArea" onclick="searchApisRegion();" >지역검색</a> 
<!-- 							<button class="btn_small" id="layerBtn" data-id="apis_region_layer" data-type="layer" onclick="searchApisRegion();" type="button">지역 검색</button> -->
							</div>
							<p class="txt_error_Msg" id="error_nationality" style="display: none;"></p>
							
							<div class="input_wrap regionDtlDiv" style="display: block;">
								<span class="select">
									
								</span>
							</div>
						</td>
						</tr>
					</tbody>
				 </table>
				 
			<div class="btn_wrap_ceType3">
				<button type="button" class="btn_L white" id="btn_cancel">취소</button> 
				<button type="button" class="btn_L red" id="btn_confirm">확인</button> 
			</div>
		</div>	
	</div>
	
		<div class="modal fade layer_wrap" id="idCheck" role="dialog">
			<div class="modal-content layer_pop" style="width:500px">
				<div class="modal-body pop_cont ">
					<p class="pop_tit st1">다른 아이디를 사용하시려면 입력 후 <br><span class="cal_red"></span>을 클릭해주시기 바랍니다.</p> 
										
					<div class="form_area2">
						<input type="text" id="input_laterInputId" placeholder="아이디 입력" title="아이디 입력" style="width:210px;"> 	
						<button type="button" class="btn_M white btn_minwidth" id="btn_layerIdChedk">중복확인</button> 	
					</div>
					<p id="p_idRule">아이디는 <span class="col_brown">6~15자리 영문(대소문자 구별), 숫자 조합 입력 가능 (단 한글, 공백, 특수문자 입력 불가)</span> 입니다.</p> 
						
					<p id="p_info" style="display: none;"></p>
				</div>
				<div class="btn_wrap_ceType2">
					<button type="button" class="btn_M red" id="btn_layerIdUse" disabled="">사용하기</button>
				</div> 			
				<a href="javascript:sharpNothig();" class="dim_close" id="btn_layerClose" data-dismiss="modal"><span class="hidden">닫기</span></a> 	
			</div>
		</div>
		
		  <div class="modal fade layer_wrap" id="modalArea" role="dialog">
	        <!-- 팝업 -->
			<div class="modal-content layer_pop" style="width:600px">
				<div class="layer_header">
					<h2>지역 검색</h2>
				</div>
	

			<div class="layer_content" tabindex="0">
				<div class="zcd_search mt0">
					<div class="input_wrap srh mt0 mb30">
						<input id="searchVal" maxlength="50" name="searchVal" type="text" placeholder="리스트에서 거주 지역을 선택하거나 직접 입력하십시오." title="리스트에서 거주 지역을 선택하거나 직접 입력하십시오.">
						<button type="button" class="btn_small">검색</button>
					</div>
					<span id="searchResultText" style="visibility: hidden;">
						<b>
							<span id="searchInputPtag"></span>
							<th:block>검색 결과</th:block>
						</b>
					</span>
					
			<script type="text/javascript">
					//지역검색 이벤트
					var searchApisRegion = function(){
						
							var apisNationCode = $("input[name=apisNationCode]").val();
							var apisRegionLayer = $('input[name="apis_region_layer').val(apisNationCode);
					}
					
					/*callback 이벤트*/
					//지역선택시 부모창 데이터 표시 callback함수
					var callbackSelectApisNation = function(code, codeExplain){
						$('input[name="apisNationCode"]').val(code);
						$('input[name="nationCodeExplain"]').val(codeExplain);
												
						setDetailRegion();
						}
					
					var setDetailRegion = function(){
						var code = $('input[name="apisNationCode"]').val();
						
						if(code == 'KR'){
							$(".regionDtlDiv").css("display", "block");
						}else{
							$(".regionDtlDiv").css("display", "none");
						}
					}

				</script>
		
					<!-- 검색 결과없음 -->
					<!-- <div class="no_result mt10">검색 결과가 없습니다.</div> -->
		
					<!-- 검색 결과있음 -->
					<div class="lst_country" tabindex="0">
						<ul>
							
								<li id="list_li_KR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="대한민국 (Republic of Korea)" data-code="KR" id="check-1" selected="selected">
										<label for="check-1">
											<span class="icon"></span>
											대한민국 (Republic of Korea)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="중국 (China)" data-code="CN" id="check-2">
										<label for="check-2">
											<span class="icon"></span>
											중국 (China)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GH">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="가나 (Ghana)" data-code="GH" id="check-3">
										<label for="check-3">
											<span class="icon"></span>
											가나 (Ghana)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="가봉 (Gabon)" data-code="GA" id="check-4">
										<label for="check-4">
											<span class="icon"></span>
											가봉 (Gabon)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_JP">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="일본 (Japan)" data-code="JP" id="check-5">
										<label for="check-5">
											<span class="icon"></span>
											일본 (Japan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GY">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="가이아나 (Guyana)" data-code="GY" id="check-6">
										<label for="check-6">
											<span class="icon"></span>
											가이아나 (Guyana)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_US">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="미국 (US)" data-code="US" id="check-7">
										<label for="check-7">
											<span class="icon"></span>
											미국 (US)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="감비아 (Gambia)" data-code="GM" id="check-8">
										<label for="check-8">
											<span class="icon"></span>
											감비아 (Gambia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TH">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="태국 (Thailand)" data-code="TH" id="check-9">
										<label for="check-9">
											<span class="icon"></span>
											태국 (Thailand)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GP">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="과달로프 (Guadaloupe)" data-code="GP" id="check-10">
										<label for="check-10">
											<span class="icon"></span>
											과달로프 (Guadaloupe)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="라오스 (Laos)" data-code="LA" id="check-11">
										<label for="check-11">
											<span class="icon"></span>
											라오스 (Laos)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GT">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="과테말라 (Guatemala&nbsp;)" data-code="GT" id="check-12">
										<label for="check-12">
											<span class="icon"></span>
											과테말라 (Guatemala&nbsp;)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TW">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="대만 (Taiwan)" data-code="TW" id="check-13">
										<label for="check-13">
											<span class="icon"></span>
											대만 (Taiwan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GU">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="괌 (Guam)" data-code="GU" id="check-14">
										<label for="check-14">
											<span class="icon"></span>
											괌 (Guam)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MY">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="말레이시아 (Malaysia)" data-code="MY" id="check-15">
										<label for="check-15">
											<span class="icon"></span>
											말레이시아 (Malaysia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GD">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="그레나다 (Grenada)" data-code="GD" id="check-16">
										<label for="check-16">
											<span class="icon"></span>
											그레나다 (Grenada)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_VN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="베트남 (Vietnam)" data-code="VN" id="check-17">
										<label for="check-17">
											<span class="icon"></span>
											베트남 (Vietnam)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="그루지야 (Gruziya)" data-code="GE" id="check-18">
										<label for="check-18">
											<span class="icon"></span>
											그루지야 (Gruziya)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="그리스 (Greece)" data-code="GR" id="check-19">
										<label for="check-19">
											<span class="icon"></span>
											그리스 (Greece)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GL">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="그린랜드 (Greenland)" data-code="GL" id="check-20">
										<label for="check-20">
											<span class="icon"></span>
											그린랜드 (Greenland)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GW">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="기네비쏘 (Guinea-Bissau)" data-code="GW" id="check-21">
										<label for="check-21">
											<span class="icon"></span>
											기네비쏘 (Guinea-Bissau)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="기니 (Guinea)" data-code="GN" id="check-22">
										<label for="check-22">
											<span class="icon"></span>
											기니 (Guinea)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CV">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="까뽀베르데 (Cape Verde)" data-code="CV" id="check-23">
										<label for="check-23">
											<span class="icon"></span>
											까뽀베르데 (Cape Verde)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="나미비아 (Namibia)" data-code="NA" id="check-24">
										<label for="check-24">
											<span class="icon"></span>
											나미비아 (Namibia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="나우루 (Nauru)" data-code="NR" id="check-25">
										<label for="check-25">
											<span class="icon"></span>
											나우루 (Nauru)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="나이지리아 (Nigeria)" data-code="NG" id="check-26">
										<label for="check-26">
											<span class="icon"></span>
											나이지리아 (Nigeria)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AQ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="남극 (Antarctica)" data-code="AQ" id="check-27">
										<label for="check-27">
											<span class="icon"></span>
											남극 (Antarctica)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_ZA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="남아프리카 (South Africa)" data-code="ZA" id="check-28">
										<label for="check-28">
											<span class="icon"></span>
											남아프리카 (South Africa)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NL">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="네덜란드 (Netherland)" data-code="NL" id="check-29">
										<label for="check-29">
											<span class="icon"></span>
											네덜란드 (Netherland)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="네덜란드령 안틸레스 (Netherlands&nbsp;Antilles)" data-code="AN" id="check-30">
										<label for="check-30">
											<span class="icon"></span>
											네덜란드령 안틸레스 (Netherlands&nbsp;Antilles)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NP">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="네팔 (Nepal)" data-code="NP" id="check-31">
										<label for="check-31">
											<span class="icon"></span>
											네팔 (Nepal)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="노르웨이 (Norway)" data-code="NO" id="check-32">
										<label for="check-32">
											<span class="icon"></span>
											노르웨이 (Norway)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NF">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="노퍽 (Norfolk)" data-code="NF" id="check-33">
										<label for="check-33">
											<span class="icon"></span>
											노퍽 (Norfolk)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NZ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="뉴질랜드 (New Zealand)" data-code="NZ" id="check-34">
										<label for="check-34">
											<span class="icon"></span>
											뉴질랜드 (New Zealand)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NC">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="뉴칼레도니아 (New&nbsp;Caledonia)" data-code="NC" id="check-35">
										<label for="check-35">
											<span class="icon"></span>
											뉴칼레도니아 (New&nbsp;Caledonia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NU">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="니우에 (Niue)" data-code="NU" id="check-36">
										<label for="check-36">
											<span class="icon"></span>
											니우에 (Niue)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="니제르 (Niger)" data-code="NE" id="check-37">
										<label for="check-37">
											<span class="icon"></span>
											니제르 (Niger)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_NI">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="니카라과 (Nicaragua)" data-code="NI" id="check-38">
										<label for="check-38">
											<span class="icon"></span>
											니카라과 (Nicaragua)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_DK">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="덴마크 (Denmark)" data-code="DK" id="check-39">
										<label for="check-39">
											<span class="icon"></span>
											덴마크 (Denmark)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_DM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="도미니카 (Dominica)" data-code="DM" id="check-40">
										<label for="check-40">
											<span class="icon"></span>
											도미니카 (Dominica)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_DO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="도미니카 공화국 (Dominican&nbsp;Republic)" data-code="DO" id="check-41">
										<label for="check-41">
											<span class="icon"></span>
											도미니카 공화국 (Dominican&nbsp;Republic)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_DE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="독일 (Germany)" data-code="DE" id="check-42">
										<label for="check-42">
											<span class="icon"></span>
											독일 (Germany)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TP">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="동티모르 (East Timor)" data-code="TP" id="check-43">
										<label for="check-43">
											<span class="icon"></span>
											동티모르 (East Timor)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LV">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="라트비아 (Latvia)" data-code="LV" id="check-44">
										<label for="check-44">
											<span class="icon"></span>
											라트비아 (Latvia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_RU">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="러시아 (Russia)" data-code="RU" id="check-45">
										<label for="check-45">
											<span class="icon"></span>
											러시아 (Russia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LB">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="레바논 (Lebanon)" data-code="LB" id="check-46">
										<label for="check-46">
											<span class="icon"></span>
											레바논 (Lebanon)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LS">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="레소토 (Lesotho)" data-code="LS" id="check-47">
										<label for="check-47">
											<span class="icon"></span>
											레소토 (Lesotho)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_RO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="루마니아 (Rumania)" data-code="RO" id="check-48">
										<label for="check-48">
											<span class="icon"></span>
											루마니아 (Rumania)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LU">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="룩셈부르크 (Luxemburg)" data-code="LU" id="check-49">
										<label for="check-49">
											<span class="icon"></span>
											룩셈부르크 (Luxemburg)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_RW">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="르완다 (Rewanda)" data-code="RW" id="check-50">
										<label for="check-50">
											<span class="icon"></span>
											르완다 (Rewanda)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="리베리아 (Liberia)" data-code="LR" id="check-51">
										<label for="check-51">
											<span class="icon"></span>
											리베리아 (Liberia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LY">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="리비아 (Libya)" data-code="LY" id="check-52">
										<label for="check-52">
											<span class="icon"></span>
											리비아 (Libya)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_RE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="리유니언 (Reunion)" data-code="RE" id="check-53">
										<label for="check-53">
											<span class="icon"></span>
											리유니언 (Reunion)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LT">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="리투아니아 (Lithuania)" data-code="LT" id="check-54">
										<label for="check-54">
											<span class="icon"></span>
											리투아니아 (Lithuania)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LI">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="리히텐슈타인 (Liechtenstein)" data-code="LI" id="check-55">
										<label for="check-55">
											<span class="icon"></span>
											리히텐슈타인 (Liechtenstein)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="마다가스카르 (Madagascar)" data-code="MG" id="check-56">
										<label for="check-56">
											<span class="icon"></span>
											마다가스카르 (Madagascar)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MH">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="마샬 군도 (Marshall Islands)" data-code="MH" id="check-57">
										<label for="check-57">
											<span class="icon"></span>
											마샬 군도 (Marshall Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_FM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="마이크로네시아 (Micronesia)" data-code="FM" id="check-58">
										<label for="check-58">
											<span class="icon"></span>
											마이크로네시아 (Micronesia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="마카오 (Macao)" data-code="MO" id="check-59">
										<label for="check-59">
											<span class="icon"></span>
											마카오 (Macao)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MW">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="말라위 (Malawi)" data-code="MW" id="check-60">
										<label for="check-60">
											<span class="icon"></span>
											말라위 (Malawi)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_ML">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="말리 (Mali)" data-code="ML" id="check-61">
										<label for="check-61">
											<span class="icon"></span>
											말리 (Mali)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MT">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="말타 (Malta)" data-code="MT" id="check-62">
										<label for="check-62">
											<span class="icon"></span>
											말타 (Malta)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MQ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="말티니크 (Martinique Island)" data-code="MQ" id="check-63">
										<label for="check-63">
											<span class="icon"></span>
											말티니크 (Martinique Island)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MX">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="멕시코 (Mexico)" data-code="MX" id="check-64">
										<label for="check-64">
											<span class="icon"></span>
											멕시코 (Mexico)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MC">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="모나코 (Monaco)" data-code="MC" id="check-65">
										<label for="check-65">
											<span class="icon"></span>
											모나코 (Monaco)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="모로코 (Morocco)" data-code="MA" id="check-66">
										<label for="check-66">
											<span class="icon"></span>
											모로코 (Morocco)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MU">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="모리셔스 (Mauritius)" data-code="MU" id="check-67">
										<label for="check-67">
											<span class="icon"></span>
											모리셔스 (Mauritius)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="모리타니 (Mauritania)" data-code="MR" id="check-68">
										<label for="check-68">
											<span class="icon"></span>
											모리타니 (Mauritania)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MZ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="모잠비크 (Mozambique)" data-code="MZ" id="check-69">
										<label for="check-69">
											<span class="icon"></span>
											모잠비크 (Mozambique)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MS">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="몬 트세라트 (Montserrat)" data-code="MS" id="check-70">
										<label for="check-70">
											<span class="icon"></span>
											몬 트세라트 (Montserrat)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MD">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="몰도바 (Moldova)" data-code="MD" id="check-71">
										<label for="check-71">
											<span class="icon"></span>
											몰도바 (Moldova)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MV">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="몰디브 (Maldives)" data-code="MV" id="check-72">
										<label for="check-72">
											<span class="icon"></span>
											몰디브 (Maldives)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="몽골 (Mongolia)" data-code="MN" id="check-73">
										<label for="check-73">
											<span class="icon"></span>
											몽골 (Mongolia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AS">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="미국령 사모아 (American Samoa)" data-code="AS" id="check-74">
										<label for="check-74">
											<span class="icon"></span>
											미국령 사모아 (American Samoa)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_UM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="미국령 소군도 (American small islands)" data-code="UM" id="check-75">
										<label for="check-75">
											<span class="icon"></span>
											미국령 소군도 (American small islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="미얀마 (Myanmar)" data-code="MM" id="check-76">
										<label for="check-76">
											<span class="icon"></span>
											미얀마 (Myanmar)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_VU">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="바누아투 (Vanuatu)" data-code="VU" id="check-77">
										<label for="check-77">
											<span class="icon"></span>
											바누아투 (Vanuatu)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BH">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="바레인 (Bahrain)" data-code="BH" id="check-78">
										<label for="check-78">
											<span class="icon"></span>
											바레인 (Bahrain)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BB">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="바베이도스 (Barbados)" data-code="BB" id="check-79">
										<label for="check-79">
											<span class="icon"></span>
											바베이도스 (Barbados)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BS">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="바하마 (Bahamas)" data-code="BS" id="check-80">
										<label for="check-80">
											<span class="icon"></span>
											바하마 (Bahamas)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BD">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="방글라데시 (Bangladesh)" data-code="BD" id="check-81">
										<label for="check-81">
											<span class="icon"></span>
											방글라데시 (Bangladesh)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="버뮤다 (Bermuda)" data-code="BM" id="check-82">
										<label for="check-82">
											<span class="icon"></span>
											버뮤다 (Bermuda)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_VE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="베네수엘라 (Venezuela)" data-code="VE" id="check-83">
										<label for="check-83">
											<span class="icon"></span>
											베네수엘라 (Venezuela)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BJ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="베넹 (Benin)" data-code="BJ" id="check-84">
										<label for="check-84">
											<span class="icon"></span>
											베넹 (Benin)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="벨기에 (Belgium)" data-code="BE" id="check-85">
										<label for="check-85">
											<span class="icon"></span>
											벨기에 (Belgium)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BY">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="벨라루스 (Belarus)" data-code="BY" id="check-86">
										<label for="check-86">
											<span class="icon"></span>
											벨라루스 (Belarus)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BZ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="벨리즈 (Belize)" data-code="BZ" id="check-87">
										<label for="check-87">
											<span class="icon"></span>
											벨리즈 (Belize)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="보스니아 헤르체고비나 (Bosnia&nbsp;and&nbsp;Herzegovina)" data-code="BA" id="check-88">
										<label for="check-88">
											<span class="icon"></span>
											보스니아 헤르체고비나 (Bosnia&nbsp;and&nbsp;Herzegovina)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BW">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="보트와나 (Botswana)" data-code="BW" id="check-89">
										<label for="check-89">
											<span class="icon"></span>
											보트와나 (Botswana)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="볼리비아 (Bolivia)" data-code="BO" id="check-90">
										<label for="check-90">
											<span class="icon"></span>
											볼리비아 (Bolivia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BF">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="부르키나파소 (Burkina&nbsp;Faso)" data-code="BF" id="check-91">
										<label for="check-91">
											<span class="icon"></span>
											부르키나파소 (Burkina&nbsp;Faso)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BV">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="부베이 섬 (Buvet Island)" data-code="BV" id="check-92">
										<label for="check-92">
											<span class="icon"></span>
											부베이 섬 (Buvet Island)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BT">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="부탄 (Bhutan)" data-code="BT" id="check-93">
										<label for="check-93">
											<span class="icon"></span>
											부탄 (Bhutan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_MP">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="북마리아나 군도 (Northern Mariana Islands)" data-code="MP" id="check-94">
										<label for="check-94">
											<span class="icon"></span>
											북마리아나 군도 (Northern Mariana Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_KP">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="북한 (North Korea)" data-code="KP" id="check-95">
										<label for="check-95">
											<span class="icon"></span>
											북한 (North Korea)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="불가리아 (Bulgaria)" data-code="BG" id="check-96">
										<label for="check-96">
											<span class="icon"></span>
											불가리아 (Bulgaria)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="브라질 (Brazil)" data-code="BR" id="check-97">
										<label for="check-97">
											<span class="icon"></span>
											브라질 (Brazil)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="브루나이 (Brunei)" data-code="BN" id="check-98">
										<label for="check-98">
											<span class="icon"></span>
											브루나이 (Brunei)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_BI">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="브룬디 (Burundi)" data-code="BI" id="check-99">
										<label for="check-99">
											<span class="icon"></span>
											브룬디 (Burundi)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_WS">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="사모아 (Samoa)" data-code="WS" id="check-100">
										<label for="check-100">
											<span class="icon"></span>
											사모아 (Samoa)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="사우디아라비아 (Saudi Arabia)" data-code="SA" id="check-101">
										<label for="check-101">
											<span class="icon"></span>
											사우디아라비아 (Saudi Arabia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CY">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="사이프러스 (Cyprus)" data-code="CY" id="check-102">
										<label for="check-102">
											<span class="icon"></span>
											사이프러스 (Cyprus)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_EH">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="사하라 (Sahara)" data-code="EH" id="check-103">
										<label for="check-103">
											<span class="icon"></span>
											사하라 (Sahara)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="산마리노 (San Marino)" data-code="SM" id="check-104">
										<label for="check-104">
											<span class="icon"></span>
											산마리노 (San Marino)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="세네갈 (Senegal)" data-code="SN" id="check-105">
										<label for="check-105">
											<span class="icon"></span>
											세네갈 (Senegal)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SC">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="세이셸 (Sesel)" data-code="SC" id="check-106">
										<label for="check-106">
											<span class="icon"></span>
											세이셸 (Sesel)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LC">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="세인트 루시아 (Saint Lucia)" data-code="LC" id="check-107">
										<label for="check-107">
											<span class="icon"></span>
											세인트 루시아 (Saint Lucia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_VC">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="세인트 빈센트 그레나딘스 (St. Vincent Grenadine)" data-code="VC" id="check-108">
										<label for="check-108">
											<span class="icon"></span>
											세인트 빈센트 그레나딘스 (St. Vincent Grenadine)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_KN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="세인트 크리스토퍼 니비스 (Saint Christopher and Nevis)" data-code="KN" id="check-109">
										<label for="check-109">
											<span class="icon"></span>
											세인트 크리스토퍼 니비스 (Saint Christopher and Nevis)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="세인트 피에르 미퀠론 (Saint Pierre and Miquelon)" data-code="PM" id="check-110">
										<label for="check-110">
											<span class="icon"></span>
											세인트 피에르 미퀠론 (Saint Pierre and Miquelon)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SH">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="세인트 헬레나 (Saint Helena)" data-code="SH" id="check-111">
										<label for="check-111">
											<span class="icon"></span>
											세인트 헬레나 (Saint Helena)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="소말리아 (Somalia)" data-code="SO" id="check-112">
										<label for="check-112">
											<span class="icon"></span>
											소말리아 (Somalia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SB">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="솔로몬 군도 (Solomon Islands)" data-code="SB" id="check-113">
										<label for="check-113">
											<span class="icon"></span>
											솔로몬 군도 (Solomon Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SD">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="수단 (Sudan)" data-code="SD" id="check-114">
										<label for="check-114">
											<span class="icon"></span>
											수단 (Sudan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="수리남 (Suriname)" data-code="SR" id="check-115">
										<label for="check-115">
											<span class="icon"></span>
											수리남 (Suriname)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_LK">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="스리랑카 (Sri Lanka)" data-code="LK" id="check-116">
										<label for="check-116">
											<span class="icon"></span>
											스리랑카 (Sri Lanka)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SJ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="스발바르드 얀마이엔 제도 (Svalbard and Jan Mayen Islands)" data-code="SJ" id="check-117">
										<label for="check-117">
											<span class="icon"></span>
											스발바르드 얀마이엔 제도 (Svalbard and Jan Mayen Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SZ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="스와질랜드 (Swaziland)" data-code="SZ" id="check-118">
										<label for="check-118">
											<span class="icon"></span>
											스와질랜드 (Swaziland)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="스웨덴 (Sweden)" data-code="SE" id="check-119">
										<label for="check-119">
											<span class="icon"></span>
											스웨덴 (Sweden)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CH">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="스위스 (Switzerland)" data-code="CH" id="check-120">
										<label for="check-120">
											<span class="icon"></span>
											스위스 (Switzerland)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_ES">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="스페인 (Spain)" data-code="ES" id="check-121">
										<label for="check-121">
											<span class="icon"></span>
											스페인 (Spain)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SK">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="슬로바키아 (Slovakia)" data-code="SK" id="check-122">
										<label for="check-122">
											<span class="icon"></span>
											슬로바키아 (Slovakia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SI">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="슬로베니아 (Slovenia)" data-code="SI" id="check-123">
										<label for="check-123">
											<span class="icon"></span>
											슬로베니아 (Slovenia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SY">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="시리아 (Syria)" data-code="SY" id="check-124">
										<label for="check-124">
											<span class="icon"></span>
											시리아 (Syria)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SL">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="시에라리온 (Sierra&nbsp;Leone)" data-code="SL" id="check-125">
										<label for="check-125">
											<span class="icon"></span>
											시에라리온 (Sierra&nbsp;Leone)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="싱가포르 (Singapore)" data-code="SG" id="check-126">
										<label for="check-126">
											<span class="icon"></span>
											싱가포르 (Singapore)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_ST">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="쌍투메 프린시페 (Sao Tome Principe)" data-code="ST" id="check-127">
										<label for="check-127">
											<span class="icon"></span>
											쌍투메 프린시페 (Sao Tome Principe)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="아랍에미리트 (United&nbsp;Arab&nbsp;Emirates)" data-code="AE" id="check-128">
										<label for="check-128">
											<span class="icon"></span>
											아랍에미리트 (United&nbsp;Arab&nbsp;Emirates)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AW">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="아루바 (Aruba)" data-code="AW" id="check-129">
										<label for="check-129">
											<span class="icon"></span>
											아루바 (Aruba)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="아르메니아 (Armenia)" data-code="AM" id="check-130">
										<label for="check-130">
											<span class="icon"></span>
											아르메니아 (Armenia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="아르헨티나 (Argentina)" data-code="AR" id="check-131">
										<label for="check-131">
											<span class="icon"></span>
											아르헨티나 (Argentina)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_IS">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="아이슬랜드 (Island)" data-code="IS" id="check-132">
										<label for="check-132">
											<span class="icon"></span>
											아이슬랜드 (Island)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_HT">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="아이티 (Haiti)" data-code="HT" id="check-133">
										<label for="check-133">
											<span class="icon"></span>
											아이티 (Haiti)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_IE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="아일랜드 (Ireland)" data-code="IE" id="check-134">
										<label for="check-134">
											<span class="icon"></span>
											아일랜드 (Ireland)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AZ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="아제르바이잔 (Azerbaijan)" data-code="AZ" id="check-135">
										<label for="check-135">
											<span class="icon"></span>
											아제르바이잔 (Azerbaijan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AF">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="아프가니스탄 (Afghanistan)" data-code="AF" id="check-136">
										<label for="check-136">
											<span class="icon"></span>
											아프가니스탄 (Afghanistan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AI">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="안길라 (Anguilla)" data-code="AI" id="check-137">
										<label for="check-137">
											<span class="icon"></span>
											안길라 (Anguilla)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AD">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="안도라 (Andorra)" data-code="AD" id="check-138">
										<label for="check-138">
											<span class="icon"></span>
											안도라 (Andorra)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="안티구아 바부다 (Antigua and Barbuda)" data-code="AG" id="check-139">
										<label for="check-139">
											<span class="icon"></span>
											안티구아 바부다 (Antigua and Barbuda)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AL">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="알바니아 (Albania)" data-code="AL" id="check-140">
										<label for="check-140">
											<span class="icon"></span>
											알바니아 (Albania)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_DZ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="알제리 (Algeria)" data-code="DZ" id="check-141">
										<label for="check-141">
											<span class="icon"></span>
											알제리 (Algeria)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="앙골라 (Angola)" data-code="AO" id="check-142">
										<label for="check-142">
											<span class="icon"></span>
											앙골라 (Angola)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_EE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="에스토니아 (Estonia)" data-code="EE" id="check-143">
										<label for="check-143">
											<span class="icon"></span>
											에스토니아 (Estonia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_EC">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="에쿠아도르 (Ecuador)" data-code="EC" id="check-144">
										<label for="check-144">
											<span class="icon"></span>
											에쿠아도르 (Ecuador)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_SV">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="엘살바도르 (El&nbsp;Salvador)" data-code="SV" id="check-145">
										<label for="check-145">
											<span class="icon"></span>
											엘살바도르 (El&nbsp;Salvador)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GB">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="영국 (UK)" data-code="GB" id="check-146">
										<label for="check-146">
											<span class="icon"></span>
											영국 (UK)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_IO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="영인도 제도 (British Indies)" data-code="IO" id="check-147">
										<label for="check-147">
											<span class="icon"></span>
											영인도 제도 (British Indies)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_OM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="오만 (Oman)" data-code="OM" id="check-148">
										<label for="check-148">
											<span class="icon"></span>
											오만 (Oman)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AU">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="오스트레일리아 (Australia)" data-code="AU" id="check-149">
										<label for="check-149">
											<span class="icon"></span>
											오스트레일리아 (Australia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_AT">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="오스트리아 (Austria)" data-code="AT" id="check-150">
										<label for="check-150">
											<span class="icon"></span>
											오스트리아 (Austria)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_HN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="온두라스 (Honduras)" data-code="HN" id="check-151">
										<label for="check-151">
											<span class="icon"></span>
											온두라스 (Honduras)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_JO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="요르단 (Jordan)" data-code="JO" id="check-152">
										<label for="check-152">
											<span class="icon"></span>
											요르단 (Jordan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_UG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="우간다 (Uganda)" data-code="UG" id="check-153">
										<label for="check-153">
											<span class="icon"></span>
											우간다 (Uganda)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_UY">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="우루과이 (Uruguay)" data-code="UY" id="check-154">
										<label for="check-154">
											<span class="icon"></span>
											우루과이 (Uruguay)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_UZ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="우즈베키스탄 (Uzbekistan&nbsp;)" data-code="UZ" id="check-155">
										<label for="check-155">
											<span class="icon"></span>
											우즈베키스탄 (Uzbekistan&nbsp;)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_UA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="우크라이나 (Ukraine)" data-code="UA" id="check-156">
										<label for="check-156">
											<span class="icon"></span>
											우크라이나 (Ukraine)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_WF">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="월리스 후트나 (Wallis Futuna)" data-code="WF" id="check-157">
										<label for="check-157">
											<span class="icon"></span>
											월리스 후트나 (Wallis Futuna)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_ET">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="이디오피아 (Ethiopia)" data-code="ET" id="check-158">
										<label for="check-158">
											<span class="icon"></span>
											이디오피아 (Ethiopia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_IQ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="이라크 (Iraq)" data-code="IQ" id="check-159">
										<label for="check-159">
											<span class="icon"></span>
											이라크 (Iraq)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_IR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="이란-이슬람공화국 (Islamic Repubic of Iran)" data-code="IR" id="check-160">
										<label for="check-160">
											<span class="icon"></span>
											이란-이슬람공화국 (Islamic Repubic of Iran)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_IL">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="이스라엘 (Israel)" data-code="IL" id="check-161">
										<label for="check-161">
											<span class="icon"></span>
											이스라엘 (Israel)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_EG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="이집트 (Egypt)" data-code="EG" id="check-162">
										<label for="check-162">
											<span class="icon"></span>
											이집트 (Egypt)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_IT">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="이탈리아 (Italy)" data-code="IT" id="check-163">
										<label for="check-163">
											<span class="icon"></span>
											이탈리아 (Italy)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_IN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="인도 (India)" data-code="IN" id="check-164">
										<label for="check-164">
											<span class="icon"></span>
											인도 (India)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_ID">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="인도네시아 (Indonesia)" data-code="ID" id="check-165">
										<label for="check-165">
											<span class="icon"></span>
											인도네시아 (Indonesia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_JM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="자메이카 (Jamaica)" data-code="JM" id="check-166">
										<label for="check-166">
											<span class="icon"></span>
											자메이카 (Jamaica)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_ZM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="잠비아 (Zambia)" data-code="ZM" id="check-167">
										<label for="check-167">
											<span class="icon"></span>
											잠비아 (Zambia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GQ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="적도 기니 (Equatorial&nbsp;Guinea&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)" data-code="GQ" id="check-168">
										<label for="check-168">
											<span class="icon"></span>
											적도 기니 (Equatorial&nbsp;Guinea&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CF">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="중앙 아프리카 (Central Africa)" data-code="CF" id="check-169">
										<label for="check-169">
											<span class="icon"></span>
											중앙 아프리카 (Central Africa)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_DJ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="지부티 (Djibouti)" data-code="DJ" id="check-170">
										<label for="check-170">
											<span class="icon"></span>
											지부티 (Djibouti)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GI">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="지브랄타 (Gibraltar)" data-code="GI" id="check-171">
										<label for="check-171">
											<span class="icon"></span>
											지브랄타 (Gibraltar)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_ZW">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="짐바브웨 (Zimbabwe)" data-code="ZW" id="check-172">
										<label for="check-172">
											<span class="icon"></span>
											짐바브웨 (Zimbabwe)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TD">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="차드 (Chad)" data-code="TD" id="check-173">
										<label for="check-173">
											<span class="icon"></span>
											차드 (Chad)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CZ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="체코 (Czech)" data-code="CZ" id="check-174">
										<label for="check-174">
											<span class="icon"></span>
											체코 (Czech)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CL">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="칠레 (Chile)" data-code="CL" id="check-175">
										<label for="check-175">
											<span class="icon"></span>
											칠레 (Chile)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="카메룬 (Cameroon)" data-code="CM" id="check-176">
										<label for="check-176">
											<span class="icon"></span>
											카메룬 (Cameroon)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_KY">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="카이만 군도 (Cayman Islands)" data-code="KY" id="check-177">
										<label for="check-177">
											<span class="icon"></span>
											카이만 군도 (Cayman Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_KZ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="카자흐스탄 (Kazakhstan)" data-code="KZ" id="check-178">
										<label for="check-178">
											<span class="icon"></span>
											카자흐스탄 (Kazakhstan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_QA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="카타르 (Qatar)" data-code="QA" id="check-179">
										<label for="check-179">
											<span class="icon"></span>
											카타르 (Qatar)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_KH">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="캄보디아 (Cambodia)" data-code="KH" id="check-180">
										<label for="check-180">
											<span class="icon"></span>
											캄보디아 (Cambodia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="캐나다 (Canada)" data-code="CA" id="check-181">
										<label for="check-181">
											<span class="icon"></span>
											캐나다 (Canada)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_KE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="케냐 (Kenya)" data-code="KE" id="check-182">
										<label for="check-182">
											<span class="icon"></span>
											케냐 (Kenya)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_KM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="코모르 (Comoros)" data-code="KM" id="check-183">
										<label for="check-183">
											<span class="icon"></span>
											코모르 (Comoros)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="코스타리카 (Costa Rica)" data-code="CR" id="check-184">
										<label for="check-184">
											<span class="icon"></span>
											코스타리카 (Costa Rica)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CC">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="코코스킬링 제도 (Cocos&nbsp;Keeling Islands)" data-code="CC" id="check-185">
										<label for="check-185">
											<span class="icon"></span>
											코코스킬링 제도 (Cocos&nbsp;Keeling Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CI">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="코트디부와르 (Ivory Coast)" data-code="CI" id="check-186">
										<label for="check-186">
											<span class="icon"></span>
											코트디부와르 (Ivory Coast)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="콜롬비아 (Columbia)" data-code="CO" id="check-187">
										<label for="check-187">
											<span class="icon"></span>
											콜롬비아 (Columbia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="콩고 (Congo)" data-code="CG" id="check-188">
										<label for="check-188">
											<span class="icon"></span>
											콩고 (Congo)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CU">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="쿠바 (Cuba)" data-code="CU" id="check-189">
										<label for="check-189">
											<span class="icon"></span>
											쿠바 (Cuba)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_KW">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="쿠웨이트 (Kuwait)" data-code="KW" id="check-190">
										<label for="check-190">
											<span class="icon"></span>
											쿠웨이트 (Kuwait)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CK">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="쿠크 군도 (Cook Island)" data-code="CK" id="check-191">
										<label for="check-191">
											<span class="icon"></span>
											쿠크 군도 (Cook Island)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_HR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="크로아티아 (Croatia)" data-code="HR" id="check-192">
										<label for="check-192">
											<span class="icon"></span>
											크로아티아 (Croatia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_CX">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="크리스마스 섬 (Christmas Island)" data-code="CX" id="check-193">
										<label for="check-193">
											<span class="icon"></span>
											크리스마스 섬 (Christmas Island)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_KG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="키르기스스탄 (Kyrgyzstan)" data-code="KG" id="check-194">
										<label for="check-194">
											<span class="icon"></span>
											키르기스스탄 (Kyrgyzstan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_KI">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="키리바시 (Kiribati)" data-code="KI" id="check-195">
										<label for="check-195">
											<span class="icon"></span>
											키리바시 (Kiribati)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TJ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="타지키스탄 (Tajikistan)" data-code="TJ" id="check-196">
										<label for="check-196">
											<span class="icon"></span>
											타지키스탄 (Tajikistan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="터어키 (Turkey)" data-code="TR" id="check-197">
										<label for="check-197">
											<span class="icon"></span>
											터어키 (Turkey)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TC">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="터크스 카이코스 제도 (Turks and Caicos Islands)" data-code="TC" id="check-198">
										<label for="check-198">
											<span class="icon"></span>
											터크스 카이코스 제도 (Turks and Caicos Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="토고 (Togo)" data-code="TG" id="check-199">
										<label for="check-199">
											<span class="icon"></span>
											토고 (Togo)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TK">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="토켈라우 (Tokelau)" data-code="TK" id="check-200">
										<label for="check-200">
											<span class="icon"></span>
											토켈라우 (Tokelau)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="통가 (Tonga)" data-code="TO" id="check-201">
										<label for="check-201">
											<span class="icon"></span>
											통가 (Tonga)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="투르크메니스탄 (Turkmenistan)" data-code="TM" id="check-202">
										<label for="check-202">
											<span class="icon"></span>
											투르크메니스탄 (Turkmenistan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TV">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="투발루 (Tuvalu)" data-code="TV" id="check-203">
										<label for="check-203">
											<span class="icon"></span>
											투발루 (Tuvalu)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="튀니지 (Tunisia)" data-code="TN" id="check-204">
										<label for="check-204">
											<span class="icon"></span>
											튀니지 (Tunisia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TT">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="트리니다드 토바고 (Trinidad&nbsp;and&nbsp;Tobago)" data-code="TT" id="check-205">
										<label for="check-205">
											<span class="icon"></span>
											트리니다드 토바고 (Trinidad&nbsp;and&nbsp;Tobago)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="파나마 (Panama)" data-code="PA" id="check-206">
										<label for="check-206">
											<span class="icon"></span>
											파나마 (Panama)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PY">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="파라과이 (Paraguay)" data-code="PY" id="check-207">
										<label for="check-207">
											<span class="icon"></span>
											파라과이 (Paraguay)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PK">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="파키스탄 (Pakistan)" data-code="PK" id="check-208">
										<label for="check-208">
											<span class="icon"></span>
											파키스탄 (Pakistan)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="파푸아뉴기니 (Papua New Guinea)" data-code="PG" id="check-209">
										<label for="check-209">
											<span class="icon"></span>
											파푸아뉴기니 (Papua New Guinea)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PW">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="팔라우 (Palau)" data-code="PW" id="check-210">
										<label for="check-210">
											<span class="icon"></span>
											팔라우 (Palau)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_FO">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="페로 군도 (Faroe Islands)" data-code="FO" id="check-211">
										<label for="check-211">
											<span class="icon"></span>
											페로 군도 (Faroe Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="페루 (Peru)" data-code="PE" id="check-212">
										<label for="check-212">
											<span class="icon"></span>
											페루 (Peru)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PT">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="포르투갈 (Portugal)" data-code="PT" id="check-213">
										<label for="check-213">
											<span class="icon"></span>
											포르투갈 (Portugal)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_FK">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="포클랜드 (Falkland)" data-code="FK" id="check-214">
										<label for="check-214">
											<span class="icon"></span>
											포클랜드 (Falkland)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PL">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="폴란드 (Poland)" data-code="PL" id="check-215">
										<label for="check-215">
											<span class="icon"></span>
											폴란드 (Poland)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="푸에르토리코 (Puerto&nbsp;Rico)" data-code="PR" id="check-216">
										<label for="check-216">
											<span class="icon"></span>
											푸에르토리코 (Puerto&nbsp;Rico)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_FR">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="프랑스 (France)" data-code="FR" id="check-217">
										<label for="check-217">
											<span class="icon"></span>
											프랑스 (France)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TF">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="프랑스 남부 지역 (The southern part of France)" data-code="TF" id="check-218">
										<label for="check-218">
											<span class="icon"></span>
											프랑스 남부 지역 (The southern part of France)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_GF">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="프랑스령 기아나 (French&nbsp;Guiana)" data-code="GF" id="check-219">
										<label for="check-219">
											<span class="icon"></span>
											프랑스령 기아나 (French&nbsp;Guiana)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PF">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="프랑스령 폴리네시아 (Polynesia)" data-code="PF" id="check-220">
										<label for="check-220">
											<span class="icon"></span>
											프랑스령 폴리네시아 (Polynesia)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_FJ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="피지 (Fiji)" data-code="FJ" id="check-221">
										<label for="check-221">
											<span class="icon"></span>
											피지 (Fiji)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_FI">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="핀란드 (Finland)" data-code="FI" id="check-222">
										<label for="check-222">
											<span class="icon"></span>
											핀란드 (Finland)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PH">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="필리핀 (Philippines)" data-code="PH" id="check-223">
										<label for="check-223">
											<span class="icon"></span>
											필리핀 (Philippines)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_PN">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="핏케언 군도 (Pitcairn Islands)" data-code="PN" id="check-224">
										<label for="check-224">
											<span class="icon"></span>
											핏케언 군도 (Pitcairn Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_HM">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="허드섬 및 맥도날드 군도 (Heard Isaland and MacDonald Islands)" data-code="HM" id="check-225">
										<label for="check-225">
											<span class="icon"></span>
											허드섬 및 맥도날드 군도 (Heard Isaland and MacDonald Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_HU">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="헝가리 (Hungary)" data-code="HU" id="check-226">
										<label for="check-226">
											<span class="icon"></span>
											헝가리 (Hungary)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_HK">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="홍콩 (Hong Kong)" data-code="HK" id="check-227">
										<label for="check-227">
											<span class="icon"></span>
											홍콩 (Hong Kong)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_VG">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="BRITISH -영국령 버진아일랜드 (British Virgin Islands)" data-code="VG" id="check-228">
										<label for="check-228">
											<span class="icon"></span>
											BRITISH -영국령 버진아일랜드 (British Virgin Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_VA">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="HOLY SEE -바티칸 (HOLY SEE -Vatican)" data-code="VA" id="check-229">
										<label for="check-229">
											<span class="icon"></span>
											HOLY SEE -바티칸 (HOLY SEE -Vatican)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_YE">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="REPUBLIC OF - 예멘 (Republic of Yemen)" data-code="YE" id="check-230">
										<label for="check-230">
											<span class="icon"></span>
											REPUBLIC OF - 예멘 (Republic of Yemen)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_VI">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="U.S. -미국령 버진아일랜드 (American Vergin Islands)" data-code="VI" id="check-231">
										<label for="check-231">
											<span class="icon"></span>
											U.S. -미국령 버진아일랜드 (American Vergin Islands)
										</label>
									</div>
								</li>
							
							
								<li id="list_li_TZ">
									<div class="input_wrap">
										<input name="nationCode" onclick="selectNation(this);" type="radio" data-explain="UNITED REPUBLIC OF - 탄자니아 (United Republic of Tanzania)" data-code="TZ" id="check-232">
										<label for="check-232">
											<span class="icon"></span>
											UNITED REPUBLIC OF - 탄자니아 (United Republic of Tanzania)
										</label>
									</div>
								</li>				
							<input name="apisNationCodeTmp" type="hidden">
							<input name="nationCodeExplainTmp" type="hidden">
						</ul>
					</div>
				</div>
			</div>

			<div class="layer_footer">
				<button class="btn btn-danger btn-lg" onclick="nationConfirm();" type="button">확인</button>
				<button class="btn btn-primary btn-lg" onclick="closeSelf();" type="button">취소</button>
			</div>
			<a class="btn_layer_close" href="javascript:closeSelf();">레이어 닫기</a>
		</div>
        </div>
			
	
	</form>
		
	<!--//팝업 -->

	<script type="text/javascript">
		var apisNationData = [{'codeEngValue':'KR','codeEngTitle':'Republic of Korea','codeTitle':'\uB300\uD55C\uBBFC\uAD6D','codeValue':'KR'},{'codeEngValue':'CN','codeEngTitle':'China','codeTitle':'\uC911\uAD6D','codeValue':'CN'},{'codeEngValue':'GH','codeEngTitle':'Ghana','codeTitle':'\uAC00\uB098','codeValue':'GH'},{'codeEngValue':'GA','codeEngTitle':'Gabon','codeTitle':'\uAC00\uBD09','codeValue':'GA'},{'codeEngValue':'JP','codeEngTitle':'Japan','codeTitle':'\uC77C\uBCF8','codeValue':'JP'},{'codeEngValue':'GY','codeEngTitle':'Guyana','codeTitle':'\uAC00\uC774\uC544\uB098','codeValue':'GY'},{'codeEngValue':'US','codeEngTitle':'US','codeTitle':'\uBBF8\uAD6D','codeValue':'US'},{'codeEngValue':'GM','codeEngTitle':'Gambia','codeTitle':'\uAC10\uBE44\uC544','codeValue':'GM'},{'codeEngValue':'TH','codeEngTitle':'Thailand','codeTitle':'\uD0DC\uAD6D','codeValue':'TH'},{'codeEngValue':'GP','codeEngTitle':'Guadaloupe','codeTitle':'\uACFC\uB2EC\uB85C\uD504','codeValue':'GP'},{'codeEngValue':'LA','codeEngTitle':'Laos','codeTitle':'\uB77C\uC624\uC2A4','codeValue':'LA'},{'codeEngValue':'GT','codeEngTitle':'Guatemala\xA0','codeTitle':'\uACFC\uD14C\uB9D0\uB77C','codeValue':'GT'},{'codeEngValue':'TW','codeEngTitle':'Taiwan','codeTitle':'\uB300\uB9CC','codeValue':'TW'},{'codeEngValue':'GU','codeEngTitle':'Guam','codeTitle':'\uAD0C','codeValue':'GU'},{'codeEngValue':'MY','codeEngTitle':'Malaysia','codeTitle':'\uB9D0\uB808\uC774\uC2DC\uC544','codeValue':'MY'},{'codeEngValue':'GD','codeEngTitle':'Grenada','codeTitle':'\uADF8\uB808\uB098\uB2E4','codeValue':'GD'},{'codeEngValue':'VN','codeEngTitle':'Vietnam','codeTitle':'\uBCA0\uD2B8\uB0A8','codeValue':'VN'},{'codeEngValue':'GE','codeEngTitle':'Gruziya','codeTitle':'\uADF8\uB8E8\uC9C0\uC57C','codeValue':'GE'},{'codeEngValue':'GR','codeEngTitle':'Greece','codeTitle':'\uADF8\uB9AC\uC2A4','codeValue':'GR'},{'codeEngValue':'GL','codeEngTitle':'Greenland','codeTitle':'\uADF8\uB9B0\uB79C\uB4DC','codeValue':'GL'},{'codeEngValue':'GW','codeEngTitle':'Guinea-Bissau','codeTitle':'\uAE30\uB124\uBE44\uC3D8','codeValue':'GW'},{'codeEngValue':'GN','codeEngTitle':'Guinea','codeTitle':'\uAE30\uB2C8','codeValue':'GN'},{'codeEngValue':'CV','codeEngTitle':'Cape Verde','codeTitle':'\uAE4C\uBF40\uBCA0\uB974\uB370','codeValue':'CV'},{'codeEngValue':'NA','codeEngTitle':'Namibia','codeTitle':'\uB098\uBBF8\uBE44\uC544','codeValue':'NA'},{'codeEngValue':'NR','codeEngTitle':'Nauru','codeTitle':'\uB098\uC6B0\uB8E8','codeValue':'NR'},{'codeEngValue':'NG','codeEngTitle':'Nigeria','codeTitle':'\uB098\uC774\uC9C0\uB9AC\uC544','codeValue':'NG'},{'codeEngValue':'AQ','codeEngTitle':'Antarctica','codeTitle':'\uB0A8\uADF9','codeValue':'AQ'},{'codeEngValue':'ZA','codeEngTitle':'South Africa','codeTitle':'\uB0A8\uC544\uD504\uB9AC\uCE74','codeValue':'ZA'},{'codeEngValue':'NL','codeEngTitle':'Netherland','codeTitle':'\uB124\uB35C\uB780\uB4DC','codeValue':'NL'},{'codeEngValue':'AN','codeEngTitle':'Netherlands\xA0Antilles','codeTitle':'\uB124\uB35C\uB780\uB4DC\uB839 \uC548\uD2F8\uB808\uC2A4','codeValue':'AN'},{'codeEngValue':'NP','codeEngTitle':'Nepal','codeTitle':'\uB124\uD314','codeValue':'NP'},{'codeEngValue':'NO','codeEngTitle':'Norway','codeTitle':'\uB178\uB974\uC6E8\uC774','codeValue':'NO'},{'codeEngValue':'NF','codeEngTitle':'Norfolk','codeTitle':'\uB178\uD37D','codeValue':'NF'},{'codeEngValue':'NZ','codeEngTitle':'New Zealand','codeTitle':'\uB274\uC9C8\uB79C\uB4DC','codeValue':'NZ'},{'codeEngValue':'NC','codeEngTitle':'New\xA0Caledonia','codeTitle':'\uB274\uCE7C\uB808\uB3C4\uB2C8\uC544','codeValue':'NC'},{'codeEngValue':'NU','codeEngTitle':'Niue','codeTitle':'\uB2C8\uC6B0\uC5D0','codeValue':'NU'},{'codeEngValue':'NE','codeEngTitle':'Niger','codeTitle':'\uB2C8\uC81C\uB974','codeValue':'NE'},{'codeEngValue':'NI','codeEngTitle':'Nicaragua','codeTitle':'\uB2C8\uCE74\uB77C\uACFC','codeValue':'NI'},{'codeEngValue':'DK','codeEngTitle':'Denmark','codeTitle':'\uB374\uB9C8\uD06C','codeValue':'DK'},{'codeEngValue':'DM','codeEngTitle':'Dominica','codeTitle':'\uB3C4\uBBF8\uB2C8\uCE74','codeValue':'DM'},{'codeEngValue':'DO','codeEngTitle':'Dominican\xA0Republic','codeTitle':'\uB3C4\uBBF8\uB2C8\uCE74 \uACF5\uD654\uAD6D','codeValue':'DO'},{'codeEngValue':'DE','codeEngTitle':'Germany','codeTitle':'\uB3C5\uC77C','codeValue':'DE'},{'codeEngValue':'TP','codeEngTitle':'East Timor','codeTitle':'\uB3D9\uD2F0\uBAA8\uB974','codeValue':'TP'},{'codeEngValue':'LV','codeEngTitle':'Latvia','codeTitle':'\uB77C\uD2B8\uBE44\uC544','codeValue':'LV'},{'codeEngValue':'RU','codeEngTitle':'Russia','codeTitle':'\uB7EC\uC2DC\uC544','codeValue':'RU'},{'codeEngValue':'LB','codeEngTitle':'Lebanon','codeTitle':'\uB808\uBC14\uB17C','codeValue':'LB'},{'codeEngValue':'LS','codeEngTitle':'Lesotho','codeTitle':'\uB808\uC18C\uD1A0','codeValue':'LS'},{'codeEngValue':'RO','codeEngTitle':'Rumania','codeTitle':'\uB8E8\uB9C8\uB2C8\uC544','codeValue':'RO'},{'codeEngValue':'LU','codeEngTitle':'Luxemburg','codeTitle':'\uB8E9\uC148\uBD80\uB974\uD06C','codeValue':'LU'},{'codeEngValue':'RW','codeEngTitle':'Rewanda','codeTitle':'\uB974\uC644\uB2E4','codeValue':'RW'},{'codeEngValue':'LR','codeEngTitle':'Liberia','codeTitle':'\uB9AC\uBCA0\uB9AC\uC544','codeValue':'LR'},{'codeEngValue':'LY','codeEngTitle':'Libya','codeTitle':'\uB9AC\uBE44\uC544','codeValue':'LY'},{'codeEngValue':'RE','codeEngTitle':'Reunion','codeTitle':'\uB9AC\uC720\uB2C8\uC5B8','codeValue':'RE'},{'codeEngValue':'LT','codeEngTitle':'Lithuania','codeTitle':'\uB9AC\uD22C\uC544\uB2C8\uC544','codeValue':'LT'},{'codeEngValue':'LI','codeEngTitle':'Liechtenstein','codeTitle':'\uB9AC\uD788\uD150\uC288\uD0C0\uC778','codeValue':'LI'},{'codeEngValue':'MG','codeEngTitle':'Madagascar','codeTitle':'\uB9C8\uB2E4\uAC00\uC2A4\uCE74\uB974','codeValue':'MG'},{'codeEngValue':'MH','codeEngTitle':'Marshall Islands','codeTitle':'\uB9C8\uC0EC \uAD70\uB3C4','codeValue':'MH'},{'codeEngValue':'FM','codeEngTitle':'Micronesia','codeTitle':'\uB9C8\uC774\uD06C\uB85C\uB124\uC2DC\uC544','codeValue':'FM'},{'codeEngValue':'MO','codeEngTitle':'Macao','codeTitle':'\uB9C8\uCE74\uC624','codeValue':'MO'},{'codeEngValue':'MW','codeEngTitle':'Malawi','codeTitle':'\uB9D0\uB77C\uC704','codeValue':'MW'},{'codeEngValue':'ML','codeEngTitle':'Mali','codeTitle':'\uB9D0\uB9AC','codeValue':'ML'},{'codeEngValue':'MT','codeEngTitle':'Malta','codeTitle':'\uB9D0\uD0C0','codeValue':'MT'},{'codeEngValue':'MQ','codeEngTitle':'Martinique Island','codeTitle':'\uB9D0\uD2F0\uB2C8\uD06C','codeValue':'MQ'},{'codeEngValue':'MX','codeEngTitle':'Mexico','codeTitle':'\uBA55\uC2DC\uCF54','codeValue':'MX'},{'codeEngValue':'MC','codeEngTitle':'Monaco','codeTitle':'\uBAA8\uB098\uCF54','codeValue':'MC'},{'codeEngValue':'MA','codeEngTitle':'Morocco','codeTitle':'\uBAA8\uB85C\uCF54','codeValue':'MA'},{'codeEngValue':'MU','codeEngTitle':'Mauritius','codeTitle':'\uBAA8\uB9AC\uC154\uC2A4','codeValue':'MU'},{'codeEngValue':'MR','codeEngTitle':'Mauritania','codeTitle':'\uBAA8\uB9AC\uD0C0\uB2C8','codeValue':'MR'},{'codeEngValue':'MZ','codeEngTitle':'Mozambique','codeTitle':'\uBAA8\uC7A0\uBE44\uD06C','codeValue':'MZ'},{'codeEngValue':'MS','codeEngTitle':'Montserrat','codeTitle':'\uBAAC \uD2B8\uC138\uB77C\uD2B8','codeValue':'MS'},{'codeEngValue':'MD','codeEngTitle':'Moldova','codeTitle':'\uBAB0\uB3C4\uBC14','codeValue':'MD'},{'codeEngValue':'MV','codeEngTitle':'Maldives','codeTitle':'\uBAB0\uB514\uBE0C','codeValue':'MV'},{'codeEngValue':'MN','codeEngTitle':'Mongolia','codeTitle':'\uBABD\uACE8','codeValue':'MN'},{'codeEngValue':'AS','codeEngTitle':'American Samoa','codeTitle':'\uBBF8\uAD6D\uB839 \uC0AC\uBAA8\uC544','codeValue':'AS'},{'codeEngValue':'UM','codeEngTitle':'American small islands','codeTitle':'\uBBF8\uAD6D\uB839 \uC18C\uAD70\uB3C4','codeValue':'UM'},{'codeEngValue':'MM','codeEngTitle':'Myanmar','codeTitle':'\uBBF8\uC580\uB9C8','codeValue':'MM'},{'codeEngValue':'VU','codeEngTitle':'Vanuatu','codeTitle':'\uBC14\uB204\uC544\uD22C','codeValue':'VU'},{'codeEngValue':'BH','codeEngTitle':'Bahrain','codeTitle':'\uBC14\uB808\uC778','codeValue':'BH'},{'codeEngValue':'BB','codeEngTitle':'Barbados','codeTitle':'\uBC14\uBCA0\uC774\uB3C4\uC2A4','codeValue':'BB'},{'codeEngValue':'BS','codeEngTitle':'Bahamas','codeTitle':'\uBC14\uD558\uB9C8','codeValue':'BS'},{'codeEngValue':'BD','codeEngTitle':'Bangladesh','codeTitle':'\uBC29\uAE00\uB77C\uB370\uC2DC','codeValue':'BD'},{'codeEngValue':'BM','codeEngTitle':'Bermuda','codeTitle':'\uBC84\uBBA4\uB2E4','codeValue':'BM'},{'codeEngValue':'VE','codeEngTitle':'Venezuela','codeTitle':'\uBCA0\uB124\uC218\uC5D8\uB77C','codeValue':'VE'},{'codeEngValue':'BJ','codeEngTitle':'Benin','codeTitle':'\uBCA0\uB139','codeValue':'BJ'},{'codeEngValue':'BE','codeEngTitle':'Belgium','codeTitle':'\uBCA8\uAE30\uC5D0','codeValue':'BE'},{'codeEngValue':'BY','codeEngTitle':'Belarus','codeTitle':'\uBCA8\uB77C\uB8E8\uC2A4','codeValue':'BY'},{'codeEngValue':'BZ','codeEngTitle':'Belize','codeTitle':'\uBCA8\uB9AC\uC988','codeValue':'BZ'},{'codeEngValue':'BA','codeEngTitle':'Bosnia\xA0and\xA0Herzegovina','codeTitle':'\uBCF4\uC2A4\uB2C8\uC544 \uD5E4\uB974\uCCB4\uACE0\uBE44\uB098','codeValue':'BA'},{'codeEngValue':'BW','codeEngTitle':'Botswana','codeTitle':'\uBCF4\uD2B8\uC640\uB098','codeValue':'BW'},{'codeEngValue':'BO','codeEngTitle':'Bolivia','codeTitle':'\uBCFC\uB9AC\uBE44\uC544','codeValue':'BO'},{'codeEngValue':'BF','codeEngTitle':'Burkina\xA0Faso','codeTitle':'\uBD80\uB974\uD0A4\uB098\uD30C\uC18C','codeValue':'BF'},{'codeEngValue':'BV','codeEngTitle':'Buvet Island','codeTitle':'\uBD80\uBCA0\uC774 \uC12C','codeValue':'BV'},{'codeEngValue':'BT','codeEngTitle':'Bhutan','codeTitle':'\uBD80\uD0C4','codeValue':'BT'},{'codeEngValue':'MP','codeEngTitle':'Northern Mariana Islands','codeTitle':'\uBD81\uB9C8\uB9AC\uC544\uB098 \uAD70\uB3C4','codeValue':'MP'},{'codeEngValue':'KP','codeEngTitle':'North Korea','codeTitle':'\uBD81\uD55C','codeValue':'KP'},{'codeEngValue':'BG','codeEngTitle':'Bulgaria','codeTitle':'\uBD88\uAC00\uB9AC\uC544','codeValue':'BG'},{'codeEngValue':'BR','codeEngTitle':'Brazil','codeTitle':'\uBE0C\uB77C\uC9C8','codeValue':'BR'},{'codeEngValue':'BN','codeEngTitle':'Brunei','codeTitle':'\uBE0C\uB8E8\uB098\uC774','codeValue':'BN'},{'codeEngValue':'BI','codeEngTitle':'Burundi','codeTitle':'\uBE0C\uB8EC\uB514','codeValue':'BI'},{'codeEngValue':'WS','codeEngTitle':'Samoa','codeTitle':'\uC0AC\uBAA8\uC544','codeValue':'WS'},{'codeEngValue':'SA','codeEngTitle':'Saudi Arabia','codeTitle':'\uC0AC\uC6B0\uB514\uC544\uB77C\uBE44\uC544','codeValue':'SA'},{'codeEngValue':'CY','codeEngTitle':'Cyprus','codeTitle':'\uC0AC\uC774\uD504\uB7EC\uC2A4','codeValue':'CY'},{'codeEngValue':'EH','codeEngTitle':'Sahara','codeTitle':'\uC0AC\uD558\uB77C','codeValue':'EH'},{'codeEngValue':'SM','codeEngTitle':'San Marino','codeTitle':'\uC0B0\uB9C8\uB9AC\uB178','codeValue':'SM'},{'codeEngValue':'SN','codeEngTitle':'Senegal','codeTitle':'\uC138\uB124\uAC08','codeValue':'SN'},{'codeEngValue':'SC','codeEngTitle':'Sesel','codeTitle':'\uC138\uC774\uC178','codeValue':'SC'},{'codeEngValue':'LC','codeEngTitle':'Saint Lucia','codeTitle':'\uC138\uC778\uD2B8 \uB8E8\uC2DC\uC544','codeValue':'LC'},{'codeEngValue':'VC','codeEngTitle':'St. Vincent Grenadine','codeTitle':'\uC138\uC778\uD2B8 \uBE48\uC13C\uD2B8 \uADF8\uB808\uB098\uB518\uC2A4','codeValue':'VC'},{'codeEngValue':'KN','codeEngTitle':'Saint Christopher and Nevis','codeTitle':'\uC138\uC778\uD2B8 \uD06C\uB9AC\uC2A4\uD1A0\uD37C \uB2C8\uBE44\uC2A4','codeValue':'KN'},{'codeEngValue':'PM','codeEngTitle':'Saint Pierre and Miquelon','codeTitle':'\uC138\uC778\uD2B8 \uD53C\uC5D0\uB974 \uBBF8\uD020\uB860','codeValue':'PM'},{'codeEngValue':'SH','codeEngTitle':'Saint Helena','codeTitle':'\uC138\uC778\uD2B8 \uD5EC\uB808\uB098','codeValue':'SH'},{'codeEngValue':'SO','codeEngTitle':'Somalia','codeTitle':'\uC18C\uB9D0\uB9AC\uC544','codeValue':'SO'},{'codeEngValue':'SB','codeEngTitle':'Solomon Islands','codeTitle':'\uC194\uB85C\uBAAC \uAD70\uB3C4','codeValue':'SB'},{'codeEngValue':'SD','codeEngTitle':'Sudan','codeTitle':'\uC218\uB2E8','codeValue':'SD'},{'codeEngValue':'SR','codeEngTitle':'Suriname','codeTitle':'\uC218\uB9AC\uB0A8','codeValue':'SR'},{'codeEngValue':'LK','codeEngTitle':'Sri Lanka','codeTitle':'\uC2A4\uB9AC\uB791\uCE74','codeValue':'LK'},{'codeEngValue':'SJ','codeEngTitle':'Svalbard and Jan Mayen Islands','codeTitle':'\uC2A4\uBC1C\uBC14\uB974\uB4DC \uC580\uB9C8\uC774\uC5D4 \uC81C\uB3C4','codeValue':'SJ'},{'codeEngValue':'SZ','codeEngTitle':'Swaziland','codeTitle':'\uC2A4\uC640\uC9C8\uB79C\uB4DC','codeValue':'SZ'},{'codeEngValue':'SE','codeEngTitle':'Sweden','codeTitle':'\uC2A4\uC6E8\uB374','codeValue':'SE'},{'codeEngValue':'CH','codeEngTitle':'Switzerland','codeTitle':'\uC2A4\uC704\uC2A4','codeValue':'CH'},{'codeEngValue':'ES','codeEngTitle':'Spain','codeTitle':'\uC2A4\uD398\uC778','codeValue':'ES'},{'codeEngValue':'SK','codeEngTitle':'Slovakia','codeTitle':'\uC2AC\uB85C\uBC14\uD0A4\uC544','codeValue':'SK'},{'codeEngValue':'SI','codeEngTitle':'Slovenia','codeTitle':'\uC2AC\uB85C\uBCA0\uB2C8\uC544','codeValue':'SI'},{'codeEngValue':'SY','codeEngTitle':'Syria','codeTitle':'\uC2DC\uB9AC\uC544','codeValue':'SY'},{'codeEngValue':'SL','codeEngTitle':'Sierra\xA0Leone','codeTitle':'\uC2DC\uC5D0\uB77C\uB9AC\uC628','codeValue':'SL'},{'codeEngValue':'SG','codeEngTitle':'Singapore','codeTitle':'\uC2F1\uAC00\uD3EC\uB974','codeValue':'SG'},{'codeEngValue':'ST','codeEngTitle':'Sao Tome Principe','codeTitle':'\uC30D\uD22C\uBA54 \uD504\uB9B0\uC2DC\uD398','codeValue':'ST'},{'codeEngValue':'AE','codeEngTitle':'United\xA0Arab\xA0Emirates','codeTitle':'\uC544\uB78D\uC5D0\uBBF8\uB9AC\uD2B8','codeValue':'AE'},{'codeEngValue':'AW','codeEngTitle':'Aruba','codeTitle':'\uC544\uB8E8\uBC14','codeValue':'AW'},{'codeEngValue':'AM','codeEngTitle':'Armenia','codeTitle':'\uC544\uB974\uBA54\uB2C8\uC544','codeValue':'AM'},{'codeEngValue':'AR','codeEngTitle':'Argentina','codeTitle':'\uC544\uB974\uD5E8\uD2F0\uB098','codeValue':'AR'},{'codeEngValue':'IS','codeEngTitle':'Island','codeTitle':'\uC544\uC774\uC2AC\uB79C\uB4DC','codeValue':'IS'},{'codeEngValue':'HT','codeEngTitle':'Haiti','codeTitle':'\uC544\uC774\uD2F0','codeValue':'HT'},{'codeEngValue':'IE','codeEngTitle':'Ireland','codeTitle':'\uC544\uC77C\uB79C\uB4DC','codeValue':'IE'},{'codeEngValue':'AZ','codeEngTitle':'Azerbaijan','codeTitle':'\uC544\uC81C\uB974\uBC14\uC774\uC794','codeValue':'AZ'},{'codeEngValue':'AF','codeEngTitle':'Afghanistan','codeTitle':'\uC544\uD504\uAC00\uB2C8\uC2A4\uD0C4','codeValue':'AF'},{'codeEngValue':'AI','codeEngTitle':'Anguilla','codeTitle':'\uC548\uAE38\uB77C','codeValue':'AI'},{'codeEngValue':'AD','codeEngTitle':'Andorra','codeTitle':'\uC548\uB3C4\uB77C','codeValue':'AD'},{'codeEngValue':'AG','codeEngTitle':'Antigua and Barbuda','codeTitle':'\uC548\uD2F0\uAD6C\uC544 \uBC14\uBD80\uB2E4','codeValue':'AG'},{'codeEngValue':'AL','codeEngTitle':'Albania','codeTitle':'\uC54C\uBC14\uB2C8\uC544','codeValue':'AL'},{'codeEngValue':'DZ','codeEngTitle':'Algeria','codeTitle':'\uC54C\uC81C\uB9AC','codeValue':'DZ'},{'codeEngValue':'AO','codeEngTitle':'Angola','codeTitle':'\uC559\uACE8\uB77C','codeValue':'AO'},{'codeEngValue':'EE','codeEngTitle':'Estonia','codeTitle':'\uC5D0\uC2A4\uD1A0\uB2C8\uC544','codeValue':'EE'},{'codeEngValue':'EC','codeEngTitle':'Ecuador','codeTitle':'\uC5D0\uCFE0\uC544\uB3C4\uB974','codeValue':'EC'},{'codeEngValue':'SV','codeEngTitle':'El\xA0Salvador','codeTitle':'\uC5D8\uC0B4\uBC14\uB3C4\uB974','codeValue':'SV'},{'codeEngValue':'GB','codeEngTitle':'UK','codeTitle':'\uC601\uAD6D','codeValue':'GB'},{'codeEngValue':'IO','codeEngTitle':'British Indies','codeTitle':'\uC601\uC778\uB3C4 \uC81C\uB3C4','codeValue':'IO'},{'codeEngValue':'OM','codeEngTitle':'Oman','codeTitle':'\uC624\uB9CC','codeValue':'OM'},{'codeEngValue':'AU','codeEngTitle':'Australia','codeTitle':'\uC624\uC2A4\uD2B8\uB808\uC77C\uB9AC\uC544','codeValue':'AU'},{'codeEngValue':'AT','codeEngTitle':'Austria','codeTitle':'\uC624\uC2A4\uD2B8\uB9AC\uC544','codeValue':'AT'},{'codeEngValue':'HN','codeEngTitle':'Honduras','codeTitle':'\uC628\uB450\uB77C\uC2A4','codeValue':'HN'},{'codeEngValue':'JO','codeEngTitle':'Jordan','codeTitle':'\uC694\uB974\uB2E8','codeValue':'JO'},{'codeEngValue':'UG','codeEngTitle':'Uganda','codeTitle':'\uC6B0\uAC04\uB2E4','codeValue':'UG'},{'codeEngValue':'UY','codeEngTitle':'Uruguay','codeTitle':'\uC6B0\uB8E8\uACFC\uC774','codeValue':'UY'},{'codeEngValue':'UZ','codeEngTitle':'Uzbekistan\xA0','codeTitle':'\uC6B0\uC988\uBCA0\uD0A4\uC2A4\uD0C4','codeValue':'UZ'},{'codeEngValue':'UA','codeEngTitle':'Ukraine','codeTitle':'\uC6B0\uD06C\uB77C\uC774\uB098','codeValue':'UA'},{'codeEngValue':'WF','codeEngTitle':'Wallis Futuna','codeTitle':'\uC6D4\uB9AC\uC2A4 \uD6C4\uD2B8\uB098','codeValue':'WF'},{'codeEngValue':'ET','codeEngTitle':'Ethiopia','codeTitle':'\uC774\uB514\uC624\uD53C\uC544','codeValue':'ET'},{'codeEngValue':'IQ','codeEngTitle':'Iraq','codeTitle':'\uC774\uB77C\uD06C','codeValue':'IQ'},{'codeEngValue':'IR','codeEngTitle':'Islamic Repubic of Iran','codeTitle':'\uC774\uB780-\uC774\uC2AC\uB78C\uACF5\uD654\uAD6D','codeValue':'IR'},{'codeEngValue':'IL','codeEngTitle':'Israel','codeTitle':'\uC774\uC2A4\uB77C\uC5D8','codeValue':'IL'},{'codeEngValue':'EG','codeEngTitle':'Egypt','codeTitle':'\uC774\uC9D1\uD2B8','codeValue':'EG'},{'codeEngValue':'IT','codeEngTitle':'Italy','codeTitle':'\uC774\uD0C8\uB9AC\uC544','codeValue':'IT'},{'codeEngValue':'IN','codeEngTitle':'India','codeTitle':'\uC778\uB3C4','codeValue':'IN'},{'codeEngValue':'ID','codeEngTitle':'Indonesia','codeTitle':'\uC778\uB3C4\uB124\uC2DC\uC544','codeValue':'ID'},{'codeEngValue':'JM','codeEngTitle':'Jamaica','codeTitle':'\uC790\uBA54\uC774\uCE74','codeValue':'JM'},{'codeEngValue':'ZM','codeEngTitle':'Zambia','codeTitle':'\uC7A0\uBE44\uC544','codeValue':'ZM'},{'codeEngValue':'GQ','codeEngTitle':'Equatorial\xA0Guinea\xA0\xA0\xA0\xA0\xA0\xA0','codeTitle':'\uC801\uB3C4 \uAE30\uB2C8','codeValue':'GQ'},{'codeEngValue':'CF','codeEngTitle':'Central Africa','codeTitle':'\uC911\uC559 \uC544\uD504\uB9AC\uCE74','codeValue':'CF'},{'codeEngValue':'DJ','codeEngTitle':'Djibouti','codeTitle':'\uC9C0\uBD80\uD2F0','codeValue':'DJ'},{'codeEngValue':'GI','codeEngTitle':'Gibraltar','codeTitle':'\uC9C0\uBE0C\uB784\uD0C0','codeValue':'GI'},{'codeEngValue':'ZW','codeEngTitle':'Zimbabwe','codeTitle':'\uC9D0\uBC14\uBE0C\uC6E8','codeValue':'ZW'},{'codeEngValue':'TD','codeEngTitle':'Chad','codeTitle':'\uCC28\uB4DC','codeValue':'TD'},{'codeEngValue':'CZ','codeEngTitle':'Czech','codeTitle':'\uCCB4\uCF54','codeValue':'CZ'},{'codeEngValue':'CL','codeEngTitle':'Chile','codeTitle':'\uCE60\uB808','codeValue':'CL'},{'codeEngValue':'CM','codeEngTitle':'Cameroon','codeTitle':'\uCE74\uBA54\uB8EC','codeValue':'CM'},{'codeEngValue':'KY','codeEngTitle':'Cayman Islands','codeTitle':'\uCE74\uC774\uB9CC \uAD70\uB3C4','codeValue':'KY'},{'codeEngValue':'KZ','codeEngTitle':'Kazakhstan','codeTitle':'\uCE74\uC790\uD750\uC2A4\uD0C4','codeValue':'KZ'},{'codeEngValue':'QA','codeEngTitle':'Qatar','codeTitle':'\uCE74\uD0C0\uB974','codeValue':'QA'},{'codeEngValue':'KH','codeEngTitle':'Cambodia','codeTitle':'\uCE84\uBCF4\uB514\uC544','codeValue':'KH'},{'codeEngValue':'CA','codeEngTitle':'Canada','codeTitle':'\uCE90\uB098\uB2E4','codeValue':'CA'},{'codeEngValue':'KE','codeEngTitle':'Kenya','codeTitle':'\uCF00\uB0D0','codeValue':'KE'},{'codeEngValue':'KM','codeEngTitle':'Comoros','codeTitle':'\uCF54\uBAA8\uB974','codeValue':'KM'},{'codeEngValue':'CR','codeEngTitle':'Costa Rica','codeTitle':'\uCF54\uC2A4\uD0C0\uB9AC\uCE74','codeValue':'CR'},{'codeEngValue':'CC','codeEngTitle':'Cocos\xA0Keeling Islands','codeTitle':'\uCF54\uCF54\uC2A4\uD0AC\uB9C1 \uC81C\uB3C4','codeValue':'CC'},{'codeEngValue':'CI','codeEngTitle':'Ivory Coast','codeTitle':'\uCF54\uD2B8\uB514\uBD80\uC640\uB974','codeValue':'CI'},{'codeEngValue':'CO','codeEngTitle':'Columbia','codeTitle':'\uCF5C\uB86C\uBE44\uC544','codeValue':'CO'},{'codeEngValue':'CG','codeEngTitle':'Congo','codeTitle':'\uCF69\uACE0','codeValue':'CG'},{'codeEngValue':'CU','codeEngTitle':'Cuba','codeTitle':'\uCFE0\uBC14','codeValue':'CU'},{'codeEngValue':'KW','codeEngTitle':'Kuwait','codeTitle':'\uCFE0\uC6E8\uC774\uD2B8','codeValue':'KW'},{'codeEngValue':'CK','codeEngTitle':'Cook Island','codeTitle':'\uCFE0\uD06C \uAD70\uB3C4','codeValue':'CK'},{'codeEngValue':'HR','codeEngTitle':'Croatia','codeTitle':'\uD06C\uB85C\uC544\uD2F0\uC544','codeValue':'HR'},{'codeEngValue':'CX','codeEngTitle':'Christmas Island','codeTitle':'\uD06C\uB9AC\uC2A4\uB9C8\uC2A4 \uC12C','codeValue':'CX'},{'codeEngValue':'KG','codeEngTitle':'Kyrgyzstan','codeTitle':'\uD0A4\uB974\uAE30\uC2A4\uC2A4\uD0C4','codeValue':'KG'},{'codeEngValue':'KI','codeEngTitle':'Kiribati','codeTitle':'\uD0A4\uB9AC\uBC14\uC2DC','codeValue':'KI'},{'codeEngValue':'TJ','codeEngTitle':'Tajikistan','codeTitle':'\uD0C0\uC9C0\uD0A4\uC2A4\uD0C4','codeValue':'TJ'},{'codeEngValue':'TR','codeEngTitle':'Turkey','codeTitle':'\uD130\uC5B4\uD0A4','codeValue':'TR'},{'codeEngValue':'TC','codeEngTitle':'Turks and Caicos Islands','codeTitle':'\uD130\uD06C\uC2A4 \uCE74\uC774\uCF54\uC2A4 \uC81C\uB3C4','codeValue':'TC'},{'codeEngValue':'TG','codeEngTitle':'Togo','codeTitle':'\uD1A0\uACE0','codeValue':'TG'},{'codeEngValue':'TK','codeEngTitle':'Tokelau','codeTitle':'\uD1A0\uCF08\uB77C\uC6B0','codeValue':'TK'},{'codeEngValue':'TO','codeEngTitle':'Tonga','codeTitle':'\uD1B5\uAC00','codeValue':'TO'},{'codeEngValue':'TM','codeEngTitle':'Turkmenistan','codeTitle':'\uD22C\uB974\uD06C\uBA54\uB2C8\uC2A4\uD0C4','codeValue':'TM'},{'codeEngValue':'TV','codeEngTitle':'Tuvalu','codeTitle':'\uD22C\uBC1C\uB8E8','codeValue':'TV'},{'codeEngValue':'TN','codeEngTitle':'Tunisia','codeTitle':'\uD280\uB2C8\uC9C0','codeValue':'TN'},{'codeEngValue':'TT','codeEngTitle':'Trinidad\xA0and\xA0Tobago','codeTitle':'\uD2B8\uB9AC\uB2C8\uB2E4\uB4DC \uD1A0\uBC14\uACE0','codeValue':'TT'},{'codeEngValue':'PA','codeEngTitle':'Panama','codeTitle':'\uD30C\uB098\uB9C8','codeValue':'PA'},{'codeEngValue':'PY','codeEngTitle':'Paraguay','codeTitle':'\uD30C\uB77C\uACFC\uC774','codeValue':'PY'},{'codeEngValue':'PK','codeEngTitle':'Pakistan','codeTitle':'\uD30C\uD0A4\uC2A4\uD0C4','codeValue':'PK'},{'codeEngValue':'PG','codeEngTitle':'Papua New Guinea','codeTitle':'\uD30C\uD478\uC544\uB274\uAE30\uB2C8','codeValue':'PG'},{'codeEngValue':'PW','codeEngTitle':'Palau','codeTitle':'\uD314\uB77C\uC6B0','codeValue':'PW'},{'codeEngValue':'FO','codeEngTitle':'Faroe Islands','codeTitle':'\uD398\uB85C \uAD70\uB3C4','codeValue':'FO'},{'codeEngValue':'PE','codeEngTitle':'Peru','codeTitle':'\uD398\uB8E8','codeValue':'PE'},{'codeEngValue':'PT','codeEngTitle':'Portugal','codeTitle':'\uD3EC\uB974\uD22C\uAC08','codeValue':'PT'},{'codeEngValue':'FK','codeEngTitle':'Falkland','codeTitle':'\uD3EC\uD074\uB79C\uB4DC','codeValue':'FK'},{'codeEngValue':'PL','codeEngTitle':'Poland','codeTitle':'\uD3F4\uB780\uB4DC','codeValue':'PL'},{'codeEngValue':'PR','codeEngTitle':'Puerto\xA0Rico','codeTitle':'\uD478\uC5D0\uB974\uD1A0\uB9AC\uCF54','codeValue':'PR'},{'codeEngValue':'FR','codeEngTitle':'France','codeTitle':'\uD504\uB791\uC2A4','codeValue':'FR'},{'codeEngValue':'TF','codeEngTitle':'The southern part of France','codeTitle':'\uD504\uB791\uC2A4 \uB0A8\uBD80 \uC9C0\uC5ED','codeValue':'TF'},{'codeEngValue':'GF','codeEngTitle':'French\xA0Guiana','codeTitle':'\uD504\uB791\uC2A4\uB839 \uAE30\uC544\uB098','codeValue':'GF'},{'codeEngValue':'PF','codeEngTitle':'Polynesia','codeTitle':'\uD504\uB791\uC2A4\uB839 \uD3F4\uB9AC\uB124\uC2DC\uC544','codeValue':'PF'},{'codeEngValue':'FJ','codeEngTitle':'Fiji','codeTitle':'\uD53C\uC9C0','codeValue':'FJ'},{'codeEngValue':'FI','codeEngTitle':'Finland','codeTitle':'\uD540\uB780\uB4DC','codeValue':'FI'},{'codeEngValue':'PH','codeEngTitle':'Philippines','codeTitle':'\uD544\uB9AC\uD540','codeValue':'PH'},{'codeEngValue':'PN','codeEngTitle':'Pitcairn Islands','codeTitle':'\uD54F\uCF00\uC5B8 \uAD70\uB3C4','codeValue':'PN'},{'codeEngValue':'HM','codeEngTitle':'Heard Isaland and MacDonald Islands','codeTitle':'\uD5C8\uB4DC\uC12C \uBC0F \uB9E5\uB3C4\uB0A0\uB4DC \uAD70\uB3C4','codeValue':'HM'},{'codeEngValue':'HU','codeEngTitle':'Hungary','codeTitle':'\uD5DD\uAC00\uB9AC','codeValue':'HU'},{'codeEngValue':'HK','codeEngTitle':'Hong Kong','codeTitle':'\uD64D\uCF69','codeValue':'HK'},{'codeEngValue':'VG','codeEngTitle':'British Virgin Islands','codeTitle':'BRITISH -\uC601\uAD6D\uB839 \uBC84\uC9C4\uC544\uC77C\uB79C\uB4DC','codeValue':'VG'},{'codeEngValue':'VA','codeEngTitle':'HOLY SEE -Vatican','codeTitle':'HOLY SEE -\uBC14\uD2F0\uCE78','codeValue':'VA'},{'codeEngValue':'YE','codeEngTitle':'Republic of Yemen','codeTitle':'REPUBLIC OF - \uC608\uBA58','codeValue':'YE'},{'codeEngValue':'VI','codeEngTitle':'American Vergin Islands','codeTitle':'U.S. -\uBBF8\uAD6D\uB839 \uBC84\uC9C4\uC544\uC77C\uB79C\uB4DC','codeValue':'VI'},{'codeEngValue':'TZ','codeEngTitle':'United Republic of Tanzania','codeTitle':'UNITED REPUBLIC OF - \uD0C4\uC790\uB2C8\uC544','codeValue':'TZ'}];
		
		// radio버튼 클릭시 동작
		var selectNation = function(thisObj) {
			$('input[name="apisNationCodeTmp"]').val($(thisObj).data('code'));
			$('input[name="nationCodeExplainTmp"]').val($(thisObj).data('explain'));
		};
		
		// 엔터 검색
		$("input[name=searchVal]").on("keyup", function(e){
			var inputVal = $(this).val();

			if(inputVal != '' && inputVal.length > 0) {
				$('#searchResultText').css('visibility', 'visible');
			} else {
				$('#searchResultText').css('visibility', 'hidden');
			}

			$('#searchInputPtag').text('‘' + inputVal + '’');
			apisNationCodeSearch();
		});

		var apisNationCodeSearch = function() {
			var apisNationDataTmp = apisNationData;

			var inputVal = $("input[name=searchVal]").val().toUpperCase();

			$.each(apisNationDataTmp, function(idx, item) {
				var codeTitle = item.codeTitle;
				var codeEngTitle = item.codeEngTitle;
				var codeValue = item.codeValue;
				var nationExplain = codeTitle + (codeEngTitle != null ? " (" + codeEngTitle + ")" : "");

				if(nationExplain.toUpperCase().indexOf(inputVal) > -1) {
					$('#list_li_'+codeValue).css('display', 'block');
				} else {
					$('#list_li_'+codeValue).css('display', 'none');
				}
			});
		};

		// 확인버튼
		var nationConfirm = function() {
			var code = $("input[name=apisNationCodeTmp]").val();
			var codeExplain = $("input[name=nationCodeExplainTmp]").val();

			callbackSelectApisNation(code, codeExplain);
			nationality(codeExplain);
			
			closeSelf();
		};
		
		/**
		 * 레이어 종료, 부모창 재호출
		 * callback : callBackOpener()
		 */
		var closeSelf = function(){
			 $('#modalArea').modal('hide');
			var hideLayerName = 'apis_region_layer';
			controllLayer(('#'+hideLayerName), 0);	// ui.common.js 레이어 제어 함수(레이어 소스 구성 id값, '1') --> 1 : 레이어 제어 함수 기능중 open 제어, 1이 아니면 close
			$('#layer_area').empty();	// 해당 레이어 remove
		};
	</script>
	
	<c:import url="../common/footer.jsp" />

	<script type="text/javascript">

		function tooltipBlock(){
			$(".layer_tooltip").css("display","block");
		}
		function tooltipNone(){
			$(".layer_tooltip").css("display","none");
		}
		
		
		var phoneOne = "";
		var phoneTwo = "";
		var phoneThree = "";
		var emailOne = "";
		var emailTwo = "";
		
		
		
		$("#userPwd").keyup(function(){
			var pw = $(this).val();
			var ENG = pw.match(/[A-Za-z]/g);
			var num = pw.match(/[0123456789]/g);
			var space = pw.match(/ /g);
			var kor = pw.match(/[ㄱ-ㅎ가-힣ㅏ-ㅣ]/g);
			var spe = pw.match(/[`~!@#$%^&*()-/'/"/_/+/=/|/?/;/:/,/</./>\\\{\}\[\]]/g);
			var speun = pw.match(/[%&()+;'",<>]/g);
		
			//8자리 이상 체크
			if(pw.length >7){
				$(".pwd_rule  > li").eq(0).children().removeClass('unable');
			$(".pwd_rule  > li").eq(0).children().addClass('able');
			}else{
				$(".pwd_rule  > li").eq(0).children().removeClass('able');
				$(".pwd_rule  > li").eq(0).children().addClass('unable');
			}
		
			//영문 포함 체크
			if(ENG != null){
				$(".pwd_rule  > li").eq(1).children().removeClass('unable');
				$(".pwd_rule  > li").eq(1).children().addClass('able');
			}else{
				$(".pwd_rule  > li").eq(1).children().removeClass('able');
				$(".pwd_rule  > li").eq(1).children().addClass('unable');
			}
		
			//숫자 포함 체크
			if(num != null){
				$(".pwd_rule  > li").eq(2).children().removeClass('unable');
				$(".pwd_rule  > li").eq(2).children().addClass('able');
			}else{
				$(".pwd_rule  > li").eq(2).children().removeClass('able');
				$(".pwd_rule  > li").eq(2).children().addClass('unable');
			}
		
			//특수문자체크
			if(spe != null){
				$(".pwd_rule  > li").eq(3).children().removeClass('unable');
				$(".pwd_rule  > li").eq(3).children().addClass('able');
			}else{
				$(".pwd_rule  > li").eq(3).children().removeClass('able');
				$(".pwd_rule  > li").eq(3).children().addClass('unable');
			}
		
			//한글,공백 체크
			if(space == null && kor == null){
				$(".pwd_rule  > li").eq(4).children().removeClass('unable');
				$(".pwd_rule  > li").eq(4).children().addClass('able');
			}else{
				$(".pwd_rule  > li").eq(4).children().removeClass('able');
				$(".pwd_rule  > li").eq(4).children().addClass('unable');
			}
		
			//20자리 이상 체크
			if(pw.length >19){
				$(".pwd_rule  > li").eq(5).children().removeClass('able');
				$(".pwd_rule  > li").eq(5).children().addClass('unable');
			}else{
				$(".pwd_rule  > li").eq(5).children().removeClass('unable');
				$(".pwd_rule  > li").eq(5).children().addClass('able');
			}
		
			//보안체크
			if(speun != null){
				$(".pwd_rule  > li").eq(6).children().removeClass('able');
				$(".pwd_rule  > li").eq(6).children().addClass('unable');
			}else{
				$(".pwd_rule  > li").eq(6).children().removeClass('unable');
				$(".pwd_rule  > li").eq(6).children().addClass('able');
			}
			
		});
		$("#userPwd").blur(function(){
			$("#userPwdConfirm").val("");
			$("#error_pwConfirm").css("display", "none");
			$("#error_pwConfirm").html('');
			pwflag = false;
		});
		
		var pwflag = false;
		//비밀번호 확인 체크
		$("#userPwdConfirm").blur(function(){
			var pw2 = $(this).val();
			var pw = $("#userPwd").val();
			if(pw == pw2){
				$("#error_pwConfirm").css("display", "none");
				$("#error_pwConfirm").html('');
				pwflag = true;
		
			}else{
				$("#error_pwConfirm").css("display", "block");
				$("#error_pwConfirm").html('비밀번호가 일치하지 않습니다.');
				pwflag = false;
			}
		});
		
		
		//생년월일 
		function addZero(n){
			
			return n<10? "0"+n : n;
		}
		
		$("#select_year").blur(function(){
			year = $(this).val();
			
			$("#birthday").val(year);
		});
		
		$("#select_month").blur(function(){
			month = $(this).val();
			
			$("#birthday").val(year + "-" + month);
		});
		
		$("#select_day").blur(function(){
			day = $(this).val();
				
			$("#birthday").val(year + "-" + addZero(month) + "-" + addZero(day)); 
			
		
		});
		
		
		//휴대전화 번호 값 받기
		$("#select_koreaPhone").change(function(){
			phoneOne = $(this).val();
			$("#phonesum").val(phoneOne+phoneTwo+phoneThree);
		});
		
		$("#input_koreaPhoneMiddle").blur(function(){
			phoneTwo = $(this).val();
			$("#phonesum").val(phoneOne+phoneTwo+phoneThree);
		});
		
		$("#input_koreaPhoneLast").blur(function(){
			phoneThree = $(this).val();
			$("#phonesum").val(phoneOne+phoneTwo+phoneThree);
		});
		
		//국가 보내기
		var nationality = function(codeExplain){ 
			
			var nationalityName = codeExplain;
			
			console.log(nationalityName);
			
			$("#nationality").val(nationalityName);	
		
		};
		
		
		//도메인 선택
		$("#select_emailDomain").change(function(){
			if($("#select_emailDomain option:eq(0)").prop("selected")){
				$("#input_emailDomain").css("display","inline");
				$("#emailsum").val(emailOne+'@');
			}else{
				$("#input_emailDomain").css("display","none");
				emailTwo = $(this).val();
				$("#emailsum").val(emailOne+'@'+emailTwo);
			}
		});
		
		
		//이메일 작업
		$("#email").blur(function(){
			emailOne = $(this).val();
			$("#emailsum").val(emailOne+'@'+emailTwo);
		});
		
		$("#input_emailDomain").blur(function(){
			emailTwo = $(this).val();
			$("#emailsum").val(emailOne+'@'+emailTwo);
		});
		
		
		//ID중복체크 모달 띄우기
		$("#btn_memberidCheck").click(function(){
			
			if($("#userId").val() == ""){
				alert('아이디 입력 후 클릭해주시기 바랍니다.');
			}else{
				$("#btn_idCheck").click();
				$("#input_laterInputId").val($("#userId").val());
				$("#p_info").css("display", "none");
				$("#p_idRule").css("display", "block");
				$("#btn_layerIdUse").attr('disabled',true);
			}
			
		});
		
		//ID중복체크
		$("#btn_layerIdChedk").click(function(){
			var idcheck = $("#input_laterInputId").val();
			var ENG = idcheck.match(/[A-Za-z]/g);
			var num = idcheck.match(/[0123456789]/g);
			var space = idcheck.match(/ /g);
			var kor = idcheck.match(/[ㄱ-ㅎ가-힣ㅏ-ㅣ]/g);
			var spe = idcheck.match(/[`~!@#$%^&*()-/'/"/_/+/=/|/?/;/:/,/</./>\\\{\}\[\]]/g);
			
			if(idcheck.length >5 && idcheck.length <16 && space == null && kor == null && spe == null){
				$.get("idCheck.me?checkId="+idcheck, function(data){
						
					console.log(data);
					console.log(idcheck);
					
					if(data == "NNNNY"){
						$("#p_info").css("display", "block");
						$("#p_idRule").css("display", "none");
						$("#btn_layerIdUse").attr('disabled',false);
						$("#p_info").html('<span class="col_brown">'+idcheck+'</span>는 사용하실수 있습니다.');
					}else{
						$("#p_info").css("display", "block");
						$("#p_idRule").css("display", "none");
						$("#btn_layerIdUse").attr('disabled',true);
						$("#p_info").html('<span class="col_brown">'+idcheck+'</span>는 사용하실수 없습니다.');
					}
				});
			}
		});
		
		$("#input_laterInputId").blur(function(){
			$("#btn_layerIdUse").attr("disabled", true);
		});
		var idflag = false;
		//id 사용하기
		$("#btn_layerIdUse").click(function(){
		
			if($("#btn_layerIdUse").is(':disabled')){
				alert('a');
			}else{
				$("#btn_layerClose").click();
				$("#userId").val($("#input_laterInputId").val());
				$("#userId").attr("readonly",true);
				$("#error_id").css("display","none");
				$("#error_id").html('');
				idflag = true;
			}
			
		});
		
		//국문 input 정규식
		$("#korName").keyup(function(event) {
		    if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
		       var inputVal = $(this).val();
		       $(this).val(inputVal.replace(/[^(가-힣)]/gi, ''));
		    }
		 });
		 
		//영문 input 정규식
		$("#engName").keyup(function(event) {
		    if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
		       var inputVal = $(this).val();
		       $(this).val(inputVal.replace(/[^(a-zA-Z)]/gi, '').toUpperCase());
		    }
		 });
		
		//이메일 input 정규식
		$("#email").keyup(function(event) {
		    if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
		        var inputVal = $(this).val();
		        $(this).val(inputVal.replace(/[^(a-zA-Z0-9)]/gi, ''));
		     }
		  });
		
		//국문 에러창 없애기
		$("#korName").blur(function(){
			if($(this).val() != ""){
				$("#error_koreanName").css("display","none");
				$("#error_koreanName").html('');
			}
		});
		
		//영문 에러창 없애기
		$("#engName").blur(function(){
			if($(this).val() != ""){
				$("#error_englishName").css("display","none");
				$("#error_englishName").html('');
			}
		});
		
		
		//아이디 에러창 없애기
		$("#userId").blur(function(){
			if($(this).val() != ""){
				$("#error_id").css("display","none");
				$("#error_id").html('');
			}
		});
		
		//비번 에러창 없애기
		$("#userPwd").blur(function(){
			if($(this).val() != ""){
				$("#error_pw").css("display","none");
				$("#error_pw").html('');
			}
		});
		
		//생년월일 년도 에러창 없애기
		$("#select_year").change(function(){
		
			if(!$(this).eq(0).prop("selected")){
				$("#error_birthday").css("display","none");
				$("#error_birthday").html('');
			}
		});
		//생년월일 월 에러창 없애기
		$("#select_month").change(function(){
		
			if(!$(this).eq(1).prop("selected")){
				$("#error_birthday").css("display","none");
				$("#error_birthday").html('');
			}
		});
		//생년월일 일 에러창 없애기
		$("#select_day").change(function(){
		
			if(!$(this).eq(2).prop("selected")){
				$("#error_birthday").css("display","none");
				$("#error_birthday").html('');
			}
		});
		
		//전화번호 첫자리 에러창 없애기
		$("#select_koreaPhone").change(function(){
		
			if(!$(this).eq(0).prop("selected")){
				$("#error_koreaPhone").css("display","none");
				$("#error_koreaPhone").html('');
			}
		});
		
		//전화번호 중간, 끝자리 에러창 없애기
		$("#input_koreaPhoneMiddle, #input_koreaPhoneLast").blur(function(){
			if($(this).val != ""){
				$("#error_koreaPhone").css("display","none");
				$("#error_koreaPhone").html('');
			}
		});
		
		//이메일 id 에러창 없애기
		$("#email").blur(function(){
			if($(this).val() != ""){
				$("#error_emailID").css("display","none");
				$("#error_emailID").html('');
			}
		});
		
		//이메일 도메인 에러창 없애기
		$("#input_emailDomain").blur(function(){
			if($(this).val() != ""){
				$("#error_emailDomain").css("display","none");
				$("#error_emailDomain").html('');
			}
		});
		
		//지역 검색 에러창 없애기
		$("#nationality").blur(function(){
			if($(this).val() != ""){
				$("#error_nationality").css("display","none");
				$("#error_nationality").html('');
			}
		});
	
	
		//폼 전송
		$("#btn_confirm").click(function(){
			var pwcount = 0;
			$(".pwd_rule li").each(function(){
				if($(this).children('span').hasClass('unable')){
					pwcount++;
				}
			});
			//이름체크
			if($("#korName").val() == ""){
				$("#korName").focus();
				$("#error_koreanName").css("display","block");
				$("#error_koreanName").html('이름을 입력해주세요.');
			//idCheck
			}else if($("#engName").val() == ""){
				$("#engName").focus();
				$("#error_englishName").css("display","block");
				$("#error_englishName").html('이름을 입력해주세요.');
			}else if($("#userId").val == ""){
				$("#userId").focus();
				$("#error_id").css("display","block");
				$("#error_id").html('아이디을 입력해주세요.');
			//중복확인 여부
			}else if(!idflag){
				$("#userId").focus();
				$("#error_id").css("display","block");
				$("#error_id").html('아이디 중복확인을 해주세요.');
			//비밀번호 검증 확인
			}else if(pwcount > 0){
				$("#userPwd").focus();
				$("#error_pw").css("display","block");
				$("#error_pw").html('비밀번호를 확인해주세요');
				tooltipBlock();
			//비밀번호 일치 확인		
			}else if(!pwflag){
				$("#userPwdConfirm").focus();
				$("#error_pwConfirm").css("display","block");
				$("#error_pw").html('비밀번호가 일치하지 않습니다.');
			}else if($("#birthday").val().length <10){
				$("#select_year").focus();
				$("#error_birthday").css("display","block");
				$("#error_birthday").html('생년월일을 모두 선택해주세요.');	
			//휴대전화번호 확인
			}else if($("#phonesum").val().length < 9){		
				$("#select_koreaPhone").focus();
				$("#error_koreaPhone").css("display","block");
				$("#error_koreaPhone").html('휴대전화 번호를 입력해주세요.');
			//이메일 확인
			}else if($("#email").val() == ""){
				$("#email").focus();
				$("#error_emailID").css("display","block");
				$("#error_emailID").html('이메일을 입력해주세요.');
			//도메인 확인
			}else if($("#select_emailDomain option:eq(0)").prop("selected") && $("#input_emailDomain").val() == ""){
				$("#input_emailDomain").focus();
				$("#error_emailDomain").css("display","block");
				$("#error_emailDomain").html('도메인을 입력해주세요.');
			//국가 확인
			}else if($("#nationality").val() == ""){
				$("#nationality").focus();
				$("#error_nationality").css("display","block");
				$("#error_nationality").html('국가를 선택해주세요.');
			}else{	
				$("#join_form").submit();
			}
			
		});
	
		$("#userPwd").click(function (){
			tooltipBlock();
		});
		
		$("#userPwd").blur(function(){
			tooltipNone();
		});

	</script>

</body>
</html>