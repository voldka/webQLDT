<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit</title>
</head>
<body>
<!-- Navigation-->
<!-- Section-->
<section class="py-5" style="padding-top: 0px!important;">
    <form id="formLogin" class="modal-content animate" action="<c:url value="/teacher-add-notificate"/>" method="post">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row g-3 align-items-center teacher-edit">
                <div class="form-group" style="text-align: center;">
                    <label class="col-sm-3 control-label no-padding-right">title</label>
                    <div class="col-sm-9" style="margin: auto;">
                        <input required="" type="text" class="form-control" id="title" name="title" value="${model.title}"/>
                    </div>
                </div>
                <div class="form-group" style="text-align: center;">
                    <label class="col-sm-3 control-label no-padding-right">content</label>
                    <div class="col-sm-9" style="margin: auto;">
                        <input  required="" type="text" class="form-control" id="content" name="content" value="${model.content}"/>
                    </div>
                </div>
            </div>
            <br>
            <div class="row g-3 align-items-center teacher-edit">
                <c:if test="${not empty model.id}">
                    <input type="text" hidden="" name="action" value="editNotification">
                    <button type="submit" style="width: fit-content;">chỉnh sửa bài viết</button>
                </c:if>
                <c:if test="${empty model.id}">
                    <input type="text" hidden="" name="action" value="addNotification">
                    <button type="submit" style="width: fit-content;">thêm bài viết</button>
                </c:if>
            </div>
        </div>

    </form>
</section>
<!-- Footer-->

</body>