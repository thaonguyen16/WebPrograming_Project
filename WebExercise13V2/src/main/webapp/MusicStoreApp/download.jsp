<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/28/2022
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <title>Download App</title>
    <link rel="icon" type="image/png" href="../assets/MusicStoreApp/music.png" >
    <link rel="stylesheet" href="../assets/MusicStoreApp/home.css">
    <link rel="stylesheet" href="../assets/MusicStoreApp/download.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.0.1/vue.min.js"></script>

</head>

<body>
<jsp:include page="sidebar.jsp" />

<section class="home-section-1">
    <div class="card-body">
        <h1 class="text-h1 container"> List of Albums</h1>
        <div id="app" class="container">
            <a href="download?action=checkUser&amp;productCode=8601">
                <card
                        data-image="https://i.discogs.com/AoFxM71rmGLVPv86OlTMPSlWbhqvz2fi53NRfJFq8go/rs:fit/g:sm/q:90/h:531/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc1NjEz/ODYtMTQ0NDA1ODgz/MS04OTkyLmpwZWc.jpeg">
                    <h1 slot="header">86 (the band)</h1>
                    <p slot="content">True Life Songs and Pictures</p>
                </card>
            </a>
            <a href="download?action=checkUser&amp;productCode=pf01">
                <card data-image="https://th.bing.com/th/id/OIP.kqBhK_NOblv2vjLGByA6sQAAAA?pid=ImgDet&rs=1">
                    <h1 slot="header">Paddlefoot</h1>
                    <p slot="content">The First CD</p>
                </card>
            </a>

            <a href="download?action=checkUser&amp;productCode=pf02">
                <card
                        data-image="https://th.bing.com/th/id/R.f4fbed145b955b7edefc60c728708794?rik=Wpiy0xbTgaZrkg&pid=ImgRaw&r=0">
                    <h1 slot="header">Paddlefoot</h1>
                    <p slot="content">The Second CD</p>
                </card>
            </a>

            <a href="download?action=checkUser&amp;productCode=jr01">
                <card
                        data-image="https://th.bing.com/th/id/R.9d4f4804a051ca6431b00bfeae18d06c?rik=b39CW2kqEkhqQA&pid=ImgRaw&r=0">
                    <h1 slot="header">Joe Rut</h1>
                    <p slot="content">Genuine Wood Grained Finish</p>
                </card>
            </a>

        </div>
    </div>
</section>
<jsp:include page="script.jsp" />

<script src="../assets/MusicStoreApp/download.js"></script>
</body>

</html>
