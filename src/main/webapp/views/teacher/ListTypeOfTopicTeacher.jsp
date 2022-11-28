<!--
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>List type of topic </title>
    <!-- Favicon-->
    <%--    <!-- <link rel="icon" type="image/x-icon" href="<c:url value="assets/favicon.ico"/>"/> -->--%>
    <%--    <!-- Bootstrap icons-->--%>
    <%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>--%>
    <!-- Core theme CSS (includes Bootstrap)-->
</head>
<body>
<!-- Section-->
<section class="py-5" style="padding-top: 0px!important;">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="notification-container-add"><a class="nav-link" href="<c:url value="/teacher-edit-TypeOfTopic"/>">
            <img src="${pageContext.request.contextPath}/views/user/homePage/assets/add.png" width="24" height="24"
                 alt="add anotificate">
        </a></div>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="section-header">
                <h4>
                    Danh sách loại đề tài
                </h4>
            </div>
            <div class="section-table">
                <form action="<c:url value="/list-projects"/>" method="get" id="ListTypeOfTopicSubmit">
                    <table class="table demo footable-loaded footable listProject_section-table listProject_section-table--padding"
                           data-page-size="5">
                        <thead>
                        <tr>
                            <th data="true">STT</th>
                            <th>Loại đề tài</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:if test="${countModel>0}">
                            <c:forEach var="index" begin="0" end="${countModel-1}">
                                <c:forEach var="item" items="${model}" begin="${index}" end="${index}">
                                    <tr class=" listProject_section-table--hover">
                                        <td style="width: 10%">${index+1}</td>
                                        <td>
                                            <a href="<c:url value="/teacher-list-projects?id=${item.id}"/>">${item.name}</a>
                                        </td>
                                        <td style="width: 8%;">
                                            <form action="<c:url value="/teacher-home"/>" method="post"
                                                  style="margin: 4px;">
                                                <input type="hidden" name="action" value="" class="edit-input">
                                                <input type="hidden" name="id" value="${item.id}" class="edit-input-id">
                                                <button class="btn btn-primary btn-sm edit-button" type="submit">
                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                </button>
                                            </form>
                                            <form action="<c:url value="/teacher-list-type-of-topic"/>" method="post"
                                                  style="margin: 4px;">
                                                <input type="hidden" name="action" value="deleteTypeOfTopic"
                                                       class="delete-input}">
                                                <input type="hidden" name="id" value="${item.id}"
                                                       class="delete-input-id">
                                                <button class="btn btn-primary btn-sm" id="delete-button" type="submit">
                                                    <i class="fa-solid fa-trash"></i>
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:forEach>
                        </c:if>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="5"></td>
                        </tr>
                        </tfoot>
                    </table>
                </form>
            </div>
        </div>
    </div>
    </div>
</section>
</body>
</html>
