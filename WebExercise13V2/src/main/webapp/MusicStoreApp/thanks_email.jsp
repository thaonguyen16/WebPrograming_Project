<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/28/2022
  Time: 1:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="UTF-8">
  <meta http–equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Thanks Email App</title>
  <link rel="stylesheet" href="../assets/MusicStoreApp/home.css">
  <link rel="stylesheet" href="../assets/MusicStoreApp/email.css">
  <link rel="icon" type="image/png" href="../assets/MusicStoreApp/music.png" >
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
</head>

<body>
<jsp:include page="sidebar.jsp" />

<section class="home-section">
  <div class="container_1">
    <div class="wrapper">
      <div class="title"><span>Thanks for joining our email list</span></div>

      <p>Here is the information that you entered:</p>

      <table style="width: 100%;text-align:left">
        <tr>
          <th><label>Email:</label></th>
          <td><span>${user.email}</span><br></td>
        </tr>
        <tr>
          <th><label>First Name:</label></th>
          <td><span>${user.firstName}</span></td>
        </tr>
        <tr>
          <th><label>Last Name:</label></th>
          <td><span>${user.lastName}</span></td>
        </tr>
      </table>


      <p>To enter another email address, click on the Back
        button in your browser or the Return button shown
        below.</p>

      <form action="${pageContext.request.contextPath}/MusicStoreApp/email" method="post">
        <input type="hidden" name="action" value="join">
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
