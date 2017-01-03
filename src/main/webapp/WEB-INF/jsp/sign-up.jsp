<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 1/2/17
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <script src="<c:url value="/resources/bootstrap-3.3.7/dist/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <link href="<c:url value="/resources/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>" rel="stylesheet">

</head>
<body style="direction: rtl">
<jsp:include page="header-menu.jsp"/>
<div id="body">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="well well-sm">
                    <form:form class="form-horizontal" action="success" method="post">
                        <fieldset>
                            <legend class="text-center"><spring:message code="sign.up.page.title"/></legend>

                            <!-- First Name input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="first-name"><spring:message code="sign.up.first.name"/> </label>
                                <div class="col-md-9">
                                    <input id="first-name" name="first-name" type="text" placeholder="<spring:message code="sign.up.first.name"/>" class="form-control">
                                </div>
                            </div>
                            <!-- Last Name input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="last-name"><spring:message code="sign.up.last.name"/> </label>
                                <div class="col-md-9">
                                    <input id="last-name" name="last-name" type="text" placeholder="<spring:message code="sign.up.last.name"/>" class="form-control">
                                </div>
                            </div>
                            <!-- UserName input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="username"><spring:message code="sign.up.username"/> </label>
                                <div class="col-md-9">
                                    <input id="username" name="username" type="text" placeholder="<spring:message code="sign.up.username"/>" class="form-control">
                                </div>
                            </div>

                            <!-- Password input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="password"><spring:message code="sign.up.password"/> </label>
                                <div class="col-md-9">
                                    <input id="password" name="password" type="password" placeholder="<spring:message code="sign.up.password"/>" class="form-control">
                                </div>
                            </div>
                            <!-- Retype Password input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="re-password"><spring:message code="sign.up.retype.password"/> </label>
                                <div class="col-md-9">
                                    <input id="re-password" name="re-password" type="password" placeholder="<spring:message code="sign.up.retype.password"/>" class="form-control">
                                    <div class="registrationFormAlert" id="divCheckPasswordMatch"></div>
                                </div>
                            </div>


                            <!-- Form actions -->
                            <div class="form-group">
                                <div class="col-md-12 text-left">
                                    <button type="submit" class="btn btn-primary btn-lg"><spring:message code="sign.up.register"/> </button>
                                </div>
                            </div>
                        </fieldset>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
