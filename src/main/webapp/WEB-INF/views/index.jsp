<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>FindHome - 좋은 집을 찾을 수 있는 곳</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/aos.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/findRoom.css">


<style type="text/css">
body {
	margin: 0;
	font-family: "Work Sans", -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol";
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
}

.ftco-section {
	padding: 0;
}

.ftco-navbar-light {
	top: 0px;
}

body {
	text-align: left;
}

.row {
	margin-left: -15px;
}

.form-control {
	width: 100%;
}

.container {
	padding: 20px 10px;
}

.speech-bubble {
	position: relative;
	background: #302c2c;
	border-radius: .4em;
}

.speech-bubble:after {
	content: '';
	position: absolute;
	bottom: 0;
	left: 50%;
	width: 0;
	height: 0;
	border: 32px solid transparent;
	border-top-color: #302c2c;
	border-bottom: 0;
	border-right: 0;
	margin-left: -16px;
	margin-bottom: -32px;
}

.p-text {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	width: 200px;
}

.modal{
position: fixed;
top: 0;
left: 0;
bottom: 0;
right: 0;
background: rgba(0,0,0,0.8);
opacity: 95%;
}

.modal_content{
  width:400px; height:200px;
  background:snow; border-radius:10px;
  border: 1px solid gray;
  position:relative; top:50%; left:50%;
  margin-top:-100px; margin-left:-200px;
  text-align:center;
  box-sizing:border-box; padding:74px 0;
  line-height:23px; cursor:pointer;
}

</style>

