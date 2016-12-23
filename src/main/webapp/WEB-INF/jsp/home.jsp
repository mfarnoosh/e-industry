<%@ page import="jdk.nashorn.internal.runtime.Context" %>
<%@ page import="org.springframework.web.context.support.HttpRequestHandlerServlet" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 12/3/16
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
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
</div>
<%--footer--%>
<jsp:include page="footer.jsp"/>
</body>
</html>
