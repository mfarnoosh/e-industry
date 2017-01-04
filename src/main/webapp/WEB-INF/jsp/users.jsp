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
        <span class=""><a href="admin/new-user"><i class="glyphicon glyphicon-plus-sign"></i>افزودن کاربر</a></span>
    </div>
</div>
<div class="table-responsive">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>First name</th>
            <th>Last name</th>
            <th>username</th>
            <th>Role</th>
            <th>operations</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>admin</td>
            <td>admin</td>
            <td>admin</td>
            <td>admin</td>
            <td><a href="#">edit</a> </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
