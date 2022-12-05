<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../../../assets/chapter13/ex2/styles/main.css" type="text/css"/>
</head>
<body>
    <h1>Update User</h1>
    <p>NOTE: You can't update the email address.</p>
    <form action="${pageContext.request.contextPath}/Chapter13/Ex2/ch13_ex2_userAdmin" method="post">
        <input type="hidden" name="action" value="update_user">        
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}" 
               required readonly><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}" 
               required><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"  
               required><br>        
        <label>&nbsp;</label>
        <input type="submit" value="Update" class="margin_left">
    </form>
</body>
</html>