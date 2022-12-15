<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="content-wrapper">
	<div class="dropdown"
		style="margin-left: 100px; margin-bottom: 20px; margin-top: 30px;">
		<a class="dropdown-toggle" href="#" role="button"
			class="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">Classify</a>
		<div class="dropdown-menu dropdown-menu-right"
			aria-labelledby="dropdownMenuLink">
			<form action="<%=request.getContextPath()%>/order" method="post">
				<input type="hidden" value="showClassify" name="action" /> <input
					type="hidden" value="Checking" name="type" /> <input type="submit"
					class="dropdown-item" value="Unprocessed" />
			</form>
			<form action="<%=request.getContextPath()%>/order" method="post">
				<input type="hidden" value="showClassify" name="action" /> <input
					type="hidden" value="Delivering" name="type" /> <input
					type="submit" class="dropdown-item" value="Delivering" />
			</form>
			<form action="<%=request.getContextPath()%>/order" method="post">
				<input type="hidden" value="showClassify" " name="action" /> <input
					type="hidden" value="Complete" name="type" /> <input type="submit"
					class="dropdown-item" value="Complete" />
			</form>
			<form action="<%=request.getContextPath()%>/order" method="post">
				<input type="hidden" value="showClassify" " name="action" /> <input
					type="hidden" value="Delete" name="type" /> <input type="submit"
					class="dropdown-item" value="Delete" />
			</form>
		</div>
	</div>

	<c:forEach var="bill" items="${list_bill_lineItem}">
		<div class="content">
			<div
				class="invoice-wrapper rounded border bg-white py-5 px-3 px-md-4 px-lg-5 mb-6">
				<div class="d-flex justify-content-between">
					<h2 class="text-dark font-weight-medium">Invoice #${bill.getBillCode().replaceAll(" ", "")}</h2>
					<div class="btn-group">
						<button class="btn btn-sm btn-light">
							<i class="mdi mdi-content-save"></i> Save </button>
						<button class="btn btn-sm btn-secondary"> <i class="mdi mdi-printer"></i> Print
						</button>
					</div>
				</div>
				<div class="row pt-5">
					<div class="col-xl-3 col-lg-4">
						<p class="text-dark mb-2">From</p>
						<address>
							Company Name <br> No 1, Vo Van Ngan Street, Linh Chieu Ward, Thu Duc City<br>
							Email: 19110460@student.hcmute.edu.vn <br> Phone: +84 868 286 420
						</address>
					</div>
					<div class="col-xl-3 col-lg-4">
						<p class="text-dark mb-2">To</p>
						<address>
							Customer: ${bill.getFullName() } <br> Adress: ${bill.getAddress() }<br>
							Email: ${bill.getEmail() }  <br> Phone: ${bill.getPhone() } <br>
							Notes: ${bill.getOrderNotes() }
						</address>
					</div>
					<div class="col-xl-3 col-lg-4">
						<p class="text-dark mb-2">Details</p>
						<address>
							Invoice ID: <span class="text-dark">#${bill.getBillCode().replaceAll(" ", "")}</span> <br>
							${bill.getDate()} <br> Ship Fee: 35000
						</address>
					</div>
				</div>
				<div class="table-responsive">
					<table class="table mt-3 table-striped" style="width: 100%">
						<thead>
							<tr>
								<th>Item Image</th>
								<th>Item Name</th>
								<th>Quantity</th>
								<th>Unit Cost</th>
								<th>Total</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="line" items = "${bill.getList_lineItem()}">
								<tr>
									<td>
										<img src="${line.getProductImg() }" alt="Image Item" width="100px" height="100px"/>
									</td>
									<td>${line.getProductName() }</td>
									<td>${line.getQuantity() }</td>
									<td>${String.format("%,.0f", Double.parseDouble(line.getPrice()))}</td>
									<td>${String.format("%,.0f", Double.parseDouble(line.getTotalPrice()))}</td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="row justify-content-end">
					<div class="col-lg-5 col-xl-4 col-xl-3 ml-sm-auto">
						<ul class="list-unstyled mt-4">
							<li class="mid pb-3 text-dark">Ship Fee<span
								class="d-inline-block float-right text-default">${String.format("%,d", 35000)}</span>
							</li>
							<li class="pb-3 text-dark">Total <span
								class="d-inline-block float-right">${String.format("%,.0f", bill.getAllBill())}</span>
							</li>
						</ul>
						
						<c:if test="${bill.getStatus() == 'Checking' }">
							<form action ="<%= request.getContextPath() %>/order" method="post">
								<input type="hidden" name="action" value="accept_bill" />
								<input type="hidden" name="bill_code" value="${bill.getBillCode()}" />
								<input type="submit" class="btn btn-block mt-2 btn-lg btn-primary btn-pill" value="Accept" />
							</form>
							<form action ="<%= request.getContextPath() %>/order" method="post">
							<input type="hidden" name="action" value="delete_bill" />
							<input type="hidden" name="bill_code" value="${bill.getBillCode()}" />
							<input type="hidden" name="status" value="${bill.getStatus()}" />
							<input type="submit" class="btn btn-block mt-2 btn-lg btn-primary btn-pill" value="Cancel" />
						</form>
						</c:if>
						<c:if test="${bill.getStatus() == 'Delivering' }">
							<form action ="<%= request.getContextPath() %>/order" method="post">
								<input type="hidden" name="action" value="complete_bill" />
								<input type="hidden" name="bill_code" value="${bill.getBillCode()}" />
								<input type="submit" class="btn btn-block mt-2 btn-lg btn-primary btn-pill" value="Complete" />
							</form>
							<form action ="<%= request.getContextPath() %>/order" method="post">
							<input type="hidden" name="action" value="delete_bill" />
							<input type="hidden" name="bill_code" value="${bill.getBillCode()}" />
							<input type="hidden" name="status" value="${bill.getStatus()}" />
							<input type="submit" class="btn btn-block mt-2 btn-lg btn-primary btn-pill" value="Cancel" />
						</form>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</div>

