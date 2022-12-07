<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/14/2022
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<jsp:include page="head.jsp" />
<body class="navbar-fixed sidebar-fixed" id="body">
<jsp:include page="script_header.jsp" />
<div id="toaster"></div>
<div class="wrapper">
  <jsp:include page="aside.jsp" />
  <div class="page-wrapper">
    <jsp:include page="header.jsp" />
    <div class="content-wrapper">
      <div class="content">
        <jsp:include page="top_statistic.jsp" />
        <jsp:include page="table_product.jsp" />
        <jsp:include page="stock_modal.jsp" />
      </div>
    </div>
    <jsp:include page="footer.jsp" />
  </div>
</div>
<jsp:include page="card_canvas.jsp" />
<jsp:include page="script_footer.jsp" />
</body>
</html>
