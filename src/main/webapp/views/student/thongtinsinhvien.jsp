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
    <title>Trang giảng viên </title>
    <!-- Favicon-->
    <!-- <link rel="icon" type="image/x-icon" href="<c:url value="../user/homePage/assets/favicon.ico"/>"/> -->
    <!-- Bootstrap icons-->
    <!-- Core theme CSS (includes Bootstrap)-->

</head>
<body>
<!-- Section-->
<section class="py-5" style="padding-top: 0px!important;">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="notification-container-add"><a class="nav-link"
                                                   href="<c:url value="/student-thongtinsv?action=editTTSV"/>">
            <img src="${pageContext.request.contextPath}/views/user/homePage/assets/add.png" width="24" height="24"
                 alt="add anotificate">
        </a></div>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="section-header">
                <h4>
                    Thông tin của giảng viên
                </h4>
            </div>
            <div class="section-table">
                <table class="table demo footable-loaded footable listProject_section-table listProject_section-table--padding"
                       data-page-size="5">
                    <thead>
                    </thead>
                    <tbody>
                    <c:if test="${not empty model.code}">
                        <tr>
                            <td style="width: 15%">Họ và tên:</td>
                            <td>${model.fullname}</td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Mã số:</td>
                            <td>${model.code}</td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Ngày sinh:</td>
                            <td>${model.birthday}</td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Chuyên ngành:</td>
                            <td>${model.major}</td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Học vị:</td>
                            <td>${model.bgeducate}</td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Địa chỉ:</td>
                            <td>${model.locate}</td>
                        </tr>
                        <tr class="thongtingv">
                            <td>SĐT:</td>
                            <td>${model.numberphone}</td>
                        </tr>
                    </c:if>
                    <c:if test="${empty model.code}">
                        <tr>
                            <td style="width: 15%">Họ và tên:</td>
                            <td>${model.fullname}</td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Mã số:</td>
                            <td></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Ngày sinh:</td>
                            <td></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Chuyên ngành:</td>
                            <td></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Học vị:</td>
                            <td></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Địa chỉ:</td>
                            <td></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>SĐT:</td>
                            <td></td>
                        </tr>
                    </c:if>

                    </tbody>
                    <tfoot>

                    </tfoot>
                </table>
            </div>
        </div>
    </div>
    </div>
</section>
</body>
</html>