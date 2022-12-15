<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">
<jsp:include page="head.jsp" />
<body class="bg-light-gray" id="body">
	<div class="container d-flex align-items-center justify-content-center"
		style="min-height: 100vh">
		<div class="d-flex flex-column justify-content-between">
			<div class="row justify-content-center">
				<div class="col-lg-6 col-md-10">
					<div class="card card-default mb-0">
						<div class="card-header pb-0">
							<div
								class="app-brand w-100 d-flex justify-content-center border-bottom-0">
								<a class="w-auto pl-0" href="/index.html"> <img
									src="<%= request.getContextPath() %>/assets/images/rose_icon.gif" style="border-radius:50%;width:50px;" alt="Rose Black">
								</a>
							</div>
						</div>
						<div class="card-body px-5 pb-5 pt-0">

							<h4 class="text-dark mb-6 text-center">Rose Black</h4>

							<form action="<%= request.getContextPath()%>/login" method="post">
								<p style="margin-bottom: 20px;color: red;">${message_login}</p>
								<div class="row">
									<div class="form-group col-md-12 mb-4">
										<input type="text" class="form-control input-lg" id="email"
											aria-describedby="emailHelp" name="email" placeholder="Username">
									</div>
									<div class="form-group col-md-12 ">
										<input type="password" class="form-control input-lg"
											id="password" name="password" placeholder="Password">
									</div>
									<div class="col-md-12">
										<div class="d-flex justify-content-between mb-3">
											<div class="custom-control custom-checkbox mr-3 mb-3">
												<input type="checkbox" class="custom-control-input"
													id="customCheck2" name="remember"> 
													<label class="custom-control-label" for="customCheck2">Remember me</label>
											</div>

											<a class="text-color" href="<%= request.getContextPath()%>/forget-pass"> Forgot password? </a>

										</div>

										<button type="submit" class="btn btn-primary btn-pill mb-4">Sign In</button>

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
