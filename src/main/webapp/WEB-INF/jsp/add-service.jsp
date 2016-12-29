<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
</head>
<body style="direction: rtl">
<jsp:include page="header-menu.jsp"/>
<div class="service-form">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="well well-sm">
                    <form class="form-horizontal" action="" method="post">
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

                            <!-- Message body -->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="message"><spring:message code="form.contact.message"/> </label>
                                <div class="col-md-9">
                                    <textarea class="form-control" id="message" name="message" placeholder="<spring:message code="form.contact.text.area.message"/> " rows="5"></textarea>
                                </div>
                            </div>

                            <!-- Form actions -->
                            <div class="form-group">
                                <div class="col-md-12 text-right">
                                    <button type="submit" class="btn btn-primary btn-lg"><spring:message code="site.submit"/> </button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
