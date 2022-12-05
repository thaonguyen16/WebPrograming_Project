<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="category" items="${list_category}">
	<section
		class="product-area li-laptop-product pt-60 pb-45 pt-sm-50 pt-xs-60">
		<div class="container">
			<div class="row">
				<!-- Begin Li's Section Area -->
				<div class="col-lg-12">
					<div class="li-section-title">
						<h2><span><c:out value="${category.getCategoryName()}"/></span></h2>
					</div>
					<div class="row">
						<div class="product-active owl-carousel">
							<c:forEach var="product" items="${list_product}">
								<c:if test="${category.getCategoryCode() == product.getCategoryCode()}">
									<div class="col-lg-12">
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
													<h4>
														<a class="product_name" href="#">${product.getProductName()}</a>
													</h4>
													<div class="price-box">
													<span
															class="old-price">${product.getPriceRoot()}</span> 
														<span class="new-price new-price-2">${product.getPriceCurrent()}</span> 
														
															<span
															class="discount-percentage">-22%</span>
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
														<li>
															<a class="links-details" href="#">
																<i class="fa-solid fa-heart"></i>
															</a>
														</li>
														<li>
															<a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#">
																<i class="fa fa-eye"></i>
															</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<!-- single-product-wrap end -->
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
				<!-- Li's Section Area End Here -->
			</div>
		</div>
	</section>
</c:forEach>