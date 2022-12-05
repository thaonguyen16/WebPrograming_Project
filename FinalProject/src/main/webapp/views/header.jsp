<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="li-header-4">
	<div class="header-middle pl-sm-0 pr-sm-0 pl-xs-0 pr-xs-0">
		<div class="container">
			<div class="row">
				<!-- Begin Header Logo Area -->
				<div class="col-lg-3">
					<div class="logo pb-sm-30 pb-xs-30">
						<a href="${pageContext.request.contextPath}/Home"> <img
							src="<%=request.getContextPath()%>/assets/images/logo.png"
							alt="logo" width="200" height="100">
						</a>
					</div>
				</div>
				<div class="col-lg-9 pl-0 ml-sm-30 ml-xs-30"
					style="margin-top: 20px">

					<form action="#" class="hm-searchbox">
						<label> <input type="text"
							placeholder="Enter your search key ..." style="color: black">
						</label>
						<button class="li-btn" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>

					<div class="header-middle-right">
						<ul class="hm-menu">
							<li class="hm-wishlist"><a href="#"> <span
									class="cart-item-count wishlist-item-count">0</span> <i
									class="fa-solid fa-heart"></i>
							</a></li>

							<li class="hm-wishlist"><a href="<%=request.getContextPath()%>/cart"> <span
									class="cart-item-count wishlist-item-count">${number_cart}</span> <i
									class="fa-solid fa-cart-shopping"></i>
							</a></li>

							<li class="hm-wishlist"><a href="#"> <i
									class="fa-solid fa-user"></i>
							</a></li>
						</ul>
					</div>
					<!-- Header Middle Right Area End Here -->
				</div>
				<!-- Header Middle Right Area End Here -->
			</div>
		</div>
	</div>
	<!-- Header Middle Area End Here -->
	<!-- Begin Header Bottom Area -->
	<div
		class="header-bottom header-sticky stick d-none d-lg-block d-xl-block">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Begin Header Bottom Menu Area -->
					<div class="hb-menu">
						<nav>
							<ul>
								<li><a href="<%=request.getContextPath()%>/">Home</a>
								</li>
								<li class="megamenu-holder"><a href="#">Blog</a>
								</li>
								<li class="dropdown-holder"><a href="<%=request.getContextPath()%>/catalog">Product</a>
									<ul class="hb-dropdown">

										<c:forEach var="category" items="${list_category}">
											<li class="sub-dropdown-holder"><a href="<%=request.getContextPath()%>/catalog?category=${category.getCategoryCode()}"><c:out
														value="${category.getCategoryName()}" /></a>
												<ul class="hb-dropdown hb-sub-dropdown">
													<c:forEach var="brand" items="${list_brand}">
														<c:if test="${brand.getCategoryCode() == category.getCategoryCode()}">  
															<li>
																<a href="<%=request.getContextPath()%>/catalog?category=${category.getCategoryCode()}&brand=${brand.getBrandCode()}">
																	<c:out value="${brand.getBrandName()}" />
																</a>
															</li>
														</c:if>
													</c:forEach>
												</ul></li>

										</c:forEach>
									</ul></li>

								<li class="megamenu-static-holder"><a href="#">Guide</a>
									<ul class="megamenu hb-megamenu">
										<li><a href="#">Blog Layouts</a>
											<ul>
												<li><a href="#">Blog 2 Column</a></li>
												<li><a href="#">Blog 3 Column</a></li>
												<li><a href="#">Grid Left Sidebar</a></li>
												<li><a href="#">Grid Right Sidebar</a></li>
												<li><a href="#">Blog List</a></li>
												<li><a href="#">List Left Sidebar</a></li>
												<li><a href="#">List Right Sidebar</a></li>
											</ul></li>
										<li><a href="#">Blog Details Pages</a>
											<ul>
												<li><a href="#">Left Sidebar</a></li>
												<li><a href="#">Right Sidebar</a></li>
												<li><a href="#">Blog Audio Format</a></li>
												<li><a href="#">Blog Video Format</a></li>
												<li><a href="#">Blog Gallery Format</a></li>
											</ul></li>
										<li><a href="#">Other Pages</a>
											<ul>
												<li><a
													href="${pageContext.request.contextPath}/Login_Register">My
														Account</a></li>
												<li><a href="/Checkout">Checkout</a></li>
												<li><a href="#">Compare</a></li>
												<li><a href="#">Wishlist</a></li>
												<li><a href="#">Shopping Cart</a></li>
											</ul></li>
										<li><a href="#">Other Pages 2</a>
											<ul>
												<li><a
													href="${pageContext.request.contextPath}/Contact">Contact</a></li>
												<li><a
													href="${pageContext.request.contextPath}/About_Us">About
														Us</a></li>
												<li><a href="/FAQ">FAQ</a></li>
												<li><a href="/404">404 Error</a></li>
											</ul></li>
									</ul></li>
								<li><a href="${pageContext.request.contextPath}/About_Us">About
										Us</a></li>
								<li><a href="${pageContext.request.contextPath}/Contact">Contact</a></li>
							</ul>
						</nav>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Header Bottom Area End Here -->
	<!-- Begin Mobile Menu Area -->
	<div
		class="mobile-menu-area mobile-menu-area-4 d-lg-none d-xl-none col-12">
		<div class="container">
			<div class="row">
				<div class="mobile-menu"></div>
			</div>
		</div>
	</div>
	<!-- Mobile Menu Area End Here -->
</header>