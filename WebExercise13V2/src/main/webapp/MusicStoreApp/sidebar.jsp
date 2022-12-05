<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/28/2022
  Time: 12:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxs-music icon'></i>
        <div class="logo_name">MusicStore</div>
        <i class='bx bx-menu' id="btn"></i>
    </div>
    <ul class="nav-list">
        <li>
            <i class='bx bx-search'></i>
            <input type="text" placeholder="Search...">
            <span class="tooltip">Search</span>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/MusicStoreApp">
                <i class='bx bx-grid-alt'></i>
                <span class="links_name">Home</span>
            </a>
            <span class="tooltip">Home</span>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/MusicStoreApp/email">
                <i class='bx bxs-envelope'></i>
                <span class="links_name">Email</span>
            </a>
            <span class="tooltip">Email</span>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/MusicStoreApp/survey">
                <i class='bx bx-book-bookmark'></i>
                <span class="links_name">Survey</span>
            </a>
            <span class="tooltip">Survey</span>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/MusicStoreApp/download">
                <i class='bx bxs-cloud-download'></i>
                <span class="links_name">Download</span>
            </a>
            <span class="tooltip">Download</span>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/MusicStoreApp/product">
                <i class='bx bx-cart-alt'></i>
                <span class="links_name">Cart</span>
            </a>
            <span class="tooltip">Cart</span>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/MusicStoreApp/admin">
                <i class='bx bxs-user-circle'></i>
                <span class="links_name">Admin</span>
            </a>
            <span class="tooltip">Admin</span>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/MusicStoreApp/Sql_gateway">
                <i class='bx bx-task'></i>
                <span class="links_name">SqlGateway</span>
            </a>
            <span class="tooltip">SqlGateway</span>
        </li>
    </ul>
</div>