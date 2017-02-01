<%@ page pageEncoding="UTF-8" %>
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
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <script src="<c:url value="/resources/bootstrap-3.3.7/dist/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <link href="<c:url value="/resources/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>" rel="stylesheet">

</head>
<body style="direction: rtl">
<jsp:include page="header.jsp"/>

<div class="container">
    <%--Sidebar--%>
    <div class="row">
        <div class="col-sm-3 col-md-3 sidebar-first">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                <span class="glyphicon glyphicon-folder-close"></span>
                                <spring:message code="menu.works" text="works"/>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <c:if test="${not empty shj}">
                                <c:forEach var="count" items="${shj}">
                                    <table class="table">
                                        <tr>
                                            <td>
                                                <span class="glyphicon glyphicon-grain text-primary"></span>
                                                <a href="http://www.jquery2dotnet.com">${count.profession}</a>
                                            </td>
                                        </tr>
                                        <%--<tr>
                                            <td>
                                                <span class="glyphicon glyphicon-pencil text-primary"></span>
                                                <a href="http://www.jquery2dotnet.com">Painting</a>
                                            </td>
                                        </tr>--%>
                                    </table>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--Search Reasult--%>
        <div class="col-md-8 col-sm-8 search-result">
            <c:if test="${not empty shj}">
                <c:forEach var="count" items="${shj}">
                    <table class="table">
                        <tr>
                            <th>
                                <p>${count.serviceName}</p>
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <p>${count.profession}</p>
                            </td>
                        </tr>
                    </table>
                </c:forEach>
            </c:if>
            <c:if test="${empty shj}">
                <p>Found Nothing</p>
            </c:if>
        </div>
    </div>
</div>



</body>
</html>
