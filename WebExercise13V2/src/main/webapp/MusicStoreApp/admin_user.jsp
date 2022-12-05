<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 11/17/2022
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
      <div class="title"><span>Update User</span></div>
      <p style="color:red;font-style:italic"><i>NOTE: You can't update the email address.</i></p>

      <form action="${pageContext.request.contextPath}/MusicStoreApp/admin" method="post">
        <input type="hidden" name="action" value="update_user">

        <div class="row">
          <i class="fas fa-envelope"></i>
          <input type="email" name="email" value="${user.email}" required placeholder="Email" readonly>
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
          <input type="submit" value="Update">
        </div>
      </form>

    </div>
  </div>
</section>

<jsp:include page="script.jsp" />
</body>
</html>