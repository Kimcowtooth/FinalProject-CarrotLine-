let $caKind = "OW";				//종류(편도/왕복)
let $caDepartureAirport = ""; 	//출발공항코드
let $caArrivalAirport = ""; 		//도착공항코드
let $caDepCity = "";				//출발공항이름
let $caArrCity = "";				//도착공항이름
let $caDepartureDate = "";		//출발날짜
let $caConti = "";				//여행국가
let $caAdult = ""; 				//성인 수
let $caChild = ""; 				//소아 수
let $caBaby = ""; 				//유아 수 
 
<!-- 왕복/편도 선택 script -->
	
	$('.booking_option').on('click','li',function(){
		$caKind = $(this).find('input').val();
		
		console.log($caKind);
		
		if($caKind=='RT'){
			let rtType = $(this).prev().find('input');
			rtType.parents('li').removeClass('on');
			$(this).addClass('on');
			$('#booking01').css('display','block');
			$('#booking02').find('#calOpen').css('display','none');
			$('#booking02').css('display','none');
		}else{
			let owType = $(this).next().find('input');
			owType.parents('li').removeClass('on');
			$(this).addClass('on');
			$('#booking01').css('display','none');
			$('#booking01').find('#calOpen').css('display','none');
			$('#booking02').css('display','block');
		}
	});
	
<!-- //왕복/편도 선택 script -->

<!-- 편도 공항 선택 script -->

	//[출발지]input태그 클릭 시 공항 선택div 보여주기 - 다시 클릭 시 안보여주기
	$('#booking02').on('click', '#ow_start', function() {
		if($('#route_departure_ow').css('display')=='none'){
			$('#route_departure_ow').css('display','block')
		}else if($('#route_departure_ow').css('display')=='block'){
			$('#route_departure_ow').css('display','none')
		}else{
			console.log("error");
		}
	});
	
	//대륙 선택하면 선택한 대륙의 공항 리스트 보여주기
	//편도-출발지
	$('#mCSB_11_container').on('click','.contiList',function(){
		//기존 conti값이 없으면 그냥 처리되고
		//만약 conti값이 있으면 그거랑 비교해서 다르면 remove();처리.
		if($('#mCSB_11_container').find('a').hasClass('on')){
			$('#mCSB_11_container').find('a').removeClass('on');
		}
		$(this).children('a').addClass('on');
		
		let $caContiArr = "";
		$caContiArr = $(this).children('a').text();	//클릭한 대륙이름 추출 (=continent)
	
		console.log($caContiArr);
		
		let $liStr = "";
		
		//클릭한 대륙 이름값 컨트롤러로 보내기
		$.ajax({
			url : 'selectDepCityList.re',
			data : {continentArr : $caContiArr},	
			
			//선택된 대륙 이름값에 대한 city리스트가지고 돌아오기
			//result에 cityList 담겨있음
			//이거 for문 돌려서 div 안에 뿌려주는 function 만들기.
			success : function(result){
				//$('.airportList')이 div안에 html로 ul,li해서 뿌리기
				var $cityList = result;
				
				if(!$cityList.isEmpty){
					$.each($cityList, function(index, el){
						$liStr += '<li>'+
						'<a class="sel_city" href="#none">'+
							'<span class="kor">'+el.city+'</span>'+
							'<span class="eng">'+el.airportCode+'</span></a></li>';
						
					})
					$('.airportList_Dep').html($liStr);
				}
			},
			error : function(){
				console.log("fail");
			}
		});		
	});
	
	
	//[출발지]선택한 공항 출발지 선택된 레이어의 input안에 넣어주기
	$('.airportList_Dep').on('click','li',function(){
		$caDepCity = $(this).find('.kor').text();
		$caDepartureAirport = $(this).find('.eng').text();
		
		let $inInput1 = $caDepartureAirport+" "+$caDepCity;
		
		 $('#ow_start').val($inInput1);
		 $('.input_wrap.start').addClass('focus');
		 
		$('#route_departure_ow').css('display','none');
		
	});
	
	//----------------------/편도-도착지/------------------------------//
	
	//[도착지]input태그 클릭 시 공항 선택div 보여주기 - 다시 클릭 시 안보여주기
	$('#booking02').on('click', '#ow_finish', function() {
	
		console.log($caDepartureAirport);
		
		//출발지의 input값이 null이면 alert창 띄워주기 
		if($caDepartureAirport == ""){
			alert("출발지를 선택해주세요!");
			$('#route_arrival_rt').css('display','none');
		
		} else {
	
			//출발지에서 선택한 conti제외한 나머지 conti 가져와서 뿌리는 ajax 처리하기
			$.ajax({
				url : 'selectAbleCityList.re',
				data : {caDepartureAirport : $caDepartureAirport},	
				
				//선택된 대륙 이름값에 대한 city리스트가지고 돌아오기
				//result에 cityList 담겨있음
				//이거 for문 돌려서 div 안에 뿌려주는 function 만들기.
				success : function(result){
					//$('.airportList')이 div안에 html로 ul,li해서 뿌리기
					let $contiList = result;
					
					var $contiStr = "";
					
					if(!$contiList.isEmpty){
						$.each($contiList, function(index, el){
							$contiStr += '<li class="contiList contiList_SKR">'
	                        				+'<a class="sel_area" href="#none">'+el.continent+'</a></li>';
						})
						$('#mCSB_7_container').html($contiStr);
						
					}
					
				},
				error : function(){
					console.log("fail");
				}
			});		
	
			if($('#route_arrival_ow').css('display')=='none'){
				$('#route_arrival_ow').css('display','block')
			}else if($('#route_arrival_ow').css('display')=='block'){
				$('#route_arrival_ow').css('display','none')
			}else{
				console.log("error");
			}
		}
	});
	
	//대륙 선택하면 선택한 대륙의 공항 리스트 보여주기
	//편도-도착지
	$('#mCSB_7_container').on('click','.contiList',function(){
		//기존 conti값이 없으면 그냥 처리되고
		//만약 conti값이 있으면 그거랑 비교해서 다르면 remove();처리.
		if($('#mCSB_7_container').find('a').hasClass('on')){
			$('#mCSB_7_container').find('a').removeClass('on');
		}
		$(this).children('a').addClass('on');
		
		$caConti = $(this).children('a').text();	//클릭한 대륙이름 추출 (=continent)
	
		console.log($caConti);
		
		let $liStr = "";
		
		//클릭한 대륙 이름값 컨트롤러로 보내기
		$.ajax({
			url : 'selectArrCityList.re',
			data : {continent : $caConti,
					caDepartureAirport : $caDepartureAirport},	
			
			//선택된 대륙 이름값에 대한 city리스트가지고 돌아오기
			//result에 cityList 담겨있음
			//이거 for문 돌려서 div 안에 뿌려주는 function 만들기.
			success : function(result){
				//$('.airportList')이 div안에 html로 ul,li해서 뿌리기
				let $cityList = result;
				
				if(!$cityList.isEmpty){
					$.each($cityList, function(index, el){
						$liStr += '<li>'+
						'<a class="sel_city" href="#none">'+
							'<span class="kor">'+el.city+'</span>'+
							'<span class="eng">'+el.airportCode+'</span></a></li>';
						
					})
					$('.airportList_Arr').html($liStr);
					
				}
				
			},
			error : function(){
				console.log("fail");
			}
			
		});		
	});
	
	//[도착지]선택한 공항 출발지 선택된 레이어의 input안에 넣어주기
	$('.airportList_Arr').on('click','li',function(){
		$caArrCity = $(this).find('.kor').text();
		$caArrivalAirport = $(this).find('.eng').text();
		
		let $inInput2 = $caArrivalAirport+" "+$caArrCity;
		
		 $('#ow_finish').val($inInput2);
		$('.input_wrap.end').addClass('focus');
		$('#route_arrival_ow').css('display','none');
		
	});

