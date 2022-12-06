<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="no-js" lang="en">

<jsp:include page="head.jsp" />

<body>
	<div class="body-wrapper">

		<jsp:include page="header.jsp" />

		<div class="page-section mb-60">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
						<img
							src="https://th.bing.com/th/id/R.62726b7cdce0087bc8854b932d09aa1e?rik=HzoTXGDsHnf5pQ&pid=ImgRaw&r=0"
							alt="img" width="100%" height="500px" style="margin-top: 20px;">
					</div>
					<div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
						<form action="<%= request.getContextPath()%>/register" method="post" style="margin-top: 50px;">
                        <div class="login-form">
                            <h4 class="login-title">Register</h4>
                            <div class="row">
                                <div class="col-md-6 col-12 mb-20">
                                    <label for="fullname">Full Name</label>
                                    <input id="fullname" name="fullname" class="mb-0" type="text" placeholder="FullName">
                                </div>
                                <div class="col-md-6 col-12 mb-20">
                                    <label for="user_name">Username</label>
                                    
                                    <input id="user_name" name="username" class="mb-0" type="text" placeholder="Username">
                                	<c:if test="${message_username != null}" >
                                        <p style="color:red;font-style: italic">${message_username}</p>
                                    </c:if>
                                </div>
                                
                                <div class="col-md-12 mb-20">
                                    <label for="phone-number">Phone Number *</label>
                                    <c:if test="${message_phone != null}" >
                                        <p style="color:red;font-style: italic">${message_phone}</p>
                                    </c:if>
                                    <input id="phone-number" name="phone" class="mb-0" type="number" placeholder="Phone Number">
                                </div>
                                <div class="col-md-6 mb-20">
                                    <label for="password-re">Password</label>
                                    <input id="password-re" name="password" class="mb-0" type="password" placeholder="Password">
                                </div>
                                <div class="col-md-6 mb-20">
                                    <label for="confirm-pass">Confirm Password</label>
                                    <c:if test="${message_pass != null}" >
                                        <p style="color:red;font-style: italic">${message_pass}</p>
                                    </c:if>
                                    <input id="confirm-pass" name="confirm-pass" class="mb-0" type="password" placeholder="Confirm Password">
                                </div>
                                <div class="col-12">
                                    <button class="register-button mt-0">Register</button>
                                </div>
                                <div class="col-md-12 mb-20" style="margin-top: 20px;text-align: center;">
                                 	<p>Haven account ? <a href="<%=request.getContextPath()%>/login" style="color: rgb(68, 16, 16)">Click here to login</a> </p>
                                </div>
                            </div>
                        </div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
	<jsp:include page="script.jsp" />
</body>
</html>