</head>
<body>

	<%@ include file="../views/top.jsp"%>

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/kueche-esszimmer-sonne-altbau__9544f8b7-afc2-4f3e-847d-7ba54c14e7d9.jpeg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate"
					data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-4"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						<strong>좋은 방을 <br></strong> 찾으시나요?
					</h1>

					<!--             <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Find great places to stay, eat, shop, or visit from local experts</p> -->

					<div class="container">
						<div class="btn-group" role="group" aria-label="...">
							<button type="button" class="btn btn-primary button-class1">원룸</button>
							<button type="button" class="btn btn-default button-class2">오피스텔</button>
						</div>
					</div>

					<div class="block-17 my-4">						
						<form class="d-block d-flex" id="searchForm"
							action='<c:url value="findRooms-search"/>'>
							<div class="fields d-block d-flex">

								<input type="hidden" value="OneRoom" id="category"
									name="category"> <input type="text"
									class="form-control" id="address" name="search"
									placeholder="원하시는 지역명, 지하철역을 입력해주세요"> <input
									type="checkbox" name="room_all" value="전체" class="cktag"
									id="rtypeAll" hidden="" checked> <input type="checkbox"
									name="floor_all" value="전체" class="cktag" id="ftypeAll"
									hidden="" checked> <input
									oninput='ShowSliderValue1(this.value)' style="width: 100%;"
									class="slider_range1" id="rangeTest" hidden="" type="range"
									step="100" value="0" min="0" max="50000" name="deposit_min"></input>
								<input oninput='ShowSliderValue2(this.value)'
									style="width: 100%;" class="slider_range2" hidden=""
									type="range" step="100" value="50000" min="0" max="50000"
									name="deposit_max"></input> <input
									oninput='ShowSliderValue3(this.value)' style="width: 100%;"
									class="slider_range3" hidden="" type="range" step="10"
									value="0" min="0" max="500" name="monthly_rent_min"></input> <input
									oninput='ShowSliderValue4(this.value)' style="width: 100%;"
									class="slider_range4" hidden="" type="range" step="10"
									value="500" min="0" max="500" name="monthly_rent_max"></input>

							</div>
							<input type="submit" class="search-submit btn btn-primary"
								value="Search">
						</form>
					</div>

					<!-- 					<input type="text" id="searchResult" readonly="readonly" style="" value=""> -->

				</div>
			</div>
		</div>
	</div>

	<!-- 프리미엄 매물 시작-->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-start">
				<!-- 				mb-5 pb-3 -->
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading">Special Offers</span>
					<h2 class="mb-4">
						<strong>프리미엄</strong> 매물
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="destination-slider owl-carousel ftco-animate">

						<!-- 					최신매물 아이템 출력 시작 -->
						<c:forEach items="${premiumList}" var="prList" varStatus="i">

							<div class="destination">
								<span class="zzimCount"></span>${prList.wish_count } <a
									href='<c:url value="/detailView?room_id=${prList.room_id}" />'
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url(${pageContext.request.contextPath}/resources/upload${prList.file_name});"></a>

								<div class="text p-3">

									<div class="text-mi">
										<div class="d-flex">
											<div class="one">
												<h3>
													<a
														href='<c:url value="detailView?room_id=${prList.room_id}" />'>
														${prList.subject} </a>
												</h3>
											</div>
											<div class="two">
												<span class="price per-price"><small>${prList.deposit}
														/ ${prList.monthly_rent}</small></span>
											</div>
										</div>
										<p class="p-text">${prList.address }</p>

									</div>

									<hr>
									<p class="bottom-area d-flex">
										<input type="hidden"
											value="<c:out value='${prList.room_id}'/>" id="room_id">

										<button id="zzim-id-${prList.room_id}"
											class="text-zzim nozzim">

											<c:forEach var="wishList" items="${wishList }">

												<c:if test="${prList.room_id == wishList.wish}">
													<span class="zzim-showtext" id="zzim-ok-${prList.room_id}"></span>
												</c:if>

											</c:forEach>

										</button>
										<span class="ml-auto call"><a
											href="javascript:void(0);">call</a></span> <input type="hidden"
											value="<c:out value='${prList.phone_number}'/>"
											id="phone_number"><input type="hidden"
											value="<c:out value='${prList.seller_id}'/>"
											id="seller_id">

									</p>
									<div class="modal">
										<div class="modal-content" id="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">Contact</h5>
											</div>
											<div class="modal-body">
												<h6 class="id">중개사 : ${prList.seller_id}</h6>
												<h4 class="phone">연락처 : ${prList.phone_number}</h4>
												<br>

												<!-- 											 <h4>050-1234-5678</h4> -->
												<p>
													중개사무소에 연락하여 방문일을 예약하세요.<br> Findhome에서 보고 연락한다고 말씀하시면<br>
													더욱 빠른 예약이 가능합니다.<br>
												</p>


											</div>
											<div class="modal-footer">
												<button type="button" id="btn-close"
													class="btn btn-secondary">닫기</button>
											</div>
										</div>
									</div>



								</div>
							</div>

						</c:forEach>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!--     프리미엄 매물 끝 -->

	<!-- 인기 매물 시작-->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-start">
				<!-- 				mb-5 pb-3 -->
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading">Special Offers</span>
					<h2 class="mb-4">
						<strong>원룸 인기</strong> 매물
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="destination-slider owl-carousel ftco-animate">

						<!-- 					최신매물 아이템 출력 시작 -->
						<c:forEach items="${popOneRoomList}" var="popularList"
							varStatus="i">

							<div class="destination">
								<span class="zzimCount"></span> ${popularList.wish_count } <a
									href='<c:url value="/detailView?room_id=${popularList.room_id}" />'
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url(${pageContext.request.contextPath}/resources/upload${popularList.file_name});"></a>

								<div class="text p-3">

									<div class="text-mi">
										<div class="d-flex">
											<div class="one">
												<h3>
													<a
														href='<c:url value="detailView?room_id=${popularList.room_id}" />'>
														${popularList.subject} </a>
												</h3>
											</div>
											<div class="two">
												<span class="price per-price"><small>${popularList.deposit}
														/ ${popularList.monthly_rent}</small></span>
											</div>
										</div>
										<p class="p-text">${popularList.address }</p>

									</div>

									<hr>
									<p class="bottom-area d-flex">
										<input type="hidden"
											value="<c:out value='${popularList.room_id}'/>" id="room_id">

										<button id="zzim-id-${popularList.room_id}"
											class="text-zzim nozzim">

											<c:forEach var="wishList" items="${wishList }">

												<c:if test="${popularList.room_id == wishList.wish}">
													<span class="zzim-showtext"
														id="zzim-ok-${popularList.room_id}"></span>
												</c:if>

											</c:forEach>

										</button>
										<span class="ml-auto call"><a
											href="javascript:void(0);">call</a></span> <input type="hidden"
											value="<c:out value='${popularList.phone_number}'/>"
											id="phone_number"><input type="hidden"
											value="<c:out value='${popularList.seller_id}'/>"
											id="seller_id">

									</p>
									<div class="modal">
										<div class="modal-content" id="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">Contact</h5>
											</div>
											<div class="modal-body">
												<h6 class="id">중개사 : ${popularList.seller_id}</h6>
												<h4 class="phone">연락처 : ${popularList.phone_number}</h4>
												<br>

												<!-- 											 <h4>050-1234-5678</h4> -->
												<p>
													중개사무소에 연락하여 방문일을 예약하세요.<br> Findhome에서 보고 연락한다고 말씀하시면<br>
													더욱 빠른 예약이 가능합니다.<br>
												</p>


											</div>
											<div class="modal-footer">
												<button type="button" id="btn-close"
													class="btn btn-secondary">닫기</button>
											</div>
										</div>
									</div>



								</div>
							</div>

						</c:forEach>
						<!-- 					인기매물 아이템 출력 끝 -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!--     인기매물 끝 -->

	<!-- 오피스텔 인기 매물 시작-->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-start">
				<!-- 				mb-5 pb-3 -->
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading">Special Offers</span>
					<h2 class="mb-4">
						<strong>오피스텔 인기</strong> 매물
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="destination-slider owl-carousel ftco-animate">

						<!-- 					최신매물 아이템 출력 시작 -->
						<c:forEach items="${popOfficetelList}" var="popularTelList"
							varStatus="i">

							<div class="destination">
								<span class="zzimCount"></span> ${popularTelList.wish_count } <a
									href='<c:url value="/detailView?room_id=${popularTelList.room_id}" />'
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url(${pageContext.request.contextPath}/resources/upload${popularTelList.file_name});"></a>

								<div class="text p-3">

									<div class="text-mi">
										<div class="d-flex">
											<div class="one">
												<h3>
													<a
														href='<c:url value="detailView?room_id=${popularTelList.room_id}" />'>
														${popularTelList.subject} </a>
												</h3>
											</div>
											<div class="two">
												<span class="price per-price"><small>${popularTelList.deposit}
														/ ${popularTelList.monthly_rent}</small></span>
											</div>
										</div>
										<p class="p-text">${popularTelList.address }</p>

									</div>

									<hr>
									<p class="bottom-area d-flex">
										<input type="hidden"
											value="<c:out value='${popularTelList.room_id}'/>" id="room_id">

										<button id="zzim-id-${popularTelList.room_id}"
											class="text-zzim nozzim">

											<c:forEach var="wishList" items="${wishList }">

												<c:if test="${popularTelList.room_id == wishList.wish}">
													<span class="zzim-showtext"
														id="zzim-ok-${popularTelList.room_id}"></span>
												</c:if>

											</c:forEach>

										</button>
										<span class="ml-auto call"><a
											href="javascript:void(0);">call</a></span> <input type="hidden"
											value="<c:out value='${popularTelList.phone_number}'/>"
											id="phone_number"><input type="hidden"
											value="<c:out value='${popularTelList.seller_id}'/>"
											id="seller_id">

									</p>
									<div class="modal">
										<div class="modal-content" id="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">Contact</h5>
											</div>
											<div class="modal-body">
												<h6 class="id">중개사 : ${popularTelList.seller_id}</h6>
												<h4 class="phone">연락처 : ${popularTelList.phone_number}</h4>
												<br>

												<!-- 											 <h4>050-1234-5678</h4> -->
												<p>
													중개사무소에 연락하여 방문일을 예약하세요.<br> Findhome에서 보고 연락한다고 말씀하시면<br>
													더욱 빠른 예약이 가능합니다.<br>
												</p>


											</div>
											<div class="modal-footer">
												<button type="button" id="btn-close"
													class="btn btn-secondary">닫기</button>
											</div>
										</div>
									</div>



								</div>
							</div>

						</c:forEach>
						<!-- 					인기매물 아이템 출력 끝 -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!--     인기매물 끝 -->

	<!-- 	원룸 최신매물 리스트 시작 -->
	<section class="ftco-section ftco-destination">
		<div class="container">
			<div class="row justify-content-start">
				<!--     		 mb-5 pb-3 -->
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading">Featured</span>
					<h2 class="mb-4">
						<strong>원룸 최신</strong> 매물
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="destination-slider owl-carousel ftco-animate">

						<!-- 					최신매물 아이템 출력 시작 -->
						<c:forEach items="${obList}" var="roomList" varStatus="i">

							<div class="destination">
								<a
									href='<c:url value="/detailView?room_id=${roomList.room_id}" />'
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url(${pageContext.request.contextPath}/resources/upload${roomList.file_name});"></a>

								<div class="text p-3">

									<div class="text-mi">
										<div class="d-flex">
											<div class="one">
												<h3>
													<a
														href='<c:url value="detailView?room_id=${roomList.room_id}" />'>
														${roomList.subject} </a>
												</h3>
											</div>
											<div class="two">
												<span class="price per-price"><small>${roomList.deposit}
														/ ${roomList.monthly_rent}</small></span>
											</div>
										</div>
										<p class="p-text">${roomList.address }</p>

									</div>

									<hr>
									<p class="bottom-area d-flex">
										<input type="hidden"
											value="<c:out value='${roomList.room_id}'/>" id="room_id">

										<button id="zzim-id-${roomList.room_id}"
											class="text-zzim nozzim">

											<c:forEach var="wishList" items="${wishList }">

												<c:if test="${roomList.room_id == wishList.wish}">
													<span class="zzim-showtext"
														id="zzim-ok-${roomList.room_id}"></span>
												</c:if>

											</c:forEach>

										</button>

										<span class="ml-auto call"><a
											href="javascript:void(0);">call</a></span> <input type="hidden"
											value="<c:out value='${roomList.phone_number}'/>"
											id="phone_number"><input type="hidden"
											value="<c:out value='${roomList.seller_id}'/>"
											id="seller_id">

									</p>
									<div class="modal">
										<div class="modal-content" id="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">Contact</h5>
											</div>
											<div class="modal-body">
												<h6 class="id">중개사 : ${roomList.seller_id}</h6>
												<h4 class="phone">연락처 : ${roomList.phone_number}</h4>
												<br>

												<!-- 											 <h4>050-1234-5678</h4> -->
												<p>
													중개사무소에 연락하여 방문일을 예약하세요.<br> Findhome에서 보고 연락한다고 말씀하시면<br>
													더욱 빠른 예약이 가능합니다.
												</p>


											</div>
											<div class="modal-footer">
												<button type="button" id="btn-close"
													class="btn btn-secondary">닫기</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<!-- 					최신매물 아이템 출력 끝 -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 	원룸 최신 매물 리스트 끝 -->

	<!-- 	오피스텔 최신매물 리스트 시작 -->
	<section class="ftco-section ftco-destination">
		<div class="container">
			<div class="row justify-content-start">
				<!--     		 mb-5 pb-3 -->
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading">Featured</span>
					<h2 class="mb-4">
						<strong>오피스텔 최신</strong> 매물
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="destination-slider owl-carousel ftco-animate">

						<!-- 					최신매물 아이템 출력 시작 -->
						<c:forEach items="${ofList}" var="officetelList" varStatus="i">

							<div class="destination">
								<a
									href='<c:url value="/detailView?room_id=${officetelList.room_id}" />'
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url(${pageContext.request.contextPath}/resources/upload${officetelList.file_name});"></a>

								<div class="text p-3">

									<div class="text-mi">
										<div class="d-flex">
											<div class="one">
												<h3>
													<a
														href='<c:url value="detailView?room_id=${officetelList.room_id}" />'>
														${officetelList.subject} </a>
												</h3>
											</div>
											<div class="two">
												<span class="price per-price"><small>${officetelList.deposit}
														/ ${officetelList.monthly_rent}</small></span>
											</div>
										</div>
										<p class="p-text">${officetelList.address }</p>

									</div>

									<hr>
									<p class="bottom-area d-flex">
										<input type="hidden"
											value="<c:out value='${officetelList.room_id}'/>"
											id="room_id">

										<button id="zzim-id-${officetelList.room_id}"
											class="text-zzim nozzim">

											<c:forEach var="wishList" items="${wishList }">

												<c:if test="${officetelList.room_id == wishList.wish}">
													<span class="zzim-showtext"
														id="zzim-ok-${officetelList.room_id}"></span>
												</c:if>

											</c:forEach>

										</button>

										<span class="ml-auto call"><a
											href="javascript:void(0);">call</a></span> <input type="hidden"
											value="<c:out value='${officetelList.phone_number}'/>"
											id="phone_number"><input type="hidden"
											value="<c:out value='${officetelList.seller_id}'/>"
											id="seller_id">

									</p>
									<div class="modal">
										<div class="modal-content" id="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">Contact</h5>
											</div>
											<div class="modal-body">
												<h6 class="id">중개사 : ${officetelList.seller_id}</h6>
												<h4 class="phone">연락처 : ${officetelList.phone_number}</h4>
												<br>

												<!-- 											 <h4>050-1234-5678</h4> -->
												<p>
													중개사무소에 연락하여 방문일을 예약하세요.<br> Findhome에서 보고 연락한다고 말씀하시면<br>
													더욱 빠른 예약이 가능합니다.
												</p>


											</div>
											<div class="modal-footer">
												<button type="button" id="btn-close"
													class="btn btn-secondary">닫기</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<!-- 					최신매물 아이템 출력 끝 -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 	원룸 최신 매물 리스트 끝 -->


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
						All rights reserved | This template is made with <i
							class="icon-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- loader -->
	<!-- 	<div id="ftco-loader" class="show fullscreen"> -->
	<!-- 		<svg class="circular" width="48px" height="48px"> -->
	<!-- 			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" /> -->
	<!-- 			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg> -->
	<!-- 	</div> -->

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js">
		
	</script>

	<script>
		$(document).ready(function() {
			$(document).on("click", ".modal", function() {
				$(".modal").fadeToggle('fast');
			});
		});

		// 목록 - [call] 클릭
		$('.call')
				.click(
						function() {
							var filter = "win16|win32|win64|mac|macintel";
							var phone_number = $(this).parent().children(
									'#phone_number')[0].value;
							var seller_id = $(this).parent().children(
									'#seller_id')[0].value;

							if (navigator.platform) {
								if (filter.indexOf(navigator.platform
										.toLowerCase()) < 0) {
									location.href = "tel:" + phone_number;

								} else {	
									$(".modal").fadeIn();
								}
							}

						});

		$(document)
				.ready(
						function() {
							$("#address")
									.change(
											function() {
												var address = $(this).val();
												// ajax로 전달할 폼 객체
												var formData = new FormData();

												$
														.ajax(
																'<c:url value="/addressSearch" />',
																{
																	type : "post",
																	data : formData,
																	// processData: true=> get방식, false => post방식
																	dataType : "text",
																	// contentType: true => application/x-www-form-urlencoded, 
																	//                false => multipart/form-data
																	processData : false,
																	success : function(
																			data) {
																		var str = "";
																		// 검색 결과 표시
																		str += data;
																		var resultData = decodeURIComponent(data);
																		//alert(resultData);
																		console
																				.log('data : '
																						+ resultData);
																		$(
																				"#searchResult")
																				.append(
																						str);
																	}
																});

											});

							$('.button-class1')
									.click(
											function() {
												$("#address").val('');
												$("#address")
														.attr("placeholder",
																"원하시는 지역명, 지하철역을 입력해주세요");

												$("#category").val('OneRoom'); // 검색 카테고리 원룸으로 설정
												$('#searchForm')
														.attr("action",
																"<c:url value="findRooms-search" />");

												if ($(this).hasClass(
														'btn-default'))
													$(this).removeClass(
															'btn-default');
												if (!$(this).hasClass(
														'btn-primary'))
													$(this).addClass(
															'btn-primary');
												if ($('.button-class2')
														.hasClass('btn-primary'))
													$('.button-class2')
															.removeClass(
																	'btn-primary');
												if (!$('.button-class2')
														.hasClass('btn-default'))
													$('.button-class2')
															.addClass(
																	'btn-default');
											});

							$('.button-class2')
									.click(
											function() {
												$("#address").val('');
												$("#address")
														.attr("placeholder",
																"원하시는 지역명, 지하철역, 오피스텔명을 입력해주세요");

												$("#category").val('Officetel'); // 검색 카테고리 오피스텔로 설정
												$('#searchForm')
														.attr("action",
																"<c:url value="findOfficetel-search" />");

												if ($(this).hasClass(
														'btn-default'))
													$(this).removeClass(
															'btn-default');
												if (!$(this).hasClass(
														'btn-primary'))
													$(this).addClass(
															'btn-primary');
												if ($('.button-class1')
														.hasClass('btn-primary'))
													$('.button-class1')
															.removeClass(
																	'btn-primary');
												if (!$('.button-class1')
														.hasClass('btn-default'))
													$('.button-class1')
															.addClass(
																	'btn-default');
											});

							// 목록 - [찜하기] 클릭
							$('.text-zzim')
									.click(
											function() {
												var room_id = $(this).parent()
														.children("#room_id")[0].value;

												$
														.ajax(
																'<c:url value="/zzim" />',
																{
																	data : {
																		wish : room_id
																	},
																	success : function(
																			rdata) {

																		if (rdata == "zzim") {
																			rdata = "찜 했습니다";
																			$(
																					'#zzim-id-'
																							+ room_id)
																					.removeClass(
																							'nozzim');
																			$(
																					'#zzim-id-'
																							+ room_id)
																					.addClass(
																							'zzim');
																			$(
																					'#zzim-ok-'
																							+ room_id)
																					.addClass(
																							'zzim-showtext');

																		} else if (rdata == "nozzim") {
																			rdata = "찜 취소했습니다";
																			$(
																					'#zzim-id-'
																							+ room_id)
																					.removeClass(
																							'zzim');
																			$(
																					'#zzim-id-'
																							+ room_id)
																					.addClass(
																							'nozzim');
																			$(
																					'#zzim-ok-'
																							+ room_id)
																					.removeClass(
																							'zzim-showtext');
																		}
																		var resultData = decodeURIComponent(rdata);
																		alert(resultData);
																	}
																});

											});

						});
	</script>


	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
	<%--   <script src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
	<%--   <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script> --%>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>