<!-- //편도 공항 선택 script -->

<!-- 왕복 캘린더 창 열고 닫기 script -->
	
<!-- //왕복 캘린더 창 script -->

<!-- 편도 캘린더 창 열고 닫기 script -->
	$('.input_wrap.date.ow').on('click',$('input'),function(){
		console.log("편도 클릭됨");
		if($('#booking02').find('#calOpen2').css('display')=='none'){
			$('#booking02').find('#calOpen2').css('display','block')
		}else if($('#booking02').find('#calOpen2').css('display')=='block'){
			$('#booking02').find('#calOpen2').css('display','none')
			$('.input_wrap.date.ow').addClass('focus');
			console.log('오셨나요');
		}
	});
<!-- //편도 캘린더 창 script -->

<!-- 소아 툴팁 열기 -->
	$('.btn_tooltip.kid').on('click',$('.tooltip_tit'),function(){
		console.log("클릭됨");
		if($('.tooltip_layer.kid').css('display')=='none'){
				$('.tooltip_layer.kid').css('display','block')
			}else if($('.tooltip_layer.kid').css('display')=='block'){
				$('.tooltip_layer.kid').css('display','none')
			}else{
				console.log("error");
			}
	
	});

<!-- //소아 툴팁 열기 -->


<!-- 유아 툴팁 열기 -->
	$('.btn_tooltip.baby').on('click',$('.tooltip_tit'),function(){
		console.log("클릭됨");
		if($('.tooltip_layer.baby').css('display')=='none'){
				$('.tooltip_layer.baby').css('display','block')
			}else if($('.tooltip_layer.baby').css('display')=='block'){
				$('.tooltip_layer.baby').css('display','none')
			}else{
				console.log("error");
			}
	
	});

<!-- //유아 툴팁 열기 -->
	
<!-- 인원수 증감 -->

	$caAdult = $('.booking.passenger.ADULT').val();
	$caChild = $('.booking.passenger.CHILD').val();
	$caBaby = $('.booking.passenger.INFANT').val();
	
	console.log($caAdult);
	console.log($caChild);
	console.log($caBaby);
	
	<!--성인-->
	
	$('.adult.btn_minus').on('click',function(){
		console.log("어른감소");
		if($caAdult>1){
			$('#adult').val(--$caAdult);
		}else{
			alert('성인은 최소 한명 선택해야 합니다.');
		}
	});
	
	$('.adult.btn_plus').on('click',function(){
		console.log("어른증가");
		if($caAdult<10){
			$('#adult').val(++$caAdult);
		}else{
			alert('성인은 최대 9명까지 가능합니다.');
		}
	});
	
	<!--소아-->
	
	$('.kid.btn_minus').on('click',function(){
		console.log("소아감소");
		if($caAdult>1&&$caChild>0){
			$('#kid').val(--$caChild);
		}
	});
	$('.kid.btn_plus').on('click',function(){
		console.log("소아증가");
		if($caAdult>1){
			$('#kid').val(++$caChild);
		}
	});
	
	<!--유아-->
	
	$('.baby.btn_minus').on('click',function(){
		console.log("유아감소");
		if($caAdult>1&&$caBaby>0){
			$('#baby').val(--$caBaby);
		}
	});
	$('.baby.btn_plus').on('click',function(){
		console.log("유아증가");
		if($caAdult>1){
			$('#baby').val(++$caBaby);
		}
	});
<!-- //인원수 증감 -->

<!-- 예매버튼 누르기 -->
	
<!-- //예매버튼 누르기 -->

