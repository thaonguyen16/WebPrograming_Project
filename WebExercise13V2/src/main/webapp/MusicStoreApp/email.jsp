<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/28/2022
  Time: 12:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="UTF-8">
  <title>Email App</title>
  <meta http–equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="../assets/MusicStoreApp/home.css">
  <link rel="stylesheet" href="../assets/MusicStoreApp/email.css">
  <link rel="icon" href="../assets/MusicStoreApp/music.png">
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
</head>

<body>
<jsp:include page="sidebar.jsp" />

<section class="home-section">
  <div class="container">
    <div class="wrapper">
      <div class="title"><span>Join our email list</span></div>
      <p style="color:red;font-style:italic"><i>${message}</i></p>
      <form action="${pageContext.request.contextPath}/MusicStoreApp/email" method="post">
        <p style="padding:0;margin:0">Note: To join our email list, enter your name and email address below.</p>
        <br>

        <input type="hidden" name="action" value="add">
        <div class="row">
          <i class="fas fa-envelope"></i>
          <input type="email" name="email" value="${user.email}"
                 required placeholder="Email">
        </div>
        <div class="row">
          <i class="fas fa-signature"></i>
          <input type="text" name="firstName" value="${user.firstName}" placeholder="First Name"
                 required>
        </div>
        <div class="row">
          <i class="fas fa-book"></i>
          <input type="text" name="lastName" value="${user.lastName}" placeholder="Last Name"
                 required>
        </div>

        <div class="row button">
          <input type="submit" value="Join Now">
        </div>
      </form>
    </div>
  </div>
</section>


<jsp:include page="script.jsp" />
</body>

</html>
