<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <meta http–equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../../../assets/chapter09/ex1/styles/main.css" type="text/css"/>
</head>
<body>

<h1>Cookies</h1>

<p>Here's a table with all the cookies that this
browser is sending to the current server.</p>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
  <tr>
    <th>Name</th>
    <th>Value</th>
  </tr>
  <c:forEach var="c" items="${cookie}">      
  <tr>
    <td><c:out value='${c.value.name}'/></td>
    <td><c:out value='${c.value.value}'/></td>
  </tr>
  </c:forEach>  
</table>

<p><a href="${pageContext.request.contextPath}/Chapter09/ch09_ex1_download?action=viewAlbums">View list of albums</a></p>

<p><a href="${pageContext.request.contextPath}/Chapter09/ch09_ex1_download?action=deleteCookies">Delete all persistent cookies</a></p>

</body>
</html>