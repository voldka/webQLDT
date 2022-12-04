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
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="section-header">
                <h4>
                    <c:if test="${not empty model.id}">
                        chỉnh sửa topic
                    </c:if>
                    <c:if test="${empty model.id}">
                        thêm topic
                    </c:if>
                </h4>
            </div>
            <div class="section-table">
                <form id="formLogin" class="modal-content animate"
                      action="<c:url value="/teacher-edit-projects?typeId=${typeId}"/>"
                      method="post">
                    <table class="table demo footable-loaded footable listProject_section-table listProject_section-table--padding"
                           data-page-size="5">
                        <thead>
                        </thead>
                        <tbody>
                        <tr>
                            <td>name topic</td>
                            <td>
                                <input required="" type="text" class="form-control" name="name" value="${model.nameTopic}"/>
                            </td>
                        </tr>
                        <tr>
                            <td>status</td>
                            <td>
                                <input required="" type="text" class="form-control" name="status" value="${model.status}"/>

                            </td>
                        </tr>
                        <tr>
                            <td>target</td>
                            <td>
                                <input required="" type="text" class="form-control" name="target" value="${model.target}"/>
                            </td>
                        </tr>
                        <c:if test="${not empty model.id}">
                            <tr>
                                <td>point</td>
                                <td>
                                    <input required="" type="text" class="form-control" name="point" value="${model.rate}"/>
                                </td>
                            </tr>
                            <input type="hidden" name="id" value="${id}">
                        </c:if>
                        </tbody>
                        <tfoot>

                        </tfoot>
                    </table>
                    <div class="row g-3 align-items-center teacher-edit">
                        <c:if test="${not empty model.id}">
                            <input type="text" hidden="" name="action" value="editproject">
                            <button type="submit" style="width: fit-content;">chỉnh sửa</button>
                        </c:if>
                        <c:if test="${empty model.id}">
                            <input type="text" hidden="" name="action" value="addproject">
                            <button type="submit" style="width: fit-content;">thêm</button>
                        </c:if>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->

</body>