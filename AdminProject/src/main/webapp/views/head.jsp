<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/14/2022
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>${title}</title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700|Roboto" rel="stylesheet">
    <link href="<%= request.getContextPath() %>/assets/plugins/material/css/materialdesignicons.min.css" rel="stylesheet" />
    <link href="<%= request.getContextPath() %>/assets/plugins/simplebar/simplebar.css" rel="stylesheet" />

    <!-- PLUGINS CSS STYLE -->
    <link href="<%= request.getContextPath() %>/assets/plugins/nprogress/nprogress.css" rel="stylesheet" />
    <link href="<%= request.getContextPath() %>/assets/plugins/DataTables/DataTables-1.10.18/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="<%= request.getContextPath() %>/assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" />
    <link href="<%= request.getContextPath() %>/assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" />
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <link href="<%= request.getContextPath() %>/assets/plugins/toaster/toastr.min.css" rel="stylesheet" />
    <link id="main-css-href" rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/style.css" />
    <link href="<%= request.getContextPath() %>/assets/images/favicon.png" rel="shortcut icon" />
    <script src="<%= request.getContextPath() %>/assets/plugins/nprogress/nprogress.js"></script>

</head>
