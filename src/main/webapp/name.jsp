<%--
  Created by IntelliJ IDEA.
  User: matthewbrozusky
  Date: 12/11/18
  Time: 9:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Enter your first name!</h1>

<form action="/name" method="POST">
    <label for="name">
        <input type="text" id="name" name="name"/>
    </label>
    <button type="submit">Submit</button>
</form>

</body>
</html>
