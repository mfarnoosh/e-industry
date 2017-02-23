<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 2/23/17
  Time: 12:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>user complete information</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <script src="<c:url value="/resources/bootstrap-3.3.7/dist/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <link href="<c:url value="/resources/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>
<body>
<form:form>
    <div class="form-inline">
        <div class="form-group">
            <label for="seller">فروشنده</label>
            <input type="checkbox" id="seller">
        </div>
        <div class="form-group">
            <label for="customer">خریدار</label>
            <input type="checkbox" id="customer">
        </div>
        <div class="form-group">
            <label for="job">حرفه(خدمات)</label>
            <input type="checkbox" id="job">
        </div>
    </div>
    <%--<div class="form-inline">
        <div class="form-group">
            <label for="username-owner">نام حساب کاربری (صاحب)</label>
            <input id="username-owner" type="text">
        </div>
    </div>--%>
</form:form>

</body>
</html>
