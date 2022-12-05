<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/28/2022
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">
  <meta http–equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Survey App</title>
  <link rel="icon" type="image/x-icon" href="../assets/MusicStoreApp/music.png">
  <link rel="stylesheet" href="../assets/MusicStoreApp/home.css">
  <link rel="stylesheet" href="../assets/MusicStoreApp/survey.css">
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
</head>

<body>
<jsp:include page="sidebar.jsp" />
<section class="home-section">
  <div class="div_survey">
    <div class="container">
      <div class="title">Survey</div>
      <br>
      <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
      <div class="content">
        <form action="${pageContext.request.contextPath}/MusicStoreApp/survey" method="post">
          <div class="user-details">
            <div class="input-box">
              <span class="details">First Name</span>
              <input type="text" placeholder="Enter your first name" name="firstName" required>
            </div>
            <div class="input-box">
              <span class="details">Last Name</span>
              <input type="text" placeholder="Enter your last name" name="lastName" required>
            </div>
            <div class="input-box">
              <span class="details">Email</span>
              <input type="text" placeholder="Enter your email" name="email" required>
            </div>
            <div class="input-box">
              <p>Please contact me by:
                <select name="contactVia" style="width:100%;height:45px;border-radius: 5px;border: 1px solid #ccc;transition: all 0.3s ease;border: 1px solid #ccc;margin-top:5px">
                  <option value="Both" selected>Email or postal mail</option>
                  <option value="Email">Email only</option>
                  <option value="Postal Mail">Postal mail only</option>
                </select>
              </p>
            </div>

          </div>
          <div class="gender-details">
            <input type="radio" name="heardFrom" id="dot-1" value="Search Engine" checked>
            <input type="radio" name="heardFrom" id="dot-2" value="Friend">
            <input type="radio" name="heardFrom" id="dot-3" value="Other">
            <span class="gender-title">How did you hear about us?</span>
            <div class="category">
              <label for="dot-1">
                <span class="dot one"></span>
                <span class="gender">Search Engine</span>
              </label>
              <label for="dot-2">
                <span class="dot two"></span>
                <span class="gender">Friend</span>
              </label>
              <label for="dot-3">
                <span class="dot three"></span>
                <span class="gender">Other</span>
              </label>
            </div>
          </div>
          <div class="gender-details">
            <input type="checkbox" name="wantsUpdates" id="dot-4" checked>
            <span class="gender-title">Would you like to receive announcements about new CDs and special offers?</span>
            <div class="category">
              <label for="dot-4">
                <span class="dot four"></span>
                <span class="yes">YES, I'd like that.</span>
              </label>
            </div>
          </div>
          <div class="button">
            <input type="submit" value="Submit">
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<jsp:include page="script.jsp" />
</body>
</html>