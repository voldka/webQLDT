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
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="section-header">
                <h4>
                    Thông tin của giảng viên
                </h4>
            </div>
                <div class="section-table">
                    <form action="<c:url value="teacher-thongtingv"/> " method="post">
                    <table class="table demo footable-loaded footable listProject_section-table listProject_section-table--padding"
                           data-page-size="5">
                        <thead>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Họ và tên:</td>
                            <td><input type="text" class="form-control"  name="fullname"
                                       value="${model.fullname}"/></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Mã số:</td>
                            <td><input type="text" class="form-control" name="code"
                                       value="${model.code}"/></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Ngày sinh:</td>
                            <td><input type="text" class="form-control" name="birthday"
                                       value="${model.birthday}"/></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Chuyên ngành:</td>
                            <td><input type="text" class="form-control" name="major"
                                       value="${model.major}"/></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Học vị:</td>
                            <td><input type="text" class="form-control" name="bgeducate"
                                       value="${model.bgeducate}"/></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>Địa chỉ:</td>
                            <td><input type="text" class="form-control" name="locate"
                                       value="${model.locate}"/></td>
                        </tr>
                        <tr class="thongtingv">
                            <td>SĐT:</td>
                            <td><input type="text" class="form-control" name="numberphone"
                                       value="${model.numberphone}"/></td>
                        </tr>
                        </tbody>
                        <tfoot>

                        </tfoot>
                    </table>
                    <div style="text-align: center;">
                        <input type="text" hidden="" name="action" value="editProUser">
                        <button type="submit">submit</button>
                    </div>
                    </form>
                </div>

        </div>
    </div>
    </div>
</section>
<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Khoa Công nghệ Thông tin - Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</p>
        <p class="m-0 text-center text-white">Số 1, Võ Văn Ngân, Thủ Đức, TP. Hồ Chí Minh</p>
    </div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="<c:url value="../user/homePage/js/scripts.js"/>"></script>
</body>
</html>