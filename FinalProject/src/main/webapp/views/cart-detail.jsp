<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="Shopping-cart-area pt-60 pb-60">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<form action="#">
					<div class="table-content table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th class="li-product-remove">remove</th>
									<th class="li-product-thumbnail">images</th>
									<th class="cart-product-name">Product</th>
									<th class="li-product-price">Unit Price</th>
									<th class="li-product-quantity">Quantity</th>
									<th class="li-product-subtotal">Total</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="line" items="${cart.getLineItem()}">
								<tr>
									<td class="li-product-remove"><a href="#"><i class="fa-regular fa-circle-xmark" style="font-size:20px;"></i></a></td>
									<td class="li-product-thumbnail"><a href="#"><img
											src="${line.getProductImg()}"
											alt="Li's Product Image" width="100" height="100"></a></td>
									<td class="li-product-name"><a href="#" style="color: #242424;">${line.getProductName()}</a></td>
									<td class="li-product-price"><span>${line.getPrice()}</span></td>
									<td class="quantity"><label>Quantity</label>
										<div class="cart-plus-minus">
											<input class="cart-plus-minus-box" value="${line.getQuantity() }" type="text">
											<div class="dec qtybutton">
												<i class="fa fa-angle-down"></i>
											</div>
											<div class="inc qtybutton">
												<i class="fa fa-angle-up"></i>
											</div>
										</div></td>
									<td class="product-subtotal"><span>${line.getTotalPrice()} </span></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="coupon-all">
								<div class="coupon">
									<input id="coupon_code" class="input-text" name="coupon_code"
										value="" placeholder="Coupon code" type="text"> 
										<input class="button" name="apply_coupon" value="Apply coupon" type="submit">
								</div>
								<div class="coupon2">
									<input class="button" name="update_cart" value="Update cart"
										type="submit">
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-5 ml-auto">
							<div class="cart-page-total">
								<h2>Cart totals</h2>
								<ul>
									<li>Subtotal<span>${subBill}</span></li>
									<li>Ship Fee<span>35000</span></li>
									<li>Total <span>${totalBill}</span></li>
								</ul>
								<a href="<%=request.getContextPath()%>/checkout">Proceed to checkout</a>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>