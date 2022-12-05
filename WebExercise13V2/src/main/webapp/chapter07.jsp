<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 9/29/2022
  Time: 12:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400" rel="stylesheet">
  <link rel="stylesheet" href="./assets/chapter07.css">
</head>

<body>
  <a href="/Chapter07/Ex1/ch07_ex1_download" class="food-card" style="text-decoration: none;">
    <div class="food-card__image">
      <div style="background-image: linear-gradient( 69.7deg,  rgba(244,37,243,1) 1.4%, rgba(244,87,1,1) 36.2%, rgba(255,204,37,1) 72.2%, rgba(20,196,6,1) 113% ); width: 400px; height: 200px;">
      </div>
    </div>

    <div class="food-card__details">
      <div class="food-card__name">Ex1</div>
      <div class="food-card__desc">Use a cookies</div>
    </div>
  </a>

  <a href="/Chapter07/Ex2/ch07_ex2_download" class="food-card" style="text-decoration: none;">
    <div class="food-card__image">
      <div style="background-image: linear-gradient( 89.4deg,  rgba(194,0,39,1) 0.8%, rgba(10,35,104,1) 99.4% ); width: 400px; height: 200px;">
      </div>
    </div>

    <div class="food-card__details">
      <span class="food-card__name">Ex2</span>
      <span class="food-card__desc">Use a session attribute</span>
    </div>
  </a>

  <a href="/views/chapter07/ex3/index.jsp" class="food-card" style="text-decoration: none;">
    <div class="food-card__image">
      <div style="background-image: linear-gradient( 65.9deg,  rgba(85,228,224,1) 5.5%, rgba(75,68,224,0.74) 54.2%, rgba(64,198,238,1) 55.2%, rgba(177,36,224,1) 98.4% );; width: 400px; height: 200px;">
      </div>
    </div>

    <div class="food-card__details">
      <span class="food-card__name">Ex3</span>
      <span class="food-card__desc">Use URL Rewriting Instead of Hidden Fields</span>
    </div>
  </a>
</body>
</html>