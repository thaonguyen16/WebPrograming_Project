<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../../../assets/chapter09/ex1/styles/main.css" type="text/css"/>
</head>
<body>

<h1>List of albums</h1>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${cookie.firstNameCookie.value != null}">
    <p>Welcome back, <c:out value='${cookie.firstNameCookie.value}'/></p>
</c:if>

<p>
<a href="${pageContext.request.contextPath}/Chapter09/ch09_ex1_download?action=checkUser&amp;productCode=8601">
    86 (the band) - True Life Songs and Pictures
</a><br>

<a href="${pageContext.request.contextPath}/Chapter09/ch09_ex1_download?action=checkUser&amp;productCode=pf01">
    Paddlefoot - The First CD
</a><br>

<a href="${pageContext.request.contextPath}/Chapter09/ch09_ex1_download?action=checkUser&amp;productCode=pf02">
    Paddlefoot - The Second CD
</a><br>

<a href="${pageContext.request.contextPath}/Chapter09/ch09_ex1_download?action=checkUser&amp;productCode=jr01">
    Joe Rut - Genuine Wood Grained Finish
</a>
</p>

</body>
</html>