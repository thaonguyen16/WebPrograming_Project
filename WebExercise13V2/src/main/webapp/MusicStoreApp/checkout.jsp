<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/28/2022
  Time: 12:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <title>Checkout App</title>
    <link rel="stylesheet" href="../assets/MusicStoreApp/home.css">
    <link rel="icon" type="image/x-icon" href="../assets/MusicStoreApp/music.png">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
<jsp:include page="sidebar.jsp" />
<section class="home-section">
    <div class="text">
        <img width="200px" src="https://www.freepngimg.com/thumb/cart/5-2-cart-png-image.png" alt="Logo">
        <p class="text-group">Checkout Successfully</p>
    </div>
</section>
<jsp:include page="script.jsp" />

</body>
</html>