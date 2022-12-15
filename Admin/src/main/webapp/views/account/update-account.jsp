<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-xl-10" style="margin-left: 100px; margin-top: 50px;">
		<div class="card card-default">
			<div class="card-header">
				<h2 class="mb-5">Update Account</h2>
			</div>
			<div class="card-body">
				<div class="media media-sm">
					<div class="media-sm-wrapper">
						<img src="${old_account.getImageURL() }" alt="User Image" width="50px"
							height="50px">
					</div>
					<div class="media-body">
						<p>Click the current avatar to change your photo.</p>
					</div>
				</div>
				<form action="<%=request.getContextPath()%>/account" method="post">
					<input type="hidden" value="update_account" name="action">
					<div class="form-group row mb-6">
						<label for="occupation" class="col-sm-4 col-lg-2 col-form-label">Image
							URL (*)</label>
						<div class="col-sm-8 col-lg-10">
							<input type="text" class="form-control" id="occupation"
								name="imgURl" required value="${old_account.getImageURL() }">
						</div>
					</div>

					<div class="form-group row mb-6">
						<label for="occupation1" class="col-sm-4 col-lg-2 col-form-label">Address</label>
						<div class="col-sm-8 col-lg-10">
							<input type="text" class="form-control" id="occupation1"
								name="address" value="${old_account.getAddress() }">
						</div>
					</div>

					<div class="form-group row mb-6">
						<label for="com-name" class="col-sm-4 col-lg-2 col-form-label">Birth
							Date</label>
						<div class="col-sm-8 col-lg-10">
							<input type="date" class="form-control" id="com-name"
								name="birthdate" value="${old_account.getBirthdate() }">
						</div>
					</div>

					<div class="form-group row mb-6">
						<label for="com-name1" class="col-sm-4 col-lg-2 col-form-label">Email
							(*)</label>
						<div class="col-sm-8 col-lg-10">
							<input type="email" class="form-control" id="com-name1"
								name="email" required value="${old_account.getEmail() }">
						</div>
					</div>

					<div class="form-group row mb-6">
						<label for="com-name2" class="col-sm-4 col-lg-2 col-form-label">Full
							name (*)</label>
						<div class="col-sm-8 col-lg-10">
							<input type="text" class="form-control" id="com-name2"
								name="fullname" required value="${old_account.getFullName() }">
						</div>
					</div>
					<div class="form-group row mb-6">
						<label for="com-name10" class="col-sm-4 col-lg-2 col-form-label">Gender</label>
						<div class="custom-control custom-radio col-sm-8 col-lg-10">
							<input type="radio" id="radio-1" name="gender"
								class="custom-control-input" value="Male">
							<label class="custom-control-label" for="radio-1"
								style="margin-right: 100px;">Male</label> <input type="radio"
								id="radio-2" name="gender" class="custom-control-input"
								value="Female"> <label
								class="custom-control-label" for="radio-2">Female</label>
						</div>
					</div>
					<div class="form-group row mb-6">
						<label for="com-name5" class="col-sm-4 col-lg-2 col-form-label">Password
							(*)</label>
						<div class="col-sm-8 col-lg-10">
							<input type="password" class="form-control" id="com-name5"
								name="password" required value="${old_account.getPassword() }">
						</div>
					</div>

					<div class="form-group row mb-6">
						<label for="com-name6" class="col-sm-4 col-lg-2 col-form-label">Phone
							(*)</label>
						<div class="col-sm-8 col-lg-10">
							<input type="number" class="form-control" id="com-name6"
								name="phone" required value="${old_account.getPhone() }">
						</div>
					</div>
					<div class="form-group row mb-6">
						<label for="com-name7" class="col-sm-4 col-lg-2 col-form-label">Username
							(*)</label>
						<div class="col-sm-8 col-lg-10">
							<input type="text" class="form-control" id="com-name7"
								name="username" required value="${old_account.getUsername() }">
						</div>
					</div>

					<div class="d-flex justify-content-end">
						<button type="submit" class="btn btn-primary mb-2 btn-pill">Update
							Profile</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
