<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/detailView.css?after">




<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
<body>

	<%@ include file="../views/top.jsp"%>

	<div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/resources/images/pexels-daria-shevtsova-892618.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
					<p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						<span class="mr-2"><a href="index.html">
									<c:choose>
									<c:when test="${ob.category eq 'OneRoom'}"> ?????? </c:when>
									<c:when test="${ob.category eq 'Officetel'}"> ???????????? </c:when>
									</c:choose>
						</a></span>
					</p>
					<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">?????? ??????</h1>
				</div>
			</div>
		</div>
	</div>



	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row-list">
				<div class="col-lg-3 sidebar">
					<div class="sidebar-wrap bg-light ftco-animate">
						<h3 class="heading mb-4">?????? ?????? ??????</h3>
		        			<form action='<c:url value="findRooms-search"/>'>
		        			<input type="hidden" value="OneRoom" name="category">
							
							<div class="fields">
								<div class="form-group">
		              			<input type="reset" value="?????????" class="filter-reset">
		              		 	<input type="text" class="form-control" placeholder="??????, ???????????? ??????" name="search" id="filter-search">
								<input type="submit" value="??????" class="btn filter-search-submit" id="filter-search-submit">
								</div>
								<div class="form-group">
									<div class="select-wrap one-third">

										??????
	                 <div class="form-group">
	
					<input type="checkbox" name="room_all" value="??????" class="cktag" id="rtypeAll" 
		              onclick="rtypeSelectAll(this)" checked> 
		              <label class="label-class" for="rtypeAll">
		              <span class="btn op-css" id=" span-rtypeAll"> ??????  </span></label>
	
					<input type="checkbox" name="room_type" value="?????????" class="cktag"  id="rtypeOpen" 
	                 onclick="rtypeCheckSelectAll(this)">
	                 <label class="label-class" for="rtypeOpen">
	                 <span class="btn op-css rtypeOther"> ?????????  </span> </label>
		                 
	                  <input type="checkbox" name="room_type" value="?????????" class="cktag"  id="rtypeSeparate"
	                  onclick="rtypeCheckSelectAll(this)">  
	                 <label class="label-class" for="rtypeSeparate">
	                 <span class="btn op-css rtypeOther"> ?????????</span></label>
		                  
		            <input type="checkbox" name="room_type" value="?????????" class="cktag"  id="rtypeStairs"
	                onclick="rtypeCheckSelectAll(this)">
	                 <label class="label-class" for="rtypeStairs"> 
	                 <span class="btn op-css rtypeOther"> ?????????
	                 </span></label>


		              </div>

	                      ??? ??? ??????
	                      <div class="form-group">

						<input type="checkbox" name="floor_all" value="??????" class="cktag" id="ftypeAll"
		             	   onclick="ftypeSelectAll(this)" checked> 
		             	  <label class="label-class" for="ftypeAll">
		             	  <span class="btn op-css" id="span-ftypeAll"> ?????? </span></label>
		             	  
		             	  <input type="checkbox" name="living_floor" value="???" class="cktag" id="ftypeFloor"
		             	  onclick="ftypeCheckSelectAll(this)">
		             	  <label class="label-class" for="ftypeFloor">
		             	  <span class="btn op-css"> ????????? </span></label>
		             	  
		             	  <input type="checkbox" name="living_floor" value="?????????" class="cktag" id="ftypeBottom"
		             	 onclick="ftypeCheckSelectAll(this)">
		             	 <label class="label-class" for="ftypeBottom">
		             	 <span class="btn op-css">	????????? </span></label>
		             	  
		             	 <input type="checkbox" name="living_floor" value="?????????" class="cktag" id="ftypeTop"
		             	 onclick="ftypeCheckSelectAll(this)">
		             	 <label class="label-class" for="ftypeTop">
		             	 <span class="btn op-css"> ????????? </span></label>
		             </div>


									</div>
								</div>

						<div class="form-group">
					              ?????????
					        <div class="range-slider">
								<div class="Container" style="text-align: center;" >
							  		<font size = 3 id = "slider_value_view1" style="color: gray;">0</font>	
							  							  
							  			<input oninput = 'ShowSliderValue1(this.value)' style = "width:100%;" class="slider_range1" id="rangeTest"
							  			 type="range" step="100" value="0" min="0" max="50000" name="deposit_min" ></input>
							  			 
							  			 <span style="margin: 0 15%"> - </span>
							  			 
							   		<font size = 3 id = "slider_value_view2" style="color: gray;">5???</font>							  
										<input oninput = 'ShowSliderValue2(this.value)' style = "width:100%;" class="slider_range2" 
										type="range" step="100" value="50000" min="0" max="50000" name="deposit_max" ></input>
								</div>
							</div>
				
									??????
					              	<div class="range-slider">
									<div class="Container2" style="text-align: center;" >
								  		<font size = 3 id = "slider_value_view3" style="color: gray;">0</font>		
								  						  
								  			<input oninput = 'ShowSliderValue3(this.value)' style = "width:100%;" class="slider_range3" 
								  			type="range" step="10" value="0" min="0" max="500" name="monthly_rent_min"></input>
								  			
							  			 <span style="margin: 0 15%"> - </span>
								  			
								   		<font size = 3 id = "slider_value_view4" style="color: gray;">500??????</font>							  
											<input oninput = 'ShowSliderValue4(this.value)' style = "width:100%;" class="slider_range4" 
											type="range" step="10"value="500" min="0" max="500" name="monthly_rent_max"></input>
										</div>
									</div>
									
									<div class="form-group">
										
									</div>
								 </div>

							</div>
						</form>
					</div>

				</div>

				<!-- ????????? ???????????? -->

				<div class="col-lg-9">
					<div class="row">
						<div class="col-md-12 ftco-animate">
							<div class="single-slider owl-carousel">
								<c:forEach items="${ibList}" var="roomImg" varStatus="i">
								<div class="item">
									<div class="hotel-img">
										<img src='<c:url value="/resources/upload${roomImg.original_file_name}" />'>
									</div>
								</div>		
								</c:forEach>
							</div>

						</div>




						<div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
										
							<div class="info-container">
								<div class="info-mini-container">
								<br>
								<span id="is_selling">
									<c:choose>
									<c:when test="${ob.is_selling eq 'Y'}"> ????????? ????????? ???????????????. </c:when>
									<c:when test="${ob.is_selling eq 'N'}"> ????????? ????????? ???????????????. </c:when>
									</c:choose>
								</span>
								<br>
								
								<span class="subject">${ob.subject }  </span>
								<button id="detail-zzim" class="text-zzim nozzim">
								<c:forEach var="wishList" items="${wishList }">
		    						<c:if test="${ob.room_id == wishList.wish}">		    							
		    							<span class="zzim-showtext" id="detail-zzim-text"></span>	
		    						</c:if>		    						
								</c:forEach>
								
		    					</button>
								
								<p class="rate mb">
									<span class="loc"><a href="#map-info"><i class="icon-map"></i> ${ob.address }</a></span><br> 
									<!-- 										<span class="text-zzim icon-like zzim"></span> -->

									<span class="seller_id"><i class="fas fa-user" style="width: 20; height: 20"></i> ${ob.seller_id }</span><br>
									<br>
									<button type="button" id="btn-call" class="btn btn-outline-dark"><img src='<c:url value="/resources/images/telephone.png" />' style="width: 15px;height: 15px;"> call</button>
						

									<!-- Modal -->

									<div class="modal-background" id="modal-content">
										<div class="modal-content" id="modal-content">
										<div class="modal-header">
											<h5 class="modal-title">Contact</h5>
										</div>
										<div class="modal-body">
											 <h6>????????? : ${ob.seller_id }</h6><br>
											 <h4>????????? : ${ob.phone_number }</h4><br>
											 
