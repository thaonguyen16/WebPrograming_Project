<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${loginStatusTrue == 'true'}">
	<div class="notification" id="notice">
		<div class="icon">
			<svg class="animated-check" viewBox="0 0 24 24"> 
			<path d="M4.1 12.7L9 17.6 20.3 6.3" fill="none" /> 
		</svg>
		</div>
		<p>Login Successfully</p>
	</div>
</c:if>

<c:if test="${loginStatusTrue == 'false'}">
	<div class="notification" id="notice">
		<div class="icon-error">
			<i class="fas fa-times faa-ring animated fa-5x"></i>
		</div>
		<p>Login Failure</p>
	</div>
</c:if>