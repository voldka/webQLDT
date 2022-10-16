<!-- <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Home </title>
    <!-- Favicon-->
    <!-- <link rel="icon" type="image/x-icon" href="<c:url value="assets/favicon.ico"/>"/> -->
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <!-- Core theme CSS (includes Bootstrap)-->

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/taile.css">

    <link href=${pageContext.request.contextPath}/views/user/homePage/css/styles.css rel="stylesheet" type="text/css" />
    <link href=${pageContext.request.contextPath}/views/user/homePage/css/taile.css rel="stylesheet" type="text/css" />

</head>
<body>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light padding-0">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand padding" style="padding: 10px 22px 10px 22px" href="#!">UTE</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span
                class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item padding">
                    <a class="nav-link" aria-current="page" href="#!"><img
                            src="http://dkdt.fit.hcmute.edu.vn/Content/public/images/house-icon.png" width="24"
                            height="24">Trang chủ</a></li>
                <li class="nav-item padding"><a class="nav-link" href="#!"><img
                        src="http://dkdt.fit.hcmute.edu.vn/Content/public/images/online-icon.png" width="24"
                        height="24">Chúng tôi</a></li>
                <li class="nav-item padding "><a class="nav-link" href="#!"><img
                        src="http://dkdt.fit.hcmute.edu.vn/Content/public/images/chart-icon.png" width="24" height="24">Thống
                    kê</a></li>
                <li class="nav-item dropdown padding">
                    <a class="nav-link dropdown-toggle active" id="navbarDropdown" href="#" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">Thông tin thêm</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!"><img
                                src="http://dkdt.fit.hcmute.edu.vn/Content/public/images/Teacher-icon.png" width="24"
                                height="24">Thông tin giảng viên</a></li>
                        <li>
                            <hr class="dropdown-divider"/>
                        </li>
                        <li><a class="dropdown-item" href="#!"><img
                                src="http://dkdt.fit.hcmute.edu.vn/Content/public/images/Student-3-icon.png" width="24"
                                height="24">Thông tin sinh viên</a></li>
                        <li>
                            <hr class="dropdown-divider"/>
                        </li>
                        <li><a class="dropdown-item" href="#!"><img
                                src="http://dkdt.fit.hcmute.edu.vn/Content/public/images/Actions-view-calendar-list-icon.png"
                                width="24" height="24">Danh sách đề tài</a></li>
                    </ul>
                </li>
            </ul>
            <form class="d-flex">
                <button class="btn btn-outline-dark" type="submit">
                    <i class="bi bi-box-arrow-in-right"></i>
                    Đăng nhập
                    <i class="bi bi-file-person"></i>
                </button>
            </form>
        </div>
    </div>
</nav>
<!-- Header-->
<header class="img-header">
    <div class="bg-dark py-5 backgroundCover">
        <div class="container px-4 px-lg-5 my-5 ">
            <div class="text-center text-white">
            </div>
        </div>
    </div>
</header>
<!-- Section-->
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="section-header">
                <h4>
                    Danh sách đề tài
                </h4>
            </div>
            <div class="section-table">
                <table class="table demo footable-loaded footable listProject_section-table listProject_section-table--padding" data-page-size="5">
                    <thead>
                    <tr>
                        <th data="true">STT</th>
                        <th>Loại đề tài</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="listProject_section-table--hover">
                        <td>1</td>
                        <td>
                            <a href="/Home/DanhSachDeTai?id=1"> Tiểu luận chuyên ngành | K14 (2014 - 2019) | Học kỳ 1 (2017-2018)</a>
                        </td>
                    </tr>
                    <tr class="listProject_section-table--hover">
                        <td>2</td>
                        <td>
                            <a href="/Home/DanhSachDeTai?id=3"> Đề tài tốt nghiệp | K14 (2014 - 2019) | Học kỳ 2 (2017-2018)</a>
                        </td>
                    </tr>
                    <tr class="listProject_section-table--hover">
                        <td>3</td>
                        <td>
                            <a href="/Home/DanhSachDeTai?id=4"> Tiểu luận chuyên ngành | K17 (2017 - 2022) | Học kỳ 1 (2020-2021)</a>
                        </td>
                    </tr>
                    <tr class="listProject_section-table--hover">
                        <td>4</td>
                        <td>
                            <a href="/Home/DanhSachDeTai?id=8"> Tiểu luận chuyên ngành | K19 (2019 - 2024) | Học kỳ 1 (2022-2023)</a>
                        </td>
                    </tr>

                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="5"></td>
                    </tr>
                    </tfoot>
                </table>
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
<script src="<c:url value="js/scripts.js"/>"></script>
</body>
</html>