<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/14/2022
  Time: 9:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<aside class="left-sidebar sidebar-dark" id="left-sidebar">
  <div id="sidebar" class="sidebar sidebar-with-footer">
    <!-- Aplication Brand -->
    <div class="app-brand">
      <a href="${pageContext.request.contextPath}/Admin_Dashboard">
        <img src="<%= request.getContextPath() %>/assets/images/rose_icon.gif" alt="Rose Black" width="50" height="50" style="border-radius:50%">
        <span class="brand-name">ROSEBLACK</span>
      </a>
    </div>
    <!-- begin sidebar scrollbar -->
    <div class="sidebar-left" data-simplebar style="height: 100%;">
      <!-- sidebar menu -->
      <ul class="nav sidebar-inner" id="sidebar-menu">
        <li class="active">
          <a class="sidenav-item-link" href="${pageContext.request.contextPath}/Admin_Dashboard">
            <i class="mdi mdi-briefcase-account-outline"></i>
            <span class="nav-text">Dashboard</span>
          </a>
        </li>

        <li class="section-title">
          Apps
        </li>
        <li>
          <a class="sidenav-item-link" href="${pageContext.request.contextPath}/Admin_Chat">
            <i class="mdi mdi-wechat"></i>
            <span class="nav-text">Chat</span>
          </a>
        </li>
        <li>
          <a class="sidenav-item-link" href="${pageContext.request.contextPath}/Admin_Contact">
            <i class="mdi mdi-phone"></i>
            <span class="nav-text">Contacts</span>
          </a>
        </li>
        <li>
          <a class="sidenav-item-link" href="${pageContext.request.contextPath}/Admin_Team">
            <i class="mdi mdi-account-group"></i>
            <span class="nav-text">Team</span>
          </a>
        </li>
        <li>
          <a class="sidenav-item-link" href="${pageContext.request.contextPath}/Admin_Calendar">
            <i class="mdi mdi-calendar-check"></i>
            <span class="nav-text">Calendar</span>
          </a>
        </li>
        <li class="has-sub">
          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#email"
             aria-expanded="false" aria-controls="email">
            <i class="mdi mdi-email"></i>
            <span class="nav-text">email</span> <b class="caret"></b>
          </a>
          <ul class="collapse" id="email" data-parent="#sidebar-menu">
            <div class="sub-menu">
              <li>
                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/Admin_Email_Inbox">
                  <span class="nav-text">Email Inbox</span>
                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/Admin_Email_Details">
                  <span class="nav-text">Email Details</span>
                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/Admin_Email_Compose">
                  <span class="nav-text">Email Compose</span>
                </a>
              </li>
            </div>
          </ul>
        </li>
        <li class="section-title">
          Manage Pages
        </li>
        <li>
          <a class="sidenav-item-link" href="#">
            <i class="mdi mdi-newspaper"></i>
            <span class="nav-text">Blog</span>
          </a>
        </li>
        <li>
          <a class="sidenav-item-link" href="#">
            <i class="mdi mdi-book"></i>
            <span class="nav-text">Guide Customer</span>
          </a>
        </li>
        <li class="section-title">
          Manage Product
        </li>
        <li>
          <a class="sidenav-item-link" href="${pageContext.request.contextPath}/Admin_ManageProduct_Category">
            <i class="mdi mdi-sitemap"></i>
            <span class="nav-text">Category</span>
          </a>
        </li>
        <li>
          <a class="sidenav-item-link" href="${pageContext.request.contextPath}/Admin_ManageProduct_Product">
            <i class="mdi mdi-laptop"></i>
            <span class="nav-text">Product</span>
          </a>
        </li>
        <li class="section-title">
          Pages
        </li>
        <li class="has-sub">
          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#users"
             aria-expanded="false" aria-controls="users">
            <i class="mdi mdi-image-filter-none"></i>
            <span class="nav-text">User</span> <b class="caret"></b>
          </a>
          <ul class="collapse" id="users" data-parent="#sidebar-menu">
            <div class="sub-menu">
              <li>
                <a class="sidenav-item-link" href="user-profile.html">
                  <span class="nav-text">User Profile</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="user-activities.html">
                  <span class="nav-text">User Activities</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="user-profile-settings.html">
                  <span class="nav-text">User Profile Settings</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="user-account-settings.html">
                  <span class="nav-text">User Account Settings</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="user-planing-settings.html">
                  <span class="nav-text">User Planing Settings</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="user-billing.html">
                  <span class="nav-text">User billing</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="user-notify-settings.html">
                  <span class="nav-text">User Notify Settings</span>
                </a>
              </li>
            </div>
          </ul>
        </li>
        <li class="has-sub">
          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse"
             data-target="#authentication" aria-expanded="false" aria-controls="authentication">
            <i class="mdi mdi-account"></i>
            <span class="nav-text">Authentication</span> <b class="caret"></b>
          </a>
          <ul class="collapse" id="authentication" data-parent="#sidebar-menu">
            <div class="sub-menu">
              <li>
                <a class="sidenav-item-link" href="sign-in.html">
                  <span class="nav-text">Sign In</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="sign-up.html">
                  <span class="nav-text">Sign Up</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="reset-password.html">
                  <span class="nav-text">Reset Password</span>

                </a>
              </li>
            </div>
          </ul>
        </li>
        <li class="has-sub">
          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#other-page"
             aria-expanded="false" aria-controls="other-page">
            <i class="mdi mdi-file-multiple"></i>
            <span class="nav-text">Other pages</span> <b class="caret"></b>
          </a>
          <ul class="collapse" id="other-page" data-parent="#sidebar-menu">
            <div class="sub-menu">
              <li>
                <a class="sidenav-item-link" href="invoice.html">
                  <span class="nav-text">Invoice</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="404.html">
                  <span class="nav-text">404 page</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="page-comingsoon.html">
                  <span class="nav-text">Coming Soon</span>

                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="page-maintenance.html">
                  <span class="nav-text">Maintenance</span>
                </a>
              </li>
            </div>
          </ul>
        </li>
        <li class="section-title">
          Documentation
        </li>
        <li>
          <a class="sidenav-item-link" href="getting-started.html">
            <i class="mdi mdi-airplane"></i>
            <span class="nav-text">Getting Started</span>
          </a>
        </li>
        <li class="has-sub">
          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#customization"
             aria-expanded="false" aria-controls="customization">
            <i class="mdi mdi-square-edit-outline"></i>
            <span class="nav-text">Customization</span> <b class="caret"></b>
          </a>
          <ul class="collapse" id="customization" data-parent="#sidebar-menu">
            <div class="sub-menu">
              <li>
                <a class="sidenav-item-link" href="navbar-customization.html">
                  <span class="nav-text">Navbar</span>
                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="sidebar-customization.html">
                  <span class="nav-text">Sidebar</span>
                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="styling.html">
                  <span class="nav-text">Styling</span>
                </a>
              </li>
            </div>
          </ul>
        </li>
      </ul>
    </div>
    <div class="sidebar-footer">
      <div class="sidebar-footer-content">
        <ul class="d-flex">
          <li>
            <a href="${pageContext.request.contextPath}/Admin_User_Account_Setting" data-toggle="tooltip" title="Profile settings"><i
                    class="mdi mdi-settings"></i></a></li>
          <li>
            <a href="#" data-toggle="tooltip" title="No chat messages"><i class="mdi mdi-chat-processing"></i></a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</aside>
