<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 12/29/16
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <script src="<c:url value="/resources/bootstrap-3.3.7/dist/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <link href="<c:url value="/resources/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>" rel="stylesheet">
</head>
<body style="direction: rtl">
<jsp:include page="header-menu.jsp"/>
<div class="service-form">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="well well-sm">
                    <form:form class="form-horizontal" action="saved" method="post"
                          modelAttribute="uploadForm" enctype="multipart/form-data">
                        <fieldset>
                            <legend class="text-center"><spring:message code="form.servive.title"/></legend>

                            <!-- Service Name input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="name"><spring:message code="form.service.serviceTitle"/> </label>
                                <div class="col-md-9">
                                    <input id="name" name="name" type="text" placeholder="<spring:message code="form.service.serviceTitle"/>" class="form-control">
                                </div>
                            </div>

                            <!-- Profession input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="profession"><spring:message code="form.service.guild"/> </label>
                                <div class="col-md-9">
                                    <input id="profession" name="profession" type="text" placeholder="<spring:message code="form.service.guild"/>" class="form-control">
                                </div>
                            </div>
                            <!-- State input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="state"><spring:message code="form.service.state"/> </label>
                                <div class="col-md-9">
                                    <input id="state" name="state" type="text" placeholder="<spring:message code="form.service.state"/>" class="form-control">
                                </div>
                            </div>
                            <!--File Input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="imageFile"><spring:message code="form.image"/> </label>
                                <div class="col-md-9">
                                    <input id="imageFile" name="File[0]" type="file" placeholder="<spring:message code="form.image"/>" class="form-control">
                                </div>
                            </div>

                            <!-- Message body -->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="message"><spring:message code="form.comment"/> </label>
                                <div class="col-md-9">
                                    <textarea class="form-control" id="message" name="message" placeholder="<spring:message code="form.comment"/> " rows="5"></textarea>
                                </div>
                            </div>

                            <!-- Form actions -->
                            <div class="form-group">
                                <div class="col-md-12 text-right">
                                    <button type="submit" class="btn btn-primary btn-lg"><spring:message code="form.submit"/> </button>
                                </div>
                            </div>
                        </fieldset>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
