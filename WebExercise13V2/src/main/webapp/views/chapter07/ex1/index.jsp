<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <meta http–equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../../../assets/chapter07/ex1/styles/main.css" type="text/css"/>
</head>
<body>

<h1>List of albums</h1>

<p>User Email: ${cookie.userEmail.value}</p>

<p>
<a href="${pageContext.request.contextPath}/Chapter07/Ex1/ch07_ex1_download?action=checkUser&amp;productCode=8601">
    86 (the band) - True Life Songs and Pictures
</a><br>

<a href="${pageContext.request.contextPath}/Chapter07/Ex1/ch07_ex1_download?action=checkUser&amp;productCode=pf01">
    Paddlefoot - The First CD
</a><br>

<a href="${pageContext.request.contextPath}/Chapter07/Ex1/ch07_ex1_download?action=checkUser&amp;productCode=pf02">
    Paddlefoot - The Second CD
</a><br>

<a href="${pageContext.request.contextPath}/Chapter07/Ex1/ch07_ex1_download?action=checkUser&amp;productCode=jr01">
    Joe Rut - Genuine Wood Grained Finish
</a>
</p>

</body>
</html>