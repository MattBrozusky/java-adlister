<%--
  Created by IntelliJ IDEA.
  User: matthewbrozusky
  Date: 12/11/18
  Time: 10:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Message</h1>

<c:choose>
    <c:when test='${setter.equals("1")}'>
        <div>Correct Guess!</div>
    </c:when>
    <c:when test='${setter.equals("2")}'>
        <div>Too Low!</div>
        <form action="/guess" method="GET">
            <button type="submit">Try Again</button>
        </form>
    </c:when>
    <c:otherwise>
        <div>Too High!</div>
        <form action="/guess" method="GET">
            <button type="submit">Try Again</button>
        </form>
    </c:otherwise>
</c:choose>




</body>
</html>
