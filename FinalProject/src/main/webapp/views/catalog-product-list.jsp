<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content-wraper pt-60 pb-60">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 order-1 order-lg-2">
				<div class="shop-top-bar mt-30">
					<div class="shop-bar-inner">
						<div class="product-view-mode">
							<!-- shop-item-filter-list start -->
							<ul class="nav shop-item-filter-list" role="tablist">
								<li role="presentation"><a data-toggle="tab" role="tab"
									aria-controls="grid-view" href="#grid-view"><i
										class="fa fa-th"></i></a></li>
								<li class="active" role="presentation"><a
									aria-selected="true" class="active show" data-toggle="tab"
									role="tab" aria-controls="list-view" href="#list-view"><i
										class="fa fa-th-list"></i></a></li>
							</ul>
							<!-- shop-item-filter-list end -->
						</div>
						<div class="toolbar-amount">
							<span></span>
						</div>
					</div>
					<!-- product-select-box start -->
					<div class="product-select-box">
						<div class="product-short"></div>
					</div>
					<!-- product-select-box end -->
				</div>
				<!-- shop-top-bar end -->
				<!-- shop-products-wrapper start -->
				<div class="shop-products-wrapper">
					<div class="tab-content">
						<div id="grid-view" class="tab-pane fade" role="tabpanel">
							<div class="product-area shop-product-area">
								<div class="row">
									<c:forEach var="product" items="${list_product}">
										<div class="col-lg-4 col-md-4 col-sm-6 mt-40">
											<!-- single-product-wrap start -->
											<div class="single-product-wrap">
												<div class="product-image">
													<form action="<%=request.getContextPath()%>/product" method="post">
														<input type="hidden" name="action" value="showProduct"/>
														<input type="hidden" name="productCode" value="${product.getID()}"/>
														<button type="submit"> 
															<img src="${product.getImageURL()}" alt="${product.getProductName()}">
														</button>
													</form>
												</div>
												<div class="product_desc">
													<div class="product_desc_info">
														<div class="product-review"></div>
														<h4>
															<a class="product_name" href="#">${product.getProductName()}</a>
														</h4>
														<div class="price-box">
															<span class="old-price"
																style="text-decoration-line: line-through;">${product.getPriceRoot()}</span>
															<span class="new-price">${product.getPriceCurrent()}</span>
														</div>
													</div>
													<div class="add-actions">
														<ul class="add-actions-link">
															<li class="add-cart active">
															<form action="<%=request.getContextPath()%>/cart" method="post">
																<input type="hidden" type="text" name="action" value="addCart"/>
																<input type="hidden" type="text" name="productCode" value="${product.getID()}"/>
																<input type="hidden" type="text" name="productName" value="${product.getProductName()}"/>
																<input type="hidden" type="text" name="productImg" value="${product.getImageURL()}"/>
																<input type="hidden" type="text" name="quantity" value="1"/>
																<input type="hidden" type="text" name="price" value="${product.getPriceCurrent()}"/>
																
																<input type="submit" style="background:transparent;outline:none;border:none" value="Add to cart" />
															</form>
															</li>
															<li><a href="#" title="quick view"
																class="quick-view-btn" data-toggle="modal"
																data-target="#exampleModalCenter"><i
																	class="fa fa-eye"></i></a></li>
															<li><a class="links-details" href="wishlist.html"><i
																	class="fa-solid fa-heart"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
											<!-- single-product-wrap end -->
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<div id="list-view"
							class="tab-pane fade product-list-view active show"
							role="tabpanel">
							<div class="row">
								<div class="col">
									<c:forEach var="product" items="${list_product}">
										<div class="row product-layout-list">
											<div class="col-lg-3 col-md-5 ">
												<div class="product-image">
													<form action="<%=request.getContextPath()%>/product" method="post">
														<input type="hidden" name="action" value="showProduct"/>
														<input type="hidden" name="productCode" value="${product.getID()}"/>
														<button type="submit"> 
															<img src="${product.getImageURL()}" alt="${product.getProductName()}">
														</button>
													</form>
												</div>
											</div>
											<div class="col-lg-5 col-md-7">
												<div class="product_desc">
													<div class="product_desc_info">
														<div class="product-review"></div>
														<h4>
															<a class="product_name" href="single-product.html">${product.getProductName()}</a>
														</h4>
														<div class="price-box">
															<span class="old-price"
																style="text-decoration-line: line-through;">${product.getPriceRoot()}</span>
															<span class="new-price">${product.getPriceCurrent()}</span>
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-4">
												<div class="shop-add-action mb-xs-30" style="background-color: white;border:none;">
													<ul class="add-actions-link" style="text-align: center;">
														<li class="add-cart" style="display:block;width:100%;">
															<form action="<%=request.getContextPath()%>/cart" method="post">
																<input type="hidden" type="text" name="action" value="addCart"/>
																<input type="hidden" type="text" name="productCode" value="${product.getID()}"/>
																<input type="hidden" type="text" name="productName" value="${product.getProductName()}"/>
																<input type="hidden" type="text" name="productImg" value="${product.getImageURL()}"/>
																<input type="hidden" type="text" name="quantity" value="1"/>
																<input type="hidden" type="text" name="price" value="${product.getPriceCurrent()}"/>
																
																<input type="submit" style="background:transparent;outline:none;border:none" value="Add to cart" />
															</form>
														</li>
														<li class="wishlist" style="display:block;width:100%">
															<a href="wishlist.html" style="color: #242424;">
															<i class="fa-regular fa-heart"></i>Add to wishlist</a>
														</li>
														<li style="display:block;width:100%;margin-top: 70px">
															<a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#">
																<i class="fa fa-eye"></i>
																Quick view
															</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 order-2 order-lg-1">
				<!--sidebar-categores-box start  -->
				<div class="sidebar-categores-box mt-sm-30 mt-xs-30">
					<div class="sidebar-title">
						<h2>Category</h2>
					</div>
					<!-- category-sub-menu start -->
					<div class="category-sub-menu">
						<ul>
							<c:forEach var="category" items="${list_category}">
								<li class="has-sub"><a
									href="<%=request.getContextPath()%>/catalog?category=${category.getCategoryCode()}">${category.getCategoryName()}</a>
									<ul>
										<c:forEach var="brand" items="${list_brand}">
											<c:if
												test="${brand.getCategoryCode() == category.getCategoryCode()}">
												<li><a
													href="<%=request.getContextPath()%>/catalog?category=${category.getCategoryCode()}&brand=${brand.getBrandCode()}">${brand.getBrandName()}</a></li>
											</c:if>
										</c:forEach>
									</ul></li>
							</c:forEach>
						</ul>
					</div>
					<!-- category-sub-menu end -->
				</div>
				<!--sidebar-categores-box end  -->
				<!--sidebar-categores-box start  -->
				<div class="sidebar-categores-box">
					<div class="sidebar-title">
						<h2>Filter By</h2>
					</div>
					<!-- btn-clear-all start -->
					<!--button class="btn-clear-all mb-sm-30 mb-xs-30">Clear all</button-->
					<!-- btn-clear-all end -->
					<!-- filter-sub-area start -->
					<div class="filter-sub-area">
						<h5 class="filter-sub-titel">RAM</h5>
						<div class="categori-checkbox">
							<form action="#">
								<ul>
									<li><input type="radio" name="product-categori"><a
										href="#">4 GB</a></li>
									<li><input type="radio" name="product-categori"><a
										href="#">8 GB</a></li>
									<li><input type="radio" name="product-categori"><a
										href="#">16 GB</a></li>
								</ul>
							</form>
						</div>
					</div>
					<!-- filter-sub-area end -->
					<!-- filter-sub-area start -->
					<div class="filter-sub-area pt-sm-10 pt-xs-10">
						<h5 class="filter-sub-titel">Operate System</h5>
						<div class="categori-checkbox">
							<form action="#">
								<ul>
									<li><input type="radio" name="product-categori"><a
										href="#">Window 10</a></li>
									<li><input type="radio" name="product-categori"><a
										href="#">Window 11</a></li>
									<li><input type="radio" name="product-categori"><a
										href="#">Android 11</a></li>
									<li><input type="radio" name="product-categori"><a
										href="#">Android 12</a></li>
									<li><input type="radio" name="product-categori"><a
										href="#">iOS 15</a></li>
									<li><input type="radio" name="product-categori"><a
										href="#">iOS 16</a></li>
								</ul>
							</form>
						</div>
					</div>

					<div class="filter-sub-area pt-sm-10 pt-xs-10">
						<h5 class="filter-sub-titel">Color</h5>
						<div class="categori-checkbox">
							<form action="#">
								<ul>
									<li><input type="radio" name="color"><a href="#">Black</a></li>
									<li><input type="radio" name="color"><a href="#">White</a></li>
									<li><input type="radio" name="color"><a href="#">Titanium
											Gray</a></li>
									<li><input type="radio" name="color"><a href="#">Titanium
											Blue</a></li>
									<li><input type="radio" name="color"><a href="#">Core
											Black</a></li>
									<li><input type="radio" name="color"><a href="#">Shadow
											Black</a></li>
									<li><input type="radio" name="color"><a href="#">Storm
											Grey</a></li>
									<li><input type="radio" name="color"><a href="#">Shadow
											Black</a></li>
									<li><input type="radio" name="color"><a href="#">Blue
											Black</a></li>
									<li><input type="radio" name="color"><a href="#">Pink</a></li>
								</ul>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>