<!-- 											 <h4>050-1234-5678</h4> -->
											 <p>
											 ?????????????????? ???????????? ???????????? ???????????????.<br>
												Findhome?????? ?????? ??????????????? ???????????????<br>
												?????? ?????? ????????? ???????????????.<br></p>
											 
											 
										</div>
											<div class="modal-footer">
											<button type="button" id="btn-close" class="btn btn-secondary">??????</button>
											</div>
										</div>
									</div>


<!-- 									<button type="button" class="btn btn-secondary" style="float: left;">????????????</button> -->

								</div>

							</div>
						</div>
					</div>
					
					<div class="semi-info-container">
						<table id="semi-info-table">
							<tr>
								<td>??????</td><td>?????????</td><td>??????</td>
							</tr>
							<tr>
								<td>${ob.exclusive_area_m }m<sup>2</sup>(${ob.exclusive_area_p }???)</td><td>${ob.fees}??????</td><td>${ob.room_type }</td>
							</tr>
						</table>
					</div>


					<div class="d-md-flex mt-5 mb-5">
						<table id="roomtable">
							<thead>
							</thead>
							<tbody>
								<tr>
									<th>?????????</th>
									<td>${ob.deposit}??????</td>
								</tr>
								<tr>
									<th>??????</th>
									<td>${ob.monthly_rent}??????</td>
								</tr>

