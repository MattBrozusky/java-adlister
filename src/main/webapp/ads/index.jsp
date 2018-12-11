<%--
  Created by IntelliJ IDEA.
  User: matthewbrozusky
  Date: 12/11/18
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ads Listed</title>
</head>
<body>

    <c:choose>
        <c:when test="${adsList != null}">
            <c:forEach items="${adsList}" var="ad">
                <div>
                    <h1>Title: ${ad.title}</h1>
                    <p>${ad.description}</p>
                </div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <h1>No Ads to Display!</h1>
        </c:otherwise>
    </c:choose>


</body>
</html>
