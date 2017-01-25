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
    <script src="<c:url value="/resources/bootstrap-tagsinput.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/jasny-bootstrap/js/jasny-bootstrap.min.js"/>" type="text/javascript"></script>
    <link href="<c:url value="/resources/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/bootstrap-tagsinput.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/jasny-bootstrap/css/jasny-bootstrap.min.css"/>" rel="stylesheet">
</head>
<body style="direction: rtl">
<jsp:include page="header-menu.jsp"/>
<div class="work-form">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="well well-sm">
                    <%--enctype="multipart/form-data"--%>
                    <form:form class="form-horizontal" method="post" commandName="mwork">
                        <fieldset>
                            <legend class="text-center"><spring:message code="form.servive.title"/></legend>
                            <form:input path="id" id="id" type="hidden"/>
                            <!-- work Name input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="name"><spring:message code="form.work.serviceTitle"/> </label>
                                <div class="col-md-9">
                                    <form:input path="serviceName" id="name" name="name" type="text" class="form-control"/>
                                </div>
                            </div>

                            <!-- Profession input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="profession"><spring:message code="form.work.guild"/> </label>
                                <div class="col-md-9">
                                    <form:input path="profession" id="profession" name="profession" type="text" class="form-control"/>
                                </div>
                            </div>
                            <!-- State input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="state"><spring:message code="form.work.state"/> </label>
                                <div class="col-md-9">
                                    <form:input path="state" id="state" name="state" type="text" class="form-control"/>
                                </div>
                            </div>
                            <!--File Input-->
                            <%--<div class="form-group">
                                <label class="col-md-3 control-label" for="fileinput"><spring:message code="form.image"/> </label>
                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <div id="fileinput" class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;"></div>
                                    <div>
                                        <span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span><input type="file" name="..."></span>
                                        <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                    </div>
                                </div>
                            </div>--%>
                            <!-- Tags -->
                            <%--<div class="form-group">
                                <label class="col-md-3 control-label" for="tags">tags</label>
                                <div class="col-md-9">
                                    <form:input path="keywords" class="form-control" type="text" value="Amsterdam,Washington,Sydney,Beijing,Cairo"
                                           data-role="tagsinput" id="tags" name="tags"/>
                                </div>
                            </div>--%>
                            <!-- Message body -->
                            <%--<div class="form-group">
                                <label class="col-md-3 control-label" for="message"><spring:message code="form.comment"/> </label>
                                <div class="col-md-9">
                                    <form:textarea path="message" class="form-control" id="message" name="message" rows="5"/>
                                </div>
                            </div>--%>


                            <!-- Form actions -->
                            <div class="form-group">
                                <div class="col-md-12 text-right">
                                    <input class="btn btn-primary btn-lg" onclick="document.forms[0].submit();" value="<spring:message code="form.submit"/>">
                                </div>
                            </div>
                        </fieldset>
                    </form:form>
                    <%--<input type="button"  value=" " id="myButton" />--%>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
