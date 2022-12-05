<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../../../assets/chapter07/ex1/styles/main.css" type="text/css"/>
</head>
<body>

<h1>Downloads</h1>

<h2>Joe Rut - Genuine Wood Grained Finish</h2>
    
<table>
<tr>
    <th>Song title</th>
    <th>Audio Format</th>
</tr>
<tr>
    <td>Filter</td>
    <td><a href="../../../musicStore/sound/${productCode}/filter.mp3">MP3</a></td>
</tr>
<tr>
    <td>So Long Lazy Ray</td>
    <td><a href="../../../musicStore/sound/${productCode}/so_long.mp3">MP3</a></td>
</tr>
</table>

<p><a href="${pageContext.request.contextPath}/Chapter07/Ex1/ch07_ex1_download?action=viewAlbums">View list of albums</a></p>

<p><a href="${pageContext.request.contextPath}/Chapter07/Ex1/ch07_ex1_download?action=viewCookies">View all cookies</a></p>

</body>
</html>