<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Home</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="<c:url value="assets/favicon.ico"/>"/>
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <%--    <link rel="stylesheet" href="css/styles.css">--%>
    <%--    <link rel="stylesheet" href="css/taile.css">--%>
    <link href="<c:url value="css/styles.css"/>" rel="stylesheet"/>
    <link rel="stylesheet" href="<c:url value="css/taile.css"/>">
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
                    <a class="nav-link active" aria-current="page" href="#!"><img
                            src="http://dkdt.fit.hcmute.edu.vn/Content/public/images/house-icon.png" width="24"
                            height="24">Trang chủ</a></li>
                <li class="nav-item padding"><a class="nav-link" href="#!"><img
                        src="http://dkdt.fit.hcmute.edu.vn/Content/public/images/online-icon.png" width="24"
                        height="24">Chúng tôi</a></li>
                <li class="nav-item padding "><a class="nav-link" href="#!"><img
                        src="http://dkdt.fit.hcmute.edu.vn/Content/public/images/chart-icon.png" width="24" height="24">Thống
                    kê</a></li>
                <li class="nav-item dropdown padding">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
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
<header class="bg-dark py-5 backgroundCover">
    <div class="container px-4 px-lg-5 my-5 ">
        <div class="text-center text-white">
        </div>
    </div>
</header>
<!-- Section-->
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="section-header">
                <h4>
                    Thông báo
                </h4>
            </div>
            <div class="section-table">
                <table class="table table-striped" style="width:100%">
                    <thead>
                    </thead>
                    <tbody>
                    <tr>
                        <a class="table-anchor" href="/Home/TinTuGiaoVu?id=9">
                            <li class="article-area">
                                <p>
                                        <span class="btn btn-primary btn-sm">
                                            30/11/2020 10:15:04
                                        </span>
                                    Thông báo đăng ký chuyên ngành khóa 2018
                                </p>
                            </li>
                        </a>
                    </tr>
                    <tr>
                        <a class="table-anchor" href="/Home/TinTuGiaoVu?id=9">
                            <li class="article-area">
                                <p>
                                        <span class="btn btn-primary btn-sm">
                                            30/11/2020 10:15:04
                                        </span>
                                    Thông báo đăng ký chuyên ngành khóa 2018
                                </p>
                            </li>
                        </a>
                    </tr>
                    <tr>
                        <a class="table-anchor" href="/Home/TinTuGiaoVu?id=9">
                            <li class="article-area">
                                <p>
                                        <span class="btn btn-primary btn-sm">
                                            30/11/2020 10:15:04
                                        </span>
                                    Thông báo đăng ký chuyên ngành khóa 2018
                                </p>
                            </li>
                        </a>
                    </tr>
                    <tr>
                        <a class="table-anchor" href="/Home/TinTuGiaoVu?id=9">
                            <li class="article-area">
                                <p>
                                        <span class="btn btn-primary btn-sm">
                                            30/11/2020 10:15:04
                                        </span>
                                    Thông báo đăng ký chuyên ngành khóa 2018
                                </p>
                            </li>
                        </a>
                    </tr>
                    </tbody>
                    <tfoot>
                    <tr>

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
