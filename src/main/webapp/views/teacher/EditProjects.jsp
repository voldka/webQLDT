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
    <form id="formLogin" class="modal-content animate" action="<c:url value="/teacher-edit-projects?typeId=${typeId}"/>" method="post">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row g-3 align-items-center teacher-edit">
                <div class="form-group" style="text-align: center;">
                    <label class="col-sm-3 control-label no-padding-right">name topic</label>
                    <div class="col-sm-9" style="margin: auto;">
                        <input  required="" type="text" class="form-control"  name="name" value="${name}"/>
                    </div>
                </div>
            </div>
            <div class="row g-3 align-items-center teacher-edit">
                <div class="form-group" style="text-align: center;">
                    <label class="col-sm-3 control-label no-padding-right">target</label>
                    <div class="col-sm-9" style="margin: auto;">
                        <input  required="" type="text" class="form-control" name="target" value="${target}"/>
                    </div>
                </div>
            </div>
            <div class="row g-3 align-items-center teacher-edit">
                <div class="form-group" style="text-align: center;">
                    <label class="col-sm-3 control-label no-padding-right">status</label>
                    <div class="col-sm-9" style="margin: auto;">
                        <input  required="" type="text" class="form-control"  name="status" value="${status}"/>
                    </div>
                </div>
            </div>
            <br>
            <div class="row g-3 align-items-center teacher-edit">
                <c:if test="${not empty model.id}">
                    <input type="text" hidden="" name="action" value="editTypeOfTopic">
                    <button type="submit" style="width: fit-content;">chỉnh sửa</button>
                </c:if>
                <c:if test="${empty model.id}">
                    <input type="text" hidden="" name="action" value="addproject">
                    <button type="submit" style="width: fit-content;">thêm</button>
                </c:if>
            </div>
        </div>

    </form>
</section>
<!-- Footer-->

</body>