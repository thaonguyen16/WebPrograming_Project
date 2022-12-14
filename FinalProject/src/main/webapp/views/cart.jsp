<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="no-js" lang="en">

<jsp:include page="head.jsp" />

<body>
	<div class="body-wrapper">

		<jsp:include page="header.jsp" />
		
		<c:if test="${cartTrue == 1 }">
			<jsp:include page="cart-detail.jsp"/>
		</c:if>
		<c:if test="${cartTrue == 0 }">
			<div class="error404-area pt-30 pb-60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="error-wrapper text-center ptb-50 pt-xs-20">
                                <div class="error-text">
                                    <img src="https://th.bing.com/th/id/OIP.So1-JYRCHH475Vs4wpek9QHaHY?pid=ImgDet&rs=1" alt="Cart" width="200px" height="200px">
                                    <h2>Cart Empty</h2>
                                    <p>Your cart is empty. Please to product page to add product to cart and checkout.</p>
                                </div>
                                <div class="error-button">
                                    <a href="<%= request.getContextPath() %>/home">Back to home page</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</c:if>
		
		<jsp:include page="footer.jsp" />
		<jsp:include page="home-modal.jsp" />
	</div>
	<jsp:include page="script.jsp" />
</body>
</html>