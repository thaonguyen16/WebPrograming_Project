<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Paddlefoot</title>
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
        <h1 class="text-logo" style="font-size: 5vw;">Downloads</h1>
        <h2 class="text-logo" style="font-size: 3vw;">Paddlefoot - The First CD</h2>
        <table class="container-table" style="margin-top:100px;width: 100%;border: 0px;margin-bottom: 50px">
            <tr style="background: #11101d;height:50px;color:white;border:0px;">
                <th style="border: 0px;">Song title</th>
                <th style="border: 0px;">Audio Format</th>
                <th style="border: 0px;">Listen</th>
                <th style="border: 0px;">Download</th>
            </tr>
            <tr style="background: white;height:50px;">
                <td>64 Corvair</td>
                <td>MP3</td>
                <td><a href="../musicStore/sound/${productCode}/corvair.mp3" style="text-decoration: none;">Listen</a></td>
                <td>
                    <a href="../musicStore/sound/${productCode}/corvair.mp3" style="text-decoration: none;" download>Download</a>
                </td>
            </tr>
            <tr style="background: white;height:50px;">
                <td>Whiskey Before Breakfast</td>
                <td>MP3</td>
                <td><a href="../musicStore/sound/${productCode}/whiskey.mp3" style="text-decoration: none;">Listen</a></td>
                <td>
                    <a href="../musicStore/sound/${productCode}/whiskey.mp3" style="text-decoration: none;" download>Download</a>
                </td>
            </tr>

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
        <a class="button1" href="${pageContext.request.contextPath}/MusicStoreApp/download?action=viewCookies" style=" margin-top: 20px;
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
    background: linear-gradient(135deg, #11101d, #11101d);">View all cookies</a>
    </div>
</section>
<jsp:include page="script.jsp" />
</body>
</html>
