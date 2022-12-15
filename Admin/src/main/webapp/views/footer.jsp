<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<footer class="footer mt-auto">
	<div class="copyright bg-white">
		<p> &copy; 
			<span id="copy-year"> </span> 
			Copyright Mono Dashboard Bootstrap Template
		</p>
	</div>
	<script>
          var d = new Date();
          var year = d.getFullYear();
          document.getElementById("copy-year").innerHTML = year;
    </script>
</footer>