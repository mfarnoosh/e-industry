<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 12/12/16
  Time: 10:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
    <title>Search</title>
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <script src="<c:url value="/resources/bootstrap-3.3.7/dist/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="<c:url value="/resources/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">


</head>
<body>
<header>
    <div class="header">
        <div class="col-md-3 ">
            <form:form class="navbar-form" role="search" method="get" action="search" commandName="home">
                <div class="input-group add-on">
                    <input type="text" class="form-control" placeholder="Search" name="srch" id="srch-term" onkeydown="if (event.keyCode == 13) window.location = 'search';">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </form:form>
        </div>
        <input type="button" class="btn btn-default login" value="Login">
    </div>
</header>
<%--Search Reasult--%>
<c:if test="${not empty shj}">
    <c:forEach var="count" items="${shj}">
        <p>${count.serviceName}</p>
        <p>${count.id}</p>
    </c:forEach>
</c:if>
<c:if test="${empty shj}">
    <p>Found Nothing</p>
</c:if>
<%--Sidebar--%>
<div class="container" style="direction: rtl">
    <div class="row">
        <div class="col-sm-3 col-md-3 sidebar-first">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                <span class="glyphicon glyphicon-folder-close"></span>Services
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-grain text-primary"></span>
                                        <a href="http://www.jquery2dotnet.com">Wallpaper</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span>
                                        <a href="http://www.jquery2dotnet.com">Painting</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
