<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="no-js" lang="en">

<jsp:include page="head.jsp" />

<body>
	<div class="body-wrapper">

		<jsp:include page="header.jsp" />
		
		<c:if test="${checkoutStatusTrue == 1}">
			<div class="error404-area pt-30 pb-60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="error-wrapper text-center ptb-50 pt-xs-20">
                                <div class="error-text">
                                    <img src="https://cdn-icons-png.flaticon.com/512/7518/7518748.png" alt="Cart" width="200px" height="200px">
                                    <h2>Your Checkout Successfully</h2>
                                    <p>Your order is checking by shop. Please, to bill page to watch detail and update status of your order</p>
                                </div>
                                <div class="error-button">
                                    <a href="<%= request.getContextPath() %>/bill">Reach to bill page</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</c:if>
		<c:if test="${checkoutStatusFalse == 0 }">
			<jsp:include page="404.jsp" />
		</c:if>
		<jsp:include page="footer.jsp" />
	</div>
	<jsp:include page="script.jsp" />
</body>
</html>