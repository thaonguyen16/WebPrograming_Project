<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="checkout-area pt-60 pb-30">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-12">
				<form action="<%=request.getContextPath()%>/checkout" method="post">
					<input name="action" type="hidden" value="order" />
					<div class="checkbox-form">
						<h3>Billing Details</h3>
						<div class="row">
							<div class="col-md-12">
								<div class="country-select clearfix">
									<label>Country <span class="required">*</span></label> <select
										class="nice-select wide" name="country">
										<option value="Vietname">Vietname</option>
									</select>
								</div>
							</div>
							<div class="col-md-12">
								<div class="checkout-form-list">
									<label>Full Name <span class="required">*</span>
									</label> <input placeholder="" type="text" name="fullname" value="${user.getFullName()}">
								</div>
							</div>
							<div class="col-md-12">
								<div class="checkout-form-list">
									<label>Address <span class="required">*</span></label> <input
										placeholder="" type="text" name="address">
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
									<label>Email Address</label> <input placeholder="" type="email"
										name="email">
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
									<label>Phone <span class="required">*</span></label> <input
										type="text" name="phone" value="${user.getPhone()}">
								</div>
							</div>
						</div>
						<div class="different-address"></div>
						<div class="order-notes">
							<div class="checkout-form-list">
								<label>Order Notes</label>
								<textarea id="checkout-mess" name="ordernotes" cols="30"
									rows="10"
									placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
							</div>
						</div>
						<div class="payment-method">
							<div class="payment-accordion">
								<div class="order-button-payment">
									<input value="Order" type="submit">
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="col-lg-6 col-12">
				<div class="your-order">
					<h3>Your order</h3>
					<div class="your-order-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th class="cart-product-name">Product</th>
									<th class="cart-product-total">Total</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="line" items="${cart.getLineItem()}">
									<tr class="cart_item">
										<td class="cart-product-name">${line.getProductName()}<strong
											class="product-quantity"> × ${line.getQuantity()}</strong></td>
										<td class="cart-product-total"><span class="amount">${line.getTotalPrice()}</span></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr class="cart-subtotal">
									<th>Cart Subtotal</th>
									<td><span class="amount">${subBill}</span></td>
								</tr>
								<tr class="cart-subtotal">
									<th>Ship Fee</th>
									<td><span class="amount">35000</span></td>
								</tr>
								<tr class="order-total">
									<th>Order Total</th>
									<td><strong><span class="amount">${totalBill}</span></strong></td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>