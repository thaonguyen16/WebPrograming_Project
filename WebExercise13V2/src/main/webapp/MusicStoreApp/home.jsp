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
    <title>Music Store App</title>
    <link rel="stylesheet" href="../assets/MusicStoreApp/home.css">
    <link rel="icon" type="image/x-icon" href="../assets/MusicStoreApp/music.png">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
<jsp:include page="sidebar.jsp" />
<section class="home-section">
    <div class="text">
        <img width="200px" src="https://th.bing.com/th/id/R.dc0ee79e36910026bb0698417409e7d2?rik=u4b%2bIXAoKsVXEw&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f3%2fMusic-PNG-File.png&ehk=huDooGSGIt4hQSF0FExbGnYdgb0Eqf%2fVIFu7f7MqDns%3d&risl=&pid=ImgRaw&r=0" alt="Logo">
        <h1 class="text-logo">Music Store</h1>
        <p class="text-group">Group 13</p>
    </div>
</section>
<jsp:include page="script.jsp" />

</body>
</html>