<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en" dir="ltr">

<jsp:include page="head.jsp" />

<body class="navbar-fixed sidebar-fixed" id="body">
	<script>
    NProgress.configure({
      showSpinner: false
    });
    NProgress.start();

  </script>
	<div id="toaster"></div>
	<div class="wrapper">
		<jsp:include page="aside.jsp" />

		<div class="page-wrapper">
			<jsp:include page="header.jsp" />

			<div class="content-wrapper">
				<div class="content">
					<!-- Top Statistics -->

					<div class="row">
						<div class="col-xl-3 col-md-6">
							<div class="card card-default">
								<div class="d-flex p-5">
									<div class="icon-md bg-secondary rounded-circle mr-3">
										<i class="mdi mdi-account-plus-outline"></i>
									</div>
									<div class="text-left">
										<span class="h2 d-block">890</span>
										<p>New Users</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card card-default">
								<div class="d-flex p-5">
									<div class="icon-md bg-success rounded-circle mr-3">
										<i class="mdi mdi-table-edit"></i>
									</div>
									<div class="text-left">
										<span class="h2 d-block">350</span>
										<p>Order Placed</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card card-default">
								<div class="d-flex p-5">
									<div class="icon-md bg-primary rounded-circle mr-3">
										<i class="mdi mdi-content-save-edit-outline"></i>
									</div>
									<div class="text-left">
										<span class="h2 d-block">1360</span>
										<p>Total Sales</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card card-default">
								<div class="d-flex p-5">
									<div class="icon-md bg-info rounded-circle mr-3">
										<i class="mdi mdi-bell"></i>
									</div>
									<div class="text-left">
										<span class="h2 d-block">$8930</span>
										<p>Monthly Revenue</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xl-8">
							<!-- Income and Express -->
							<div class="card card-default">
								<div class="card-header">
									<h2>Income And Expenses</h2>
									<div class="dropdown">
										<a class="dropdown-toggle icon-burger-mini" href="#"
											role="button" id="dropdownMenuLink" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"
											data-display="static"> </a>

										<div class="dropdown-menu dropdown-menu-right"
											aria-labelledby="dropdownMenuLink">
											<a class="dropdown-item" href="#">Action</a> <a
												class="dropdown-item" href="#">Another action</a> <a
												class="dropdown-item" href="#">Something else here</a>
										</div>
									</div>

								</div>
								<div class="card-body">
									<div class="chart-wrapper">
										<div id="mixed-chart-1"></div>
									</div>
								</div>

							</div>


						</div>
						<div class="col-xl-4">
							<!-- Current Users  -->
							<div class="card card-default">
								<div class="card-header">
									<h2>Current Users</h2>
									<span>Realtime</span>
								</div>
								<div class="card-body">
									<div id="barchartlg2"></div>
								</div>
								<div class="card-footer bg-white py-4">
									<a href="#" class="text-uppercase">Current Users Overview</a>
								</div>
							</div>
						</div>
					</div>
					<jsp:include page="stock-modal.jsp" />
				</div>
			</div>

			<jsp:include page="footer.jsp" />
		</div>
	</div>

	<jsp:include page="card-canvas.jsp" />
	<jsp:include page="script.jsp" />
</body>
</html>
