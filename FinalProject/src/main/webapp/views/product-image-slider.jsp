<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content-wraper" style="margin-top: 50px; margin-bottom: 50px">
	<div class="container">
		<div class="row single-product-area">
			<div class="col-lg-5 col-md-6">
				<!-- Product Details Left -->
				<div class="product-details-left sp-tab-style-left-page">
					<div class="product-details-images slider-navigation-1">
						<c:forEach var="image" items="${list_image}">
							<div class="lg-image">
								<a class="popup-img venobox vbox-item" href="${image.getProductIMG()}" data-gall="myGallery">
									<img src="${image.getProductIMG()}" alt="Image">
								</a>
							</div>
						</c:forEach>
					</div>
					
					<div class="tab-style-left">
						<c:forEach var="image" items="${list_image}">
							<div class="sm-image">
								<img src="${image.getProductIMG()}" alt="Image">
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			
			<div class="col-lg-7 col-md-6">
				<div class="product-details-view-content pt-60">
					<div class="product-info">
						<h2>${product_detail.getProductName()}</h2>
						<span class="product-details-ref">MSI</span>
						
						<div class="price-box pt-20">
							<span class="old-price" style="text-decoration-line: line-through;">${product_detail.getPriceRoot()}</span>
							<span class="new-price new-price-2">${product_detail.getPriceCurrent()}</span>
						</div>
						<div class="single-add-to-cart">
							<form action="<%=request.getContextPath()%>/cart" class="cart-quantity" method="post">
								<input type="hidden" name="action" value="addCart"/>
								<input type="hidden" name="productCode" value="${product_detail.getID()}"/>
								<input type="hidden" name="productName" value="${product_detail.getProductName()}"/>
								<input type="hidden" name="productImg" value="${product_detail.getImageURL()}"/>
								<input type="hidden" name="price" value="${product_detail.getPriceCurrent()}"/>
								
								<div class="quantity">
									<label>Quantity</label>
									<div class="cart-plus-minus">
										<input class="cart-plus-minus-box" name="quantity" value="1" type="number">
										<div class="dec qtybutton">
											<i class="fa fa-angle-down"></i>
										</div>
										<div class="inc qtybutton">
											<i class="fa fa-angle-up"></i>
										</div>
									</div>
								</div>
								<button class="add-to-cart" type="submit">Add to cart</button>
							</form>
						</div>
						<div class="product-additional-info pt-25">
							<a class="wishlist-btn" href="wishlist.html">
							<i class="fa-solid fa-heart"></i>Add to wishlist</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>