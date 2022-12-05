<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Cookies</title>
    <meta http–equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../assets/MusicStoreApp/home.css">
    <link rel="stylesheet" href="../assets/MusicStoreApp/download.css">
    <link rel="icon" href="../assets/MusicStoreApp/music.png">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
</head>
<body>
<jsp:include page="sidebar.jsp" />
<section class="home-section">
    <div class="text">
        <h1 class="text-logo" style="font-size: 5vw;">Cookies</h1>
        <p class="text-logo" style="font-size: 2vw;">Here's a table with all the cookies that this
            browser is sending to the current server.</p>
        <table class="container-table" style="margin-top:100px;width: 100%;border: 0px;margin-bottom: 50px">
            <tr style="background: #11101d;height:50px;color:white;border:0px;">
                <th style="border: 0px;">Name</th>
                <th style="border: 0px;">Value</th>
            </tr>
            <c:forEach var="c" items="${cookie}">
                <tr style="background: white;height:50px;">
                    <td>${c.value.name}</td>
                    <td>${c.value.value}</td>
                </tr>
            </c:forEach>
        </table>
        <a class="button1" href="${pageContext.request.contextPath}/MusicStoreApp/download?action=viewAlbums" style=" margin-top: 20px;
    height: 100%;
    margin-top:20px;
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: none;
    color: #fff;
    font-size: 18px;
    text-decoration: none;
    font-weight: 500;
    letter-spacing: 1px;
    cursor: pointer;
    transition: all 0.3s ease;
    background: linear-gradient(135deg, #11101d, #11101d);">View list of albums</a>
        <a class="button1" href="${pageContext.request.contextPath}/MusicStoreApp/download?action=deleteCookies" style=" margin-top: 20px;
    height: 100%;
    margin-top:20px;
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: none;
    color: #fff;
    font-size: 18px;
    text-decoration: none;
    font-weight: 500;
    letter-spacing: 1px;
    cursor: pointer;
    transition: all 0.3s ease;
    background: linear-gradient(135deg, #11101d, #11101d);">Delete all cookies</a>
    </div>
</section>


<jsp:include page="script.jsp" />
</body>
</html>