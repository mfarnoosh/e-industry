<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
<html lang="${language}">
<head>

    <title>Home</title>

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
                <div class="row info-panel">
                    <img src="/edustry/resources/img/installing-wallpaper.jpg" class="col-md-2">
                    <div align="left" class="col-md-10 info-panel-inner">
                        <dl class="dl-horizontal small">
                            <%--<dt><c:out value="${vars.serviceName}"/></dt>--%>
                            <dt>Service Name</dt>
                            <dt></dt>
                            <dd>
                                <p>
                                    Installing Wallpaper.
                                    <c:out value="${vars.serviceName}"/>
                                        ${vars.serviceName}
                                </p>
                            </dd>
                            <dt>Company</dt>
                            <dd>Company Name</dd>
                        </dl>
                    </div>
                </div>
                <div class="row info-panel">
                    <img src="/edustry/resources/img/installing-wallpaper.jpg" class="col-md-2">
                    <div align="left" class="col-md-10">
                        <dl class="dl-horizontal small">
                                <%--<dt><c:out value="${vars.serviceName}"/></dt>--%>
                            <dt>Service Name</dt>
                            <dt></dt>
                            <dd>
                                <p>
                                    Installing Wallpaper.
                                        <%--<c:out value="${vars.serviceName}"/>--%>
                                        <%--${vars.serviceName}--%>
                                </p>
                            </dd>
                            <dt>Company</dt>
                            <dd>Company Name</dd>
                        </dl>
                    </div>
                </div>
            </div>
        <%--</c:forEach>--%>
</div>
<%--footer--%>
<jsp:include page="footer.jsp"/>
</body>
</html>
