<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Cart App</title>
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
            <h1 class="text-logo" style="font-size: 5vw;">CD list</h1>
            <table class="container-table" style="margin-top:100px;width: 100%;border: 0px;margin-bottom: 50px">
                <tr style="background: #11101d;height:50px;color:white;border:0px;">
                    <th style="border: 0px;">Description</th>
                    <th style="border: 0px;">Price</th>
                    <th style="border: 0px;">Add Cart</th>
                </tr>

                <%@ taglib uri="/WEB-INF/chapter10/ex2/murachM.tld" prefix="mma" %>
                <mma:products>
                <tr style="background: white;height:50px;">
                    <td>${description}</td>
                    <td>${price}</td>
                    <td>
                        <form action="${pageContext.request.contextPath}/MusicStoreApp/cart" method="post">
                            <input type="hidden" name="productCode" value="${code}">
                            <input type="submit" value="Add To Cart" style="
    height: 50px;
    margin: 20px;
    width: 100px;
    padding: 10px;
    border-radius: 5px;
    border: none;
    color: #fff;
    font-size: 13px;
    text-decoration: none;
    font-weight: 500;
    letter-spacing: 1px;
    cursor: pointer;
    transition: all 0.3s ease;
    background: linear-gradient(135deg, #11101d, #11101d);">
                        </form>
                    </td>
                </tr>
                </mma:products>
            </table>
        </div>
    </section>
    <jsp:include page="script.jsp" />
</body>
</html>