<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 11/17/2022
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta http–equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>SQL Gateway App</title>
  <link rel="icon" type="image/x-icon" href="../assets/MusicStoreApp/music.png">
  <link rel="stylesheet" href="../assets/MusicStoreApp/home.css">
  <link rel="stylesheet" href="../assets/MusicStoreApp/survey.css">
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />

  <style>
    table {
      border: 1px solid black;
      border-collapse: collapse;
      width: 100%;
    }
    th, td {
      border: 1px solid black;
      text-align: left;
      padding: .5em;
    }
    .right {
      text-align: right;
    }
  </style>
</head>

<body>

<jsp:include page="sidebar.jsp" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sqlStatement == null}">
  <c:set var="sqlStatement" value="select * from User" />
</c:if>

<section class="home-section">
  <div class="div_survey">
    <div class="container">
      <div class="title">The SQL Gateway</div>
      <br>
      <p>Enter an SQL statement and click the Execute button.</p>
      <p><b>SQL statement:</b></p>

      <form action="${pageContext.request.contextPath}/MusicStoreApp/Sql_gateway" method="post">
        <textarea name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
        <div class="button">
          <input type="submit" value="Execute">
        </div>
      </form>

      <p><b>SQL result:</b></p>

${sqlResult}

    </div>
  </div>
</section>

<jsp:include page="script.jsp" />

</body>
</html>
