<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 2/18/17
  Time: 4:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Category List</title>
</head>
<body>
<%--<jsp:include page="new-category.jsp"/>--%>
<div class="actions" dir="rtl">
    <div class="col-md-3 pull-right" >
        <button id="myBtn" class="btn btn-primary"><i class="glyphicon glyphicon-plus-sign"></i>ایجاد دسته</button>
        <!-- Trigger/Open The Modal -->
        <%--<button  class="btn btn-primary">افزودن دسته</button>--%>
    </div>
    <!-- The Modal -->
</div>
<div id="myModal" class="modal">
    <!-- Modal content -->
    <div class="modal-content">
        <span class="close">&times;</span>
        <jsp:include page="new-category.jsp"/>
    </div>
</div>

    <div class="table-responsive" dir="rtl">
        <table class="table table-hover">
            <thead>
            <tr>
                <%--<th><spring:message code="works.id"/> </th>
                <th><spring:message code="works.name"/> </th>
                <th><spring:message code="works.guild"/> </th>
                <th><spring:message code="works.comment"/> </th>--%>
                <th>شناسه </th>
                <th>عنوان دسته</th>
                <th>والد</th>
                <th>ویرایش</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${categories}" var="categoryI">
                <tr>
                    <td>${categoryI.id}</td>
                    <td>${categoryI.categoryName}</td>
                    <td>${categoryI.parentId}</td>
                        <%--<td>${categoryI.createDate}</td>
                        <td>${work.owner.ssoId}</td>--%>
                    <td><a href="<c:url value="edit-work-${work.id}"/>"class="btn btn-success custom-width"><spring:message code="site.edit"/> </a> </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
