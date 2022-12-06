<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${list_bill.size() > 0}">
	<div class="Shopping-cart-area pt-60 pb-60">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="bill-list">Bill List</h1>
					<c:forEach var="bill" items="${list_bill}">
						<form action="#">
							<div class="table-content table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th class="li-product-remove">Bill Code</th>
											<th class="li-product-thumbnail">Number of Item</th>
											<th class="cart-product-name">Price</th>
											<th class="li-product-quantity">Date Order</th>
											<th class="li-product-subtotal">Status</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="li-product-remove" style="font-size: 15px;">${bill.getBillCode() }</td>
											<td class="li-product-thumbnail" style="font-size: 15px;">${bill.getQuantity() }</td>
											<td class="li-product-name" style="font-size: 15px;">${bill.getAllBill() }</td>
											<td class="quantity" style="font-size: 15px;">${bill.getDate()}</td>
											<td class="product-subtotal"
												style="font-size: 15px; color: rgb(172, 19, 19)">${bill.getStatus()}</td>
										</tr>
									</tbody>
								</table>
								<div class="coupon-all">
									<div class="coupon">
										<button id="coupon_code" class="button-readmore"
											onclick="showDetail(${bill.getID()} , this , 'button_close')" style="margin-bottom: 20px">More
											Detail</button>
									</div>
								</div>

								<div class="table-content table-responsive" id="${bill.getID()}" style="display: none;">
									<p style="font-size: 15px; color: black; font-weight: 800;">BIll Item Detail</p>
									<table class="table">
										<thead>
											<tr>
												<th class="li-product-remove">Category</th>
												<th class="li-product-thumbnail">Image</th>
												<th class="cart-product-name">Product</th>
												<th class="li-product-quantity">Quantity</th>
												<th class="li-product-subtotal">Total</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="line" items="${bill.list_lineItem}">
												<tr>
													<c:forEach var="category" items="${list_category}">
														<c:if test="${category.getCategoryCode() == line.getCategoryCode()}">
															<td class="li-product-remove" style="font-size: 15px;">${category.getCategoryName()}</td>
														</c:if>
													</c:forEach>
													<td class="li-product-thumbnail"><img
														src="${line.getProductImg() }"
														alt="${line.getProductName()}" width="100" height="100"></td>
													<td class="li-product-name" style="font-size: 15px;">${line.getProductName()}</td>
													<td class="li-product-quantity"><span>${line.getQuantity()}</span></td>
													<td class="li-product-subtotal">${line.getTotalPrice()}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<p style="font-size: 15px; color: black; margin-top: 20px; font-weight: 800;">Information Delivery</p>
									<div class="table-infor">
										<div class="text">
											<p class="text-h1">Country:</p>
											<p class="text-p">${bill.getCountry()}</p>
										</div>
										<div class="text">
											<p class="text-h1">Customer Name:</p>
											<p class="text-p">${bill.getFullName() }</p>
										</div>
										<div class="text">
											<p class="text-h1">Address:</p>
											<p class="text-p">${bill.getAddress() }</p>
										</div>
										<div class="text">
											<p class="text-h1">Email:</p>
											<p class="text-p">${bill.getEmail() }</p>
										</div>
										<div class="text">
											<p class="text-h1">Phone:</p>
											<p class="text-p">${bill.getPhone()}</p>
										</div>
										<div class="text">
											<p class="text-h1">Payment:</p>
											<p class="text-p">Payment up to delivery</p>
										</div>
										<div class="text">
											<p class="text-h1">Note:</p>
											<p class="text-p">${bill.getOrderNotes()}</p>
										</div>
										<div class="text">
											<p class="text-h1">Fee Ship:</p>
											<p class="text-p">350000</p>
										</div>
										<div class="text">
											<p class="text-h1">All bill:</p>
											<p class="text-p">${bill.getAllBill()}</p>
										</div>
									</div>

									<div class="coupon-all">
										<div class="coupon">
											<button id="button_close" class="button-readmore" onclick="hideDetail(${bill.getID()} , this , 'coupon_code')" style="margin-bottom: 20px;">Close</button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</c:if>
<c:if test="${list_bill.size() <= 0}">
	<jsp:include page="404.jsp"/>
</c:if>