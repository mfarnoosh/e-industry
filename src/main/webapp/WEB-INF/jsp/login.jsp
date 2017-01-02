<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 1/2/17
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body style="direction: rtl">
<jsp:include page="header-menu.jsp"/>
<div id="body">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="well well-sm">
                    <form class="form-horizontal" action="" method="post">
                        <fieldset>
                            <legend class="text-center"><spring:message code="login.page.title"/></legend>

                            <!-- UserName or Email input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="username"><spring:message code="login.username.or.email"/> </label>
                                <div class="col-md-9">
                                    <input id="username" name="username" type="text" placeholder="<spring:message code="login.username.or.email"/>" class="form-control">
                                </div>
                            </div>

                            <!-- Email input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="password"><spring:message code="login.password"/> </label>
                                <div class="col-md-9">
                                    <input id="password" name="password" type="password" placeholder="<spring:message code="login.password"/>" class="form-control">
                                </div>
                            </div>


                            <!-- Form actions -->
                            <div class="form-group">
                                <div class="col-md-12 text-right">
                                    <button type="submit" class="btn btn-primary btn-lg"><spring:message code="login.enter.button"/> </button>
                                    <input type="button" onclick="location.href='signup'"  class="btn btn-primary btn-lg" value="<spring:message code="login.I.want.to.create.an.account"/>"/>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
