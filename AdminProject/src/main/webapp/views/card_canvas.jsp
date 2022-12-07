<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/15/2022
  Time: 1:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card card-offcanvas" id="contact-off">
  <div class="card-header">
    <h2>Contacts</h2>
    <a href="#" class="btn btn-primary btn-pill px-4">Add New</a>
  </div>
  <div class="card-body">
    <div class="mb-4">
      <input type="text" class="form-control form-control-lg form-control-secondary rounded-0"
             placeholder="Search contacts...">
    </div>
    <div class="media media-sm">
      <div class="media-sm-wrapper">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <img src="<%= request.getContextPath() %>/assets/images/user/user-sm-01.jpg" alt="User Image">
          <span class="active bg-primary"></span>
        </a>
      </div>
      <div class="media-body">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <span class="title">Selena Wagner</span>
          <span class="discribe">Designer</span>
        </a>
      </div>
    </div>
    <div class="media media-sm">
      <div class="media-sm-wrapper">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <img src="<%= request.getContextPath() %>/assets/images/user/user-sm-02.jpg" alt="User Image">
          <span class="active bg-primary"></span>
        </a>
      </div>
      <div class="media-body">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <span class="title">Walter Reuter</span>
          <span>Developer</span>
        </a>
      </div>
    </div>
    <div class="media media-sm">
      <div class="media-sm-wrapper">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <img src="<%= request.getContextPath() %>/assets/images/user/user-sm-03.jpg" alt="User Image">
        </a>
      </div>
      <div class="media-body">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <span class="title">Larissa Gebhardt</span>
          <span>Cyber Punk</span>
        </a>
      </div>
    </div>
    <div class="media media-sm">
      <div class="media-sm-wrapper">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <img src="<%= request.getContextPath() %>/assets/images/user/user-sm-04.jpg" alt="User Image">
        </a>
      </div>
      <div class="media-body">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <span class="title">Albrecht Straub</span>
          <span>Photographer</span>
        </a>
      </div>
    </div>
    <div class="media media-sm">
      <div class="media-sm-wrapper">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <img src="<%= request.getContextPath() %>/assets/images/user/user-sm-05.jpg" alt="User Image">
          <span class="active bg-danger"></span>
        </a>
      </div>
      <div class="media-body">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <span class="title">Leopold Ebert</span>
          <span>Fashion Designer</span>
        </a>
      </div>
    </div>
    <div class="media media-sm">
      <div class="media-sm-wrapper">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <img src="<%= request.getContextPath() %>/assets/images/user/user-sm-06.jpg" alt="User Image">
          <span class="active bg-primary"></span>
        </a>
      </div>
      <div class="media-body">
        <a href="${pageContext.request.contextPath}/Admin_User_Profile">
          <span class="title">Selena Wagner</span>
          <span>Photographer</span>
        </a>
      </div>
    </div>
  </div>
</div>
