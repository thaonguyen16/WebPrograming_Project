<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="no-js" lang="en">

<jsp:include page="head.jsp" />

<body>
	<div class="body-wrapper">

		<jsp:include page="header.jsp" />
		<jsp:include page="banner.jsp" />
		
		<jsp:include page="product-image-slider.jsp"/>
		<jsp:include page="product-detail.jsp"/>
		
		<jsp:include page="footer.jsp" />
		<jsp:include page="home-modal.jsp" />
	</div>
	<jsp:include page="script.jsp" />
</body>
</html>