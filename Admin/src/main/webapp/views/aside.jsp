<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<aside class="left-sidebar sidebar-dark" id="left-sidebar">
	<div id="sidebar" class="sidebar sidebar-with-footer">
		<!-- Aplication Brand -->
		<div class="app-brand">
			<a href="<%= request.getContextPath()%>/dashboard"> <img src="<%= request.getContextPath()%>/assets/images/rose_icon.gif" style="border-radius: 50%" alt="Rose Black" width="50px" height="50px">
				<span class="brand-name">Rose Black</span>
			</a>
		</div>
		<!-- begin sidebar scrollbar -->
		<div class="sidebar-left" data-simplebar style="height: 100%;">
			<!-- sidebar menu -->
			<ul class="nav sidebar-inner" id="sidebar-menu">
				<li><a class="sidenav-item-link"
					href="<%= request.getContextPath()%>/dashboard"> <i class="mdi mdi-briefcase-account-outline"></i>
						<span class="nav-text">Dashboard</span>
				</a></li>
				
				<li class="section-title">Manage Product</li>
				<li><a class="sidenav-item-link" href="<%= request.getContextPath()%>/category"> <i
						class="mdi mdi-sitemap"></i> <span class="nav-text">Category</span>
				</a></li>
				<li><a class="sidenav-item-link" href="<%= request.getContextPath()%>/product"> <i
						class="mdi mdi-laptop"></i> <span class="nav-text">Product</span>
				</a></li>
				
				<li class="section-title">Manage Invoice</li>
				<li><a class="sidenav-item-link" href="<%= request.getContextPath()%>/order"> <i
						class="mdi mdi-sitemap"></i> <span class="nav-text">Order</span>
				</a></li>
				
				<li class="section-title">Manage Account</li>
				<li><a class="sidenav-item-link" href="<%= request.getContextPath()%>/account"> <i
						class="mdi mdi-sitemap"></i> <span class="nav-text">Account</span>
				</a></li>
				
				
			</ul>
		</div>
		<div class="sidebar-footer">
			<div class="sidebar-footer-content">
				<ul class="d-flex">
					<li><a href="user-account-settings.html" data-toggle="tooltip"
						title="Profile settings"><i class="mdi mdi-settings"></i></a></li>
					<li><a href="#" data-toggle="tooltip" title="No chat messages"><i
							class="mdi mdi-chat-processing"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
</aside>