<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="main-header" id="header">
	<nav class="navbar navbar-expand-lg navbar-light" id="navbar">
		<!-- Sidebar toggle button -->
		<button id="sidebar-toggler" class="sidebar-toggle">
			<span class="sr-only">Toggle navigation</span>
		</button>
		<span class="page-title">${page_title}</span>

		<div class="navbar-right ">
			<!-- search form -->
			<div class="search-form">
				<form action="index.html" method="get">
					<div class="input-group input-group-sm" id="input-group-search">
						<input type="text" autocomplete="off" name="query"
							id="search-input" class="form-control" placeholder="Search..." />
						<div class="input-group-append">
							<button class="btn" type="button">/</button>
						</div>
					</div>
				</form>
			</div>
			<ul>
			<li class="dropdown user-menu">
				<button class="dropdown-toggle nav-link" data-toggle="dropdown">
					<img src="${account.getImageURL() }"
						class="user-image rounded-circle" alt="User Image" width="50px" height="50px" style="border-radius:50%;"/> <span
						class="d-none d-lg-inline-block">${account.getUsername()}</span>
				</button>
				<ul class="dropdown-menu dropdown-menu-right">
					<li><a class="dropdown-link-item" href="<%= request.getContextPath()%>/profile">
							<i class="mdi mdi-account-outline"></i> <span class="nav-text">My
								Profile</span>
					</a></li>

					<li class="dropdown-footer">
						<a class="dropdown-link-item"
						href="<%= request.getContextPath()%>/logout"> <i class="mdi mdi-logout"></i> Log Out
					</a></li>
				</ul>
			</li>
			</ul>
		</div>
	</nav>
</header>