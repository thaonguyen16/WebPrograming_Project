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

	<div class="wrapper">
		<jsp:include page="aside.jsp" />

		<div class="page-wrapper">
			<jsp:include page="header.jsp" />
			<c:if test="${category == null}">
				<jsp:include page="category/main-category.jsp" />
				<jsp:include page="category/add-category.jsp" />
			</c:if>
			
			<c:if test="${category != null}">
				<jsp:include page="category/update-category.jsp" />
			</c:if>
		</div>
	</div>
	<jsp:include page="card-canvas.jsp" />
	<jsp:include page="script.jsp" />
</body>
</html>
