<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.example.i18n.text" />
<%--<%@ page session="false"%>--%>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 12/3/16
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<!DOCTYPE html>
<html lang="${language}" style="direction: rtl">
<head>

    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <script src="<c:url value="/resources/bootstrap-3.3.7/dist/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <link href="<c:url value="/resources/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>

<%--Header and Menu--%>
<jsp:include page="header-menu.jsp"/>

<%--content container--%>
<div class="container">
    <%-- Start Carousel--%>
    <jsp:include page="carousel.jsp"/>
        <!-- End Carousel -->
        <%-- Product and service Items--%>
            <div class="container-fluid table" align="center">
                <c:forEach var="mitem" items="${myservice}">
                    <div class="row info-panel">
                        <img src="/edustry/resources/img/brush.jpg" class="item-image col-md-2">
                        <div align="left" class="col-md-10 info-panel-inner">
                            <dl class="dl-horizontal small">
                                    <%--<dt><c:out value="${vars.serviceName}"/></dt>--%>
                                <dt><spring:message code="item.service.profession"/> </dt>
                                <dd>
                                        ${mitem.profession}
                                </dd>
                                <dt><spring:message code="item.service.nameservice"/></dt>
                                <dd>
                                    ${mitem.serviceName}
                                </dd>
                            </dl>
                        </div>
                    </div>
                </c:forEach>
            </div>
        <%--</c:forEach>--%>
</div>
<%--footer--%>
<jsp:include page="footer.jsp"/>
</body>
</html>
