<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="partials/head.jsp">
    <jsp:param name="page" value="login"/>
</jsp:include>
<body>

<div class="container text-center">
    <section class="row">
        <div class="col-sm-6 offset-sm-3">
            <h1>WELCOME TO THE TEST PAGE</h1>
        </div>

    </section>

    <form action="/login">
        <button type="submit" class="btn btn-success px-5">Login</button>
    </form>

</div>


<%@include file="partials/scripts.html"%>
</body>
</html>
