<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 11/17/2022
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin App</title>
  <meta http–equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="../assets/MusicStoreApp/home.css">
  <link rel="stylesheet" href="../assets/MusicStoreApp/download.css">
  <link rel="icon" href="../assets/MusicStoreApp/music.png">
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

  <style>
    .button1:hover {
      /* transform: scale(0.99); */
      background: linear-gradient(-135deg, white, white);
      color: #11101d;
      border: 1px solid #11101d;
    }
  </style>
</head>
<body>
<jsp:include page="sidebar.jsp" />
<section class="home-section">
  <div class="text">
    <h1 class="text-logo" style="font-size: 5vw;">Users</h1>

    <table class="container-table" style="margin-top:100px;width: 100%;border: 0px;margin-bottom: 50px">

      <tr style="background: #11101d;height:50px;color:white;border:0px;">
        <th style="border: 0px;">First Name</th>
        <th style="border: 0px;">Last Name</th>
        <th style="border: 0px;" colspan="3">Email</th>
      </tr>

      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <c:forEach var="user" items="${users}">
        <tr style="background: white;height:50px;">
          <td>${user.firstName}</td>
          <td>${user.lastName}</td>
          <td>${user.email}</td>
          <td><a href="${pageContext.request.contextPath}/MusicStoreApp/admin?action=display_user&amp;email=${user.email}" style="text-decoration: none; color: black;">Update</a></td>
          <td><a href="${pageContext.request.contextPath}/MusicStoreApp/admin?action=delete_user&amp;email=${user.email}" style="text-decoration: none; color: black;">Delete</a></td>
        </tr>
      </c:forEach>

    </table>
    <p class="button1"><a href="${pageContext.request.contextPath}/MusicStoreApp/admin" style="text-decoration:none">Refresh</a></p>
  </div>
</section>
<jsp:include page="script.jsp" />
</body>
</html>
