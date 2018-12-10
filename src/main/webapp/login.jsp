<%--
  Created by IntelliJ IDEA.
  User: matthewbrozusky
  Date: 12/10/18
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<jsp:include page="partials/head.jsp">
    <jsp:param name="page" value="login"/>
</jsp:include>
<body>

<form action="" method="POST">
    <label for="username">Username
        <input id="username" name="username" type="text">
    </label>

    <label for="password">Password
        <input id="password" name="password" type="password">
    </label>

    <input type="submit" value="submit">
</form>

<%@include file="partials/scripts.html"%>
</body>
</html>
