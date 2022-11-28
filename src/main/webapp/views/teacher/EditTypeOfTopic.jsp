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
    <form id="formLogin" class="modal-content animate" action="<c:url value="/teacher-list-type-of-topic"/>"
          method="post">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row g-3 align-items-center teacher-edit">

                <div class="section-header">
                    <h4>
                        <c:if test="${not empty model.id}">
                            chỉnh sửa loại đề tài
                        </c:if>
                        <c:if test="${empty model.id}">
                            thêm loại đề tài
                        </c:if>
                    </h4>
                </div>
                <div class="section-table" style="margin-top: 0px">
                    <div class="form-group" style="text-align: center;">
                        <table class="table demo footable-loaded footable listProject_section-table listProject_section-table--padding">
                            <thead></thead>
                            <tbody>
                            <tr>
                                <td>name type</td>
                                <td>
                                    <input required="" type="text" class="form-control" id="content" name="name"
                                           value="${name}"/>
                                </td>
                            </tr>
                            </tbody>
                        </table>
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
                    <input type="text" hidden="" name="action" value="addTypeOfTopic">
                    <button type="submit" style="width: fit-content;">thêm</button>
                </c:if>
            </div>
        </div>

    </form>
</section>
<!-- Footer-->

</body>