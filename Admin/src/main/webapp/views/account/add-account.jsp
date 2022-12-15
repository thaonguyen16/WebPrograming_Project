<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/14/2022
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form action="<%= request.getContextPath() %>/account"
	id="show_add_account" style="display: none" method="post">
	<input type="hidden" name="action" value="add" />
	<div class="modal-content">
		<div class="modal-header align-items-center p3 p-md-5">
			<h2 class="modal-title" id="exampleModalGridTitle">Add Category</h2>
			<div>
				<a href="<%= request.getContextPath() %>/account"
					class="btn btn-light btn-pill mr-1 mr-md-2" data-dismiss="modal">
					cancel </a>
				<button type="submit" class="btn btn-primary  btn-pill"
					data-dismiss="modal">save</button>
			</div>
		</div>
		<div class="modal-body p3 p-md-5">
			<div class="form-group row mb-6">
				<label for="occupation" class="col-sm-4 col-lg-2 col-form-label">Image
					URL (*)</label>
				<div class="col-sm-8 col-lg-10">
					<input type="text" class="form-control" id="occupation"
						name="imgURl" required>
				</div>
			</div>

			<div class="form-group row mb-6">
				<label for="occupation1" class="col-sm-4 col-lg-2 col-form-label">Address</label>
				<div class="col-sm-8 col-lg-10">
					<input type="text" class="form-control" id="occupation1"
						name="address">
				</div>
			</div>

			<div class="form-group row mb-6">
				<label for="com-name" class="col-sm-4 col-lg-2 col-form-label">Birth
					Date</label>
				<div class="col-sm-8 col-lg-10">
					<input type="date" class="form-control" id="com-name"
						name="birthdate">
				</div>
			</div>

			<div class="form-group row mb-6">
				<label for="com-name1" class="col-sm-4 col-lg-2 col-form-label">Email
					(*)</label>
				<div class="col-sm-8 col-lg-10">
					<input type="email" class="form-control" id="com-name1"
						name="email" required>
				</div>
			</div>

			<div class="form-group row mb-6">
				<label for="com-name2" class="col-sm-4 col-lg-2 col-form-label">Full
					name (*)</label>
				<div class="col-sm-8 col-lg-10">
					<input type="text" class="form-control" id="com-name2"
						name="fullname" required>
				</div>
			</div>
			<div class="form-group row mb-6">
				<label class="col-sm-4 col-lg-2 col-form-label">Gender</label>
				<div class="custom-control custom-radio col-sm-8 col-lg-10">
					<input type="radio" id="radio-1" name="gender" class="custom-control-input" value="Male">
					<label class="custom-control-label" for="radio-1" style="margin-right: 100px;">Male</label> 
						
					<input type="radio" id="radio-2" name="gender" class="custom-control-input" value="Female"> 
					<label class="custom-control-label" for="radio-2">Female</label>
				</div>
			</div>
			<div class="form-group row mb-6">
				<label for="com-name5" class="col-sm-4 col-lg-2 col-form-label">Password
					(*)</label>
				<div class="col-sm-8 col-lg-10">
					<input type="password" class="form-control" id="com-name5"
						name="password" required>
				</div>
			</div>

			<div class="form-group row mb-6">
				<label for="com-name6" class="col-sm-4 col-lg-2 col-form-label">Phone
					(*)</label>
				<div class="col-sm-8 col-lg-10">
					<input type="number" class="form-control" id="com-name6"
						name="phone" required>
				</div>
			</div>
			<div class="form-group row mb-6">
				<label for="com-name7" class="col-sm-4 col-lg-2 col-form-label">Username
					(*)</label>
				<div class="col-sm-8 col-lg-10">
					<input type="text" class="form-control" id="com-name7"
						name="username" required>
				</div>
			</div>

			<div class="d-flex justify-content-end">
				<button type="submit" class="btn btn-primary mb-2 btn-pill">Create Account</button>
			</div>
		</div>
	</div>
</form>