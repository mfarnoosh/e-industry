<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 1/4/17
  Time: 9:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Services</title>
</head>
<body>
<div class="actions">
    <div class="col-md-3 pull-right">
        <span class=""><a href="admin/new-product"><i class="glyphicon glyphicon-plus-sign"></i>افزودن محصول</a></span>
    </div>
</div>
<div class="table-responsive">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>product name</th>
            <th>product profession</th>
            <th>product comment</th>
            <th>operations</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>wallpaper</td>
            <td>wood</td>
            <td>comment coment comment</td>
            <td><a href="#">edit</a> </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