<!-- 								<tr> -->
<!-- 									<th>????????? ??????_??????</th> -->
<%-- 									<td><c:forEach items="${ob.include_fees_array }" var="list"> --%>
<%-- 											<div>${list}</div> --%>
<%-- 										</c:forEach></td> --%>
<!-- 								</tr> -->
								<tr>
									<th>?????? ??????</th>
									<td>${ob.loan}</td>
								</tr>
								<tr>
									<th>?????? ??????</th>
									<td>${ob.living_floor}</td>
								</tr>
								<tr>
									<th>??????</th>
									<td>${ob.direction}</td>
								</tr>
								<tr>
									<th>?????? ?????????</th>
									<td>${ob.m_date}</td>
								</tr>
								<tr>
									<th>???????????????</th>
									<td>${ob.elevator}</td>
								</tr>

								<tr>
									<th>?????????</th>
									<td>${ob.parking}</td>
								</tr>

								<tr>
									<th>????????????</th>
									<td>${ob.pet }</td>
								</tr>
							</tbody>
						</table>

					</div>
					<div class="map-container">
						<h4 class="mb-5">?????? ??????</h4>
						<div class="mb-5" id="content-text">${ob.content }</div>
					</div>
					<br>

					<div class="option-info-container">
						<h4 class="mb-5">????????? ?????? ??????</h4>

						<div class="room-detail-option-item-wrapper">

							<c:forEach items="${ob.include_fees}" var="list">
								<div class="room-detail-content-option-item">
									<img src="${pageContext.request.contextPath}/resources/images/fees/${list.value}.png" width="50" height="50">
									<div class="room-detail-content-option-item-name">${list.key}</div>
								</div>
							</c:forEach>
						</div>
					</div>

