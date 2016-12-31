<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 12/31/16
  Time: 9:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add product</title>
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
                            <legend class="text-center"><spring:message code="form.product.title"/></legend>

                            <!-- Service Name input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="name"><spring:message code="form.product.productTitle"/> </label>
                                <div class="col-md-9">
                                    <input id="name" name="name" type="text" placeholder="<spring:message code="form.product.productTitle"/>" class="form-control">
                                </div>
                            </div>

                            <!-- Profession input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="product-sku"><spring:message code="form.product.SKU"/> </label>
                                <div class="col-md-9">
                                    <input id="product-sku" name="product-sku" type="text" placeholder="<spring:message code="form.product.SKU"/>" class="form-control">
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
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
