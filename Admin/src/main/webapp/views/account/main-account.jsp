<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Bordered Table -->
<div class="card card-default">
	<div class="card-body">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Username</th>
					<th scope="col">Password</th>
					<th scope="col">FullName</th>
					<th scope="col">Address</th>
					<th scope="col">Email</th>
					<th scope="col">Birthdate</th>
					<th scope="col">Phone</th>
					<th scope="col">Gender</th>
					<th scope="col">Image URL</th>
					<th class="text-center">Action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="account" items="${account_list}">
				<tr>
					<td scope="row">${account.getID() }</td>
					<td>${account.getUsername() }</td>
					<td>${account.getPassword() }</td>
					<td>${account.getFullName() }</td>
					<td>${account.getAddress() }</td>
					<td>${account.getEmail() }</td>
					<td>${account.getBirthdate() }</td>
					<td>${account.getPhone() }</td>
					<td>${account.getGender() }</td>
					<td class="text-center">
						<img src="${account.getImageURL() }" width="50px" height="50px" />
					</td>
					<th class="text-center">
					
						<form action="<%= request.getContextPath() %>/account" method="post">
						
							<input type="hidden" value="update" name="action">
							<input type="hidden" value="${account.getID()}" name="id">
							
							<button type="submit"> 
								<i class="mdi mdi-open-in-new"></i>
							</button> 
						</form>
						
						<form action="<%= request.getContextPath() %>/account" method="post">
						
							<input type="hidden" value="delete" name="action">
							<input type="hidden" value="${account.getID()}" name="id">
							
							<button type="submit"> 
								<i class="mdi mdi-close text-danger"></i>
							</button> 
						</form>
					</th>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<button type="button" class="btn-add-category mr-1 mr-md-2" onclick="show_add_account(this)">Create New Account</button>