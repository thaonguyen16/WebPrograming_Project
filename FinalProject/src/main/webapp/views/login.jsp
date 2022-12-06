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
						<!-- Login Form s-->
						<form action="<%= request.getContextPath()%>/login" method="post" style="margin-top: 50px;">
							<div class="login-form">
                            <h4 class="login-title">Login</h4>
                            <p style="color:red;font-style: italic">${message_login}</p>
                            <div class="row">
                                <div class="col-md-12 col-12 mb-20">
                                    <label for="phone"> Phone Number</label>
                                    <c:choose>
                                        <c:when test="${account != null}">
                                            <input id = "phone" class="mb-0" type="number" name="phone" placeholder="Phone Number" value="${account.phone}">
                                        </c:when>
                                        <c:otherwise>
                                            <input id = "phone" class="mb-0" type="number" name="phone" placeholder="Phone Number">
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="col-12 mb-20">
                                    <label for="password">Password</label>
                                    <c:choose>
                                        <c:when test="${account != null}">
                                            <input id = "password" class="mb-0" type="password" name="password" placeholder="Password" value="${account.password}">
                                        </c:when>
                                        <c:otherwise>
                                            <input id = "password" class="mb-0" type="password" name="password" placeholder="Password">
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="col-md-8">
                                    <div class="check-box d-inline-block ml-0 ml-md-2 mt-10">
                                        <input type="checkbox" id="remember_me" name="remember" value="remember">
                                        <label for="remember_me">Remember me</label>
                                    </div>
                                </div>
                                <div class="col-md-4 mt-10 mb-20 text-left text-md-right">
                                    <a href="<%= request.getContextPath()%>/forget_password" style="color: rgb(68, 16, 16)"> Forgotten password?</a>
                                </div>
                                <div class="col-md-12">
                                    <button class="register-button mt-0" type="submit">Login</button>
                                </div>
                                <div class="col-12 mb-20" style="margin-top: 20px;text-align: center;">
                                    <p>Haven't account ? <a href="<%=request.getContextPath()%>/register" style="color: rgb(68, 16, 16)">Click here to register</a> </p>
       
                                </div>
                            </div>
                        </div>
						</form>
					</div>
					<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
						<img
							src="https://th.bing.com/th/id/R.bd0ae77ed54d28e1050b62d62fc63bb2?rik=ERKTZm4joFtQAA&riu=http%3a%2f%2fgaminggearskh.com%2fContent%2fUpload%2fSlideShow%2fd30f8465-897e-4cb6-b818-70a3b1bfa5ce.jpg&ehk=vd93yYXM1NFm9q08HlQFtMLeuKloUD%2fB6htWfMswedw%3d&risl=&pid=ImgRaw&r=0"
							alt="img" width="110%" height="500px" style="margin-top: 20px;">
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="footer.jsp" />
	</div>
	<jsp:include page="register-notification.jsp" />
	<jsp:include page="script.jsp" />
</body>
</html>