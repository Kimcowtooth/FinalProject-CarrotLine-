
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>AIRLINE ADMIN</title>
  
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/reset.css">
   <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
  <!-- Custom fonts for this template-->
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vendor/fontawesome-free/css/all.min.css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

   <!-- Custom styles for this template-->
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/admin/sb-admin-2.min.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/admin/adminmain.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/admin/admin2_1.css">


</head>


<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-danger sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}">
        <div class="sidebar-brand-icon rotate-n-15">
        </div>
        <div class="sidebar-brand-text mx-3">CARROTLINE</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/adminMainForm.ad">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span class="active">ADMIN PAGE</span></a>
      </li>
      
      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      SALES
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/adminSalesM.ad" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
          <i class="fas fa-fw fa-cog"></i>
          <span>매출 관리</span>
        </a>
        <div id="collapseThree" class="collapse show" aria-labelledby="headingThree" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">SALES MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/adminSalesM.ad">공항별 매출 관리</a>
          </div>
        </div>
      </li>
      

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      FLIGHT
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="${pageContext.request.contextPath}/adminAirplanM.ad" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>항공편 관리</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">FLIGHT MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/adminAirplanM.ad">케럿라인 항공편 관리</a>
          </div>
        </div>
      </li>
      
      
            <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      RESERVATION
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="${pageContext.request.contextPath}/adminAirBookingM.ad" data-toggle="collapse" data-target="#collapseseven" aria-expanded="true" aria-controls="collapseseven">
          <i class="fas fa-fw fa-cog"></i>
          <span>항공 예약 관리</span>
        </a>
        <div id="collapseseven" class="collapse" aria-labelledby="headingseven" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">RESERVATION MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/adminAirBookingM.ad">예약 관리</a>
            <%-- <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_cinemaList"></a> --%>
          </div>
        </div>
      </li>



      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      SERVICE CENTER
      </div>
      
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="${pageContext.request.contextPath}/adminServiceM.ad" data-toggle="collapse" data-target="#collapsefour" aria-expanded="true" aria-controls="collapsefour">
         <i class="fas fa-fw fa-cog"></i>
          <span>고객센터 관리</span>
        </a>
        
        <div id="collapsefour" class="collapse" aria-labelledby="headingfour" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">SC MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/adminServiceM.ad">고객센터 관리</a>
          </div>
        </div>
      </li>
      
            <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      MEMBER
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="${pageContext.request.contextPath}/adminMemberM.ad" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-cog"></i>
          <span>회원 관리</span>
        </a>
        
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">MEMBER MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/adminMemberM.ad">회원 관리</a>
          </div>
        </div>
      </li>
      
      
      <!-- 메뉴끝 -->

      
      
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>



          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>



            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${loginUser.userId}님 환영합니다.</span>
               <img alt="" src="${pageContext.request.contextPath}/resources/images/home/CGV_BI.png" style="width: 80px;">
                <!-- <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60"> -->
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">매출 관리</h1>
          <p class="mb-4">항공사별 매출 관리</p>
          
          <div style="width: 100%; margin-bottom: 30px;">
          <c:forEach items="${alist}" var="an">
 		   <div class="btn btn-warning btn-icon-split" style="margin-right: 1px; margin-left: 1px;'">
 		   <span class="icon text-white-50">
                      <i class="fas fa-map-marker"></i>
           </span>
           <span class="text">${an.getAName()}</span>
 		   
 		   </div>
          </c:forEach> 
     	  </div> 
     
     <div style="clear: both;"></div>
          
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4 dbt">
            
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">항공사별 매출 현황</h6>
            </div>
            
            
            <div class="card-body">
					
			<div class="row">		
			<div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4" style="width: 1596px;">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" style="width: 1594px;">
                  <h6 class="m-0 font-weight-bold text-primary">CARROTLINE 1년 매출 (기준)</h6>
          
                </div>
                <!-- Card Body -->
                <div class="card-body" style="width: 1583px;">
                  <div class="chart-area">
                    <canvas id="myAreaChart"></canvas>
                  </div>
                </div>
              </div>
            </div>
            
            
<!--             <div class="col-xl-8 col-lg-7"> -->
<!--               <div class="card shadow mb-4" style="width: 1596px;"> -->
<!--                 Card Header - Dropdown -->
<!--                 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" style="width: 1594px;"> -->
<!--                   <h6 class="m-0 font-weight-bold text-primary">CARROTLINE 이번달 매출 (2020월 02월 11일 ~ 2020년 02월 17일 기준)</h6> -->
          
<!--                 </div> -->
<!--                 Card Body -->
<!--                 <div class="card-body" style="width: 1583px;"> -->
<!--                   <div class="chart-area"> -->
<%--                     <canvas id="myAreaChart2"></canvas> --%>
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
            
            
            
<!--             <div class="col-xl-8 col-lg-7"> -->
<!--               <div class="card shadow mb-4" style="width: 1596px;"> -->
<!--                 Card Header - Dropdown -->
<!--                 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" style="width: 1594px;"> -->
<!--                   <h6 class="m-0 font-weight-bold text-primary">CARROTLINE 이번주 매출(2020년 02월 17일 기준)</h6> -->
          
<!--                 </div> -->
<!--                 Card Body -->
<!--                 <div class="card-body" style="width: 1583px;"> -->
<!--                   <div class="chart-area"> -->
<%--                     <canvas id="myAreaChart3"></canvas> --%>
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
            
            
            
            
		</div>	

            </div> <!-- card-body -->
            
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>2023 CARROTLINE</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/resources/vendor/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="${pageContext.request.contextPath}/resources/vendor/js/demo/datatables-demo.js"></script>

	  <!-- Page level plugins -->
  <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script>


<script type="text/javascript">

	$(function(){

	var context = document.getElementById("myAreaChart").getContext('2d');
	var myChart = new Chart(context,{
		type:'line',//차트의 형태
		data:{//차트에 들어갈 데이터
		    labels:[
		    	//x축
		    	'1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'
		    ],
		    datasets:[
		    	{//데이터
		    	  label:'CARROTLINE 연매출',//차트 제목
		    	  fill:false,//line 형태일 때, 선 안쪽 채움 유무
		    	  data:[
		    		'${janMonthSales}','${fenMonthSales}','${marMonthSales}',
		    		'${aprMonthSales}','${mayMonthSales}','${junMonthSales}',
		    		'${julMonthSales}','${augMonthSales}','${sepMonthSales}',
		    		'${octMonthSales}','${novMonthSales}','${decMonthSales}' 
		    	  ],
		    	  backgroundColor:[
		    		  //색상
		    		  'rgba(235,132,1)'
		    	  ],
		    	  borderColor:[
		    		  //경계선 색상
		    		  'rgba(235,132,1)'
		    	  ],
		    	  borderWidth: 3 //경계선 굵기
		    	}
		    ]
		},
		 option:{
			scales:{
				yAxes:[
					{
						ticks:{
							beginAtZero :true
						}
					}
				]
			} 
		 }
	});
	});

</script>



</body>

</html>
