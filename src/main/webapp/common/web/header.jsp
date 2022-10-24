<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light padding-0">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand padding" style="padding: 10px 22px 10px 22px" href="#!">UTE</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span
                class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item padding">
                    <a class="nav-link active" aria-current="page" href="<c:url value="/trang-chu"/>"><img
                            src="${pageContext.request.contextPath}/views/user/homePage/assets/house-icon.png" width="24"
                            height="24">Trang chủ</a></li>
                <li class="nav-item padding"><a class="nav-link" href="#!"><img
                        src="${pageContext.request.contextPath}/views/user/homePage/assets/online-icon.png" width="24"
                        height="24">Chúng tôi</a></li>
                <li class="nav-item padding "><a class="nav-link" href="#!"><img
                        src="${pageContext.request.contextPath}/views/user/homePage/assets/chart-icon.png" width="24" height="24">Thống
                    kê</a></li>
                <li class="nav-item dropdown padding">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">Thông tin thêm</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!"><img
                                src="${pageContext.request.contextPath}/views/user/homePage/assets/Teacher-icon.png" width="24"
                                height="24">Thông tin giảng viên</a></li>
                        <li>
                            <hr class="dropdown-divider"/>
                        </li>
                        <li><a class="dropdown-item" href="#!"><img
                                src="${pageContext.request.contextPath}/views/user/homePage/assets/Student-3-icon.png" width="24"
                                height="24">Thông tin sinh viên</a></li>
                        <li>
                            <hr class="dropdown-divider"/>
                        </li>
                        <li><a class="dropdown-item" href="<c:url value="/list-type-of-topic"/>"><img
                                src="${pageContext.request.contextPath}/views/user/homePage/assets/Actions-view-calendar-list-icon.png"
                                width="24" height="24">Danh sách đề tài</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown padding" style="left: 10px;">
                    <div class="input-group">
                        <input class="form-control" type="text" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search">
                        <button class="btn btn-primary" id="button-search" type="button">Go!</button>
                    </div>
                </li>
            </ul>
            <form class="d-flex" action="#">
                <button type="button" class="btn btn-outline-dark" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                    <i class="bi bi-box-arrow-in-right"></i>
                    Đăng nhập
                    <i class="bi bi-file-person"></i>
                </button>
            </form>
            <div id="id01" class="modal">
                <form class="modal-content animate" action="/action_page.php" method="post" style="max-width: 50%;">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                    </div>
                    <div class="container">
                        <label for="uname"><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="uname" required>

                        <label for="psw"><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="psw" required>

                        <button type="submit">Login</button>
                        <label>
                            <input type="checkbox" checked="checked" name="remember"> Remember me
                        </label>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                        <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>
                </form>
            </div>
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