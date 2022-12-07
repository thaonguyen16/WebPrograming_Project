<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/14/2022
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<footer class="footer mt-auto">
	<div class="copyright bg-white">
		<p>
			&copy; <span id="copy-year"></span> Copyright Mono Dashboard
			Bootstrap Template by <a class="text-primary"
				href="" target="_blank">Abdus</a>.
		</p>
	</div>
	<script>
          var d = new Date();
          var year = d.getFullYear();
          document.getElementById("copy-year").innerHTML = year;

        </script>
</footer>