<br><br>
					<div class="option-info-container">
						<!-- 								<div class="room-detail-option-title">??????</div> -->


						
						<h4 class="mb-5">??????</h4>

						<div class="room-detail-option-item-wrapper">
							
							<table id="tableoption">
							<tr>
							<c:forEach items="${ob.include_options }" var="list" varStatus="status">
							<c:if test="${status.index%6==0 }">
							</tr><tr>
							</c:if>
								<div class="room-detail-content-option-item">
								
									<td><img src="${pageContext.request.contextPath}/resources/images/options/${list.value}.png" width="50" height="50">
									<div class="room-detail-content-option-item-name">${list.key}</div></td>
									
								</div>
							</c:forEach>
							</tr>
							</table>
						</div>
					</div>

					<br>

					<div class="map-container" id="map-info">
						<h4 class="mb-5">?????? ??????</h4>
						<h6 class="mb-5">${ob.address }</h6>
						<div id="map" style="width: 500px; height: 400px;">




							<!-- 						<script type="text/javascript" -->
							<!-- 							src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e97625a0c2b00cdf9292bd703ece0f7"></script> -->
							<!-- 						<script> -->

							<!-- services ??????????????? ???????????? -->
							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3cf1c9438354960822f7ec7b6dd8bca2&libraries=services,clusterer,drawing">
								
							</script>

							<script>
								var mapContainer = document
										.getElementById('map'), // ????????? ????????? div 
								mapOption = {
									center : new kakao.maps.LatLng(33.450701,
											126.570667), // ????????? ????????????
									level : 3
								// ????????? ?????? ??????
								};

								// ????????? ???????????????    
								var map = new kakao.maps.Map(mapContainer,
										mapOption);

								// ??????-?????? ?????? ????????? ???????????????
								var geocoder = new kakao.maps.services.Geocoder();

								// ????????? ????????? ???????????????
								geocoder
										.addressSearch(
												'${ob.address}',
												function(result, status) {

													// ??????????????? ????????? ??????????????? 
													if (status === kakao.maps.services.Status.OK) {

														var coords = new kakao.maps.LatLng(
																result[0].y,
																result[0].x);

														// ??????????????? ?????? ????????? ????????? ???????????????
														var marker = new kakao.maps.Marker(
																{
																	map : map,
																	position : coords
																});

														// ?????????????????? ????????? ?????? ????????? ???????????????
														var infowindow = new kakao.maps.InfoWindow(
																{
																	content : '<div style="width:150px;text-align:center;padding:6px 0;">${ob.subject}</div>'
																});
														infowindow.open(map,
																marker);

														// ????????? ????????? ??????????????? ?????? ????????? ??????????????????
														map.setCenter(coords);
													} else {
														alert("??????????????????");
													}
												});
							</script>

						</div>
					</div>




				<div class="contact-container" id="map-info">
					<form action='<c:url value="/mailpro"/>' method="post" id="contact">
					<input type="hidden" name="room_id" value="${ob.room_id}">
					<input type="hidden" name="receiver" value="${ob.seller_id }">
					<input type="hidden" name="" value="" id="fr-contact">
					
						<div class="room-contact-container">
							<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
								<h4 class="mb-5">?????? ???????????? &amp; ????????????</h4>
								<div class="fields">
									<div class="row">
								
										<div class="col-md-6">
											<div class="form-group">
												<input type="text" id="name" class="form-control" placeholder="??????" name="name">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<input type="text" id="phone_number" class="form-control" placeholder="????????? ??????" name="phone">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<input type="text" id="checkin_date" class="form-control" placeholder="???????????? ??????" name="date1">
											</div>
										</div>



										<div class="col-md-12">
											<div class="form-group">
												<a class="btn btn-secondary py-3" id="contact-content" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample"> ????????? ?????? </a>
											</div>

											<div class="collapse" id="collapseExample">
												<div class="card card-body">
													<input type="button" class="btn btn-light" id="btn01" value="??? ??? ??? ??? ??????????"> 
													<input type="button" class="btn btn-light" id="btn02" value="????????? ????????? ?????? ?????? ??????????"> 
													<input type="button" class="btn btn-light" id="btn03" value="?????? ????????? ?????? ???????????? ?????????.">

													<div class="input-group">
														<textarea class="form-control" id="contact-form" aria-label="With textarea" placeholder="????????? ????????? ?????? ??????????????????." maxlength="45" name="content"></textarea>
													</div>


												</div>

											</div>
										</div>


										<div class="col-md-12">
											<div class="form-group">
												<input type="submit" value="?????? ??????" id="contact-btn" class="btn btn-primary py-3">
											</div>
										</div>
									
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>

				<!-- ???????????? ??? -->
				<!-- ???????????? -->
			 <div>
			<button type="button" id=btnReport>
			<img alt="alarm" src="${pageContext.request.contextPath}/resources/images/bell.png" > ????????????</button>
			
			 </div>
			 
			 					<div class="modal-background" id="modal-report">
										<div class="modal-content" id="modal-report">
											<button type="button" id="btn-report-close" class="btn btn-secondary"><img src="${pageContext.request.contextPath}/resources/images/cancel.png"> </button>
										<div class="modal-report-header">
											<h5 class="modal-title">Report</h5>
										</div>
										<div class="modal-body">
											 ?????????????????? ???????????? ????????? ???????????????.<br>
											 ?????? ?????????????????????.
										</div>
										<form action='<c:url value="/reportPro" />' id="report" name="report">
										<input type="hidden" name="room_id" value="${ob.room_id}" id="room_id">
										<input type="hidden" name="content" value="" id="btnContent">
										<div class="report-body">
											 <input type="button" class="btn btn-warning" id="btnSoldout" name="content1" value="????????? ?????????"><br>
											 <input type="button" class="btn btn-warning" id="btnDifInfo" name="content2" value="????????? ????????? ??????"> 
										</div>	
										</form>
											<div class="modal-footer">
											
											</div>
										</div>
									</div>
			</div>
		</div>
		<!-- .col-md-8 -->

	</section>
	<!-- .section -->

	<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
	<script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script type="text/javascript">
		$(function() {
			//???????????? - [????????????] ??????
			$('#contact-content').click(function() {
				$('#collapseExample').show();

			});
		});

		
		
		$(document).ready(function() {


        	// ?????? - [?????????] ??????
        	$('.text-zzim').click(function(){
        		
	    		var room_id = '${ob.room_id}'
        		
        	 	$.ajax('<c:url value="/zzim" />',{
        	 		data:{wish:room_id},
        	 		success:function(rdata){
        	 			
        	 			if(rdata=="zzim"){
        	 				rdata = "???";
	    	 				$('#detail-zzim').removeClass('nozzim');
	    	 				$('#detail-zzim').addClass('zzim');
	    	 				$('#detail-zzim-text').addClass('zzim-showtext');

        	 			}else if(rdata=="nozzim"){
        	 				rdata = "?????????";
	            	        $('#detail-zzim').removeClass('zzim');
	    	 				$('#detail-zzim').addClass('nozzim');
	    	 				$('#detail-zzim-text').removeClass('zzim-showtext');
        	 			}
        	 			
        	 		}
        	 	});
        	});

        	});


 

		// ???????????? - ??????
		$('#contact-form').hide();
		$('#btn03').click(function() {
			$('#btn01').hide();
			$('#btn02').hide();
			$('#contact-form').show();
			$('#contact-form').focus();
		});

		$('#contact-content').click(function() {
			$('#btn01').show();
			$('#btn02').show();
			$('#btn03').show();
			$('#contact-form').hide();
		});
		
		$('#btn01').click(function() {
			$(this).addClass('active');
			$('#btn02').removeClass('active');
		})
		
		$('#btn02').click(function() {
			$(this).addClass('active');
			$('#btn01').removeClass('active');
		})
		
		// ???????????? - ?????? ?????? ????????? ?????? ??????
		$('#btn01').click(function() {
		$('#contact-form').html($('#btn01').val());
		
		});
		
		
		$('#btn02').click(function() {
		$('#contact-form').html($('#btn02').val());
		
		});


		$(document).ready(function() {
			$('#btnReport').click(function() {
				$('#modal-report').show();
			});
			
			$('#btn-report-close').click(function() {
				$('#modal-report').hide();
			});
		});

		// ???????????? - [call] ?????? ??? ?????????
		$(document).ready(function() {
			$('#btn-call').click(function() {
				$('#modal-content').show();
			});

			$('#btn-close').click(function() {
				$('#modal-content').hide();
			});
		});
		
		
	
		
		
		

		
		$(document).ready(function() {

			// ?????? ?????? - ?????? [??????] ??????
			$('.rtypeAll').click(function() {

				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');

					$('.rtype').removeClass('btn-primary');
					$('.rtype').addClass('btn-default');

				}

			});

			// ?????? ?????? - ?????? ?????? ?????? ?????????
			$.fn.room = function(clickThis) {

				if ($(clickThis).hasClass('btn-default')) {
					$(clickThis).removeClass('btn-default');
					$(clickThis).addClass('btn-primary');

					if ($('.rtypeAll').hasClass('btn-primary')) {
						$('.rtypeAll').removeClass('btn-primary');
						$('.rtypeAll').addClass('btn-default');
					}

				} else if ($(clickThis).hasClass('btn-primary')) {
					$(clickThis).removeClass('btn-primary');
					$(clickThis).addClass('btn-default');
				}

			}

			// ?????? ?????? - ?????? [?????????] ??????
			$('.rtypeOpen').click(function() {
				$.fn.room(this);
			});

			// ?????? ?????? - ?????? [?????????] ??????
			$('.rtypeSeparate').click(function() {
				$.fn.room(this);
			});

			// ?????? ?????? - ?????? [?????????] ??????
			$('.rtypeStairs').click(function() {
				$.fn.room(this);
			});

			// ?????? ?????? - ??? ??? ?????? [??????] ??????
			$('.ftypeAll ').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.floor').addClass('btn-default');
					$('.floor ').removeClass('btn-primary');
					$('.ftypeOther').addClass('btn-default');
					$('.ftypeOther').removeClass('btn-primary');
				}
			});

			// ?????? ?????? - ??? ??? ?????? [?????????] ??????
			$('.floor').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.ftypeAll ').addClass('btn-default');
					$('.ftypeAll ').removeClass('btn-primary');
					$('.ftypeOther').addClass('btn-default');
					$('.ftypeOther').removeClass('btn-primary');
				}
			});

			// ?????? ?????? - ??? ??? ?????? [?????????, ??????] ??????
			$('.ftypeOther').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.ftypeAll ').addClass('btn-default');
					$('.ftypeAll ').removeClass('btn-primary');
					$('.floor').addClass('btn-default');
					$('.floor').removeClass('btn-primary');
				}
			});

			// ?????? ?????? - ?????? ?????? - [??????] ??????
			$('.rentAll ').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.rentMonthly').addClass('btn-default');
					$('.rentMonthly ').removeClass('btn-primary');
					$('.rentJeonse').addClass('btn-default');
					$('.rentJeonse').removeClass('btn-primary');
				}
			});

			// ?????? ?????? - ?????? ?????? - [??????] ??????
			$('.rentMonthly ').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.rentAll').addClass('btn-default');
					$('.rentAll ').removeClass('btn-primary');
					$('.rentJeonse').addClass('btn-default');
					$('.rentJeonse').removeClass('btn-primary');
				}
			});

			// ?????? ?????? - ?????? ?????? - [??????] ??????
			$('.rentJeonse ').click(function() {
				if ($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
					$('.rentAll').addClass('btn-default');
					$('.rentAll ').removeClass('btn-primary');
					$('.rentMonthly').addClass('btn-default');
					$('.rentMonthly').removeClass('btn-primary');
				}
			});

		});

   	 // ????????? ??????
	    function ShowSliderValue1(sVal) {
	    	var obValueView = document.getElementById("slider_value_view1");
	    	if(sVal>=10000){
	    	obValueView.innerHTML = (sVal*0.0001).toFixed(1)+"???";
	    	}else{		
	    	obValueView.innerHTML = sVal+"???";
	    	}
	 	
	    }

	    // ????????? ??????
	    function ShowSliderValue2(sVal) {
	    	var obValueView = document.getElementById("slider_value_view2");
	    	if(sVal>=10000){
	    	obValueView.innerHTML = (sVal*0.0001).toFixed(1)+"???";
	    	}else{		
	    	obValueView.innerHTML = sVal+"???";
	    	}
	    }

	    // ?????? ??????
	    function ShowSliderValue3(sVal) {
	    	var obValueView = document.getElementById("slider_value_view3");
	    	obValueView.innerHTML = sVal+"???";
	    }

	    // ?????? ??????
	    function ShowSliderValue4(sVal) {
	    	var obValueView = document.getElementById("slider_value_view4");
	    	obValueView.innerHTML = sVal+"???";
	    }
	    
	    
	 // ?????? [??????] ??????
	    function rtypeCheckSelectAll()  {
	  	  // ?????? ????????????
	  	  const checkboxes 
	  	    = document.querySelectorAll('input[name="room_type"]');
	  	  // ????????? ????????????
	  	  const checked 
	  	    = document.querySelectorAll('input[name="room_type"]:checked');
	  	  // select all ????????????
	  	  const selectAll 
	  	    = document.querySelector('input[name="room_all"]');
	  	  
	  	  if(checkboxes.length === checked.length)  {
	  	    selectAll.checked = true;
	  	  }else {
	  	    selectAll.checked = false;
	  	  }
	  	}

	  	function rtypeSelectAll(selectAll)  {
	  		
	  	  const checkboxes 
	  	     = document.getElementsByName('room_type');
	  	  
	  	  
	  	  checkboxes.forEach((checkbox) => {
	  	    checkbox.checked = selectAll.checked
	  	  })
	  	}
	    
	 // ?????? [??? ??? ??????]] ??????
	    function ftypeCheckSelectAll()  {
	  	  // ?????? ????????????
	  	  const checkboxes 
	  	    = document.querySelectorAll('input[name="living_floor"]');
	  	  // ????????? ????????????
	  	  const checked 
	  	    = document.querySelectorAll('input[name="living_floor"]:checked');
	  	  // select all ????????????
	  	  const selectAll 
	  	    = document.querySelector('input[name="floor_all"]');
	  	  
	  	  if(checkboxes.length === checked.length)  {
	  	    selectAll.checked = true;
	  	  }else {
	  	    selectAll.checked = false;
	  	  }
	  	}

	  	function ftypeSelectAll(selectAll)  {
	  		
	  	  const checkboxes 
	  	     = document.getElementsByName('living_floor');
	  	  
	  	  
	  	  checkboxes.forEach((checkbox) => {
	  	    checkbox.checked = selectAll.checked
	  	  })
	  	}
	</script>


	<script>
	//????????????
			$(document).ready(function() {
				$('#btnSoldout').click(function() {
					$.ajax('<c:url value="/reportPro"/>',
							{
								type : "post",
								data : {content:$('#btnSoldout').val(),
										room_id:$('#room_id').val()},
								success : function (data) {
									$('#modal-report').hide();
									alert("????????? ?????????????????????.");
									
								},
			 					 error:function(request,status,error){
	 					        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // ?????? ??? ??????
	 					 }
								
						
							});
					
				});
				
				$('#btnDifInfo').click(function() {
					$.ajax('<c:url value="/reportPro"/>',
							{
								type : "post",
								data : {content:$('#btnDifInfo').val(),
										room_id:$('#room_id').val()},
								success : function (data) {
									$('#modal-report').hide();
									alert("????????? ?????????????????????.");
								},
			 					 error:function(request,status,error){
	 					        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // ?????? ??? ??????
	 					 }
								
						
							});
					
				});
		});
	
	</script>


</body>
</html>