<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/header.css">

<!-- 상단 아이콘 -->
<link rel="shortcut icon" type="image/x-icon" href="https://i.pinimg.com/564x/14/48/c1/1448c186eca4cbc8972c3c4d12782d05.jpg">

</head>
<body>
	<div class="header_wrap">
		<div class="header_top_inner">
			<div class="header_top_menu">
				<div class="menu_topwrap">
				
				</div>
				
				<div class="menu_topwrap2">
					<ul>
						<c:choose>
            			<c:when test="${empty loginUser }">
							<!-- 로그인 전 -->
							<li OnClick="location.href ='loginForm.me'" style="cursor:pointer;">로그인</li>
							<li class="li1" OnClick="location.href ='insertAgreeForm.me'" style="cursor:pointer;">회원가입</li>
					    </c:when>
               			<c:otherwise>
               			<!-- 로그인 후 -->
							<li onclick="location.href ='logout.me'" style="cursor:pointer;">로그아웃</li>
<!-- 						<li class="li1" OnClick="location.href ='mypage.me'" style="cursor:pointer;">마이페이지</li> -->
		                </c:otherwise>
		            	</c:choose>
						<li class="li1" OnClick="location.href =''" style="cursor:pointer;">고객센터</li>
					</ul>			 	
				</div>
			</div>
		</div>
		<div class="header_bottom_inner">
			<div class="header_bottom_menu">
				<div class="menu_wrap_Left">
					<img alt="" src="resources/images/logo대충.png" OnClick="location.href ='/${pageContext.request.contextPath}'" style="cursor:pointer;" >
				</div>
			
			
				<div class="menu_wrap">
					<div class="menu1" OnClick="location.href ='bookingPage1_1.re'" style="cursor:pointer;">항공권예약</div>
					<div class="menu1" OnClick="location.href =''" style="cursor:pointer;">공지사항</div>
					<div class="menu1" OnClick="location.href ='myPage.co'" style="cursor:pointer;">나의 예약</div>
				</div>
				
				
				<div class="menu_wrap_Right">
					
					<div class="r1">
						<i class='fas fa-comment-dots' style='font-size: 30px' onclick="window.open('${pageContext.request.contextPath}/chat2','아론','width=470, height=800');"></i>
					</div>
						<!-- 로그인 유무에 따른 마이페이지 접속가능 여부start-->
						<div class="r1">
							<c:if test="${not empty loginUser}">
								<i class="material-icons" OnClick="location.href ='${pageContext.request.contextPath}/mypage/main'" style="font-size:33px; padding-top: 20px; cursor:pointer;">person_pin</i>
							</c:if>
							<c:if test="${empty loginUser}">
								<i class="material-icons mp" style="font-size:33px; padding-top: 20px; cursor:pointer;">person_pin</i>
							</c:if>		
						</div>
						<!-- 로그인 유무에 따른 마이페이지 접속가능 여부end -->
					
						<div class="r1 tooltip1">
						<i class='fas fa-search' id="sbtn" style='font-size:28px; padding-left: 3px;'></i>
							<div class="tooltiptext1">
								<div class="search__container">
									<form action="${pageContext.request.contextPath}/indexSearch" id="frm2">
								  	  <input class="search__input" type="text" placeholder="Search" name="search">
								  	  <i class='fas fa-search' id="ssbtn"></i>
								    </form>
								</div>
							</div>
						</div>
						<!-- 관리자일 경우 관리자페이지 접속가능 여부start-->
						<div class="r1">
							<c:if test="${loginUser.userId eq 'admin'}">
								<span class="material-symbols-outlined" onclick="location.href ='${pageContext.request.contextPath}/adminMainForm.ad'">public</span>
							</c:if>		
						</div>
						<!-- 관리자일 경우 관리자페이지 접속가능 여부end-->
					
				</div>
			</div>
		</div>
	</div>
	
	
	<script type="text/javascript">
		/* 검색 */
		$('body').on('click', '#sbtn', function(){
			$('.tooltiptext1').css("display", "inline-block");
		});
		
		$('body').on('click', '#ssbtn', function(){
			$('#frm2').submit();
		});
		
		
		$('body').on('click', '.mp', function(){
			alert("로그인 해주세요.");
			location.href="${pageContext.request.contextPath}/member/memberLogin";	
		});
	</script>
</body>
</html>