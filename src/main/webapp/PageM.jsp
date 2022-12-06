<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>page lab</title>
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<c:url value="asset/startbootstrap-shop-homepage-gh-pages/css/styles.css"/>" rel="stylesheet"/>
</head>
<body>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="display: none;">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="#!">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span
                class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">All Products</a></li>
                        <li>
                            <hr class="dropdown-divider"/>
                        </li>
                        <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                        <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                    </ul>
                </li>
            </ul>
            <form class="d-flex">
                <button class="btn btn-outline-dark" type="submit">
                    <i class="bi-cart-fill me-1"></i>
                    Cart
                    <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                </button>
            </form>
        </div>
    </div>
</nav>
<!-- Header-->
<header class="bg-dark py-5" style="height: 100vh;">
    <div class="container px-4 px-lg-5 my-5" style="height: 20%;">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">Lập trình web</h1>
            <p class="lead fw-normal text-white-50 mb-0">Nhóm 2</p>
        </div>
    </div>
    <div class="header-info">
        <div class="block">
            <div class="header-block">
                <img class="block-img"
                     src="asset/startbootstrap-shop-homepage-gh-pages/assets/143086968_2856368904622192_1959732218791162458_n.png"
                     alt="">
                <div class="block-info">
                    <h5>Trần tiến Đạt</h5>
                    <h6>20149058</h6>
                </div>
            </div>
        </div>
        <div class="block">
            <div class="header-block">
                <img class="block-img"
                     src="asset/startbootstrap-shop-homepage-gh-pages/assets/292608327_603689277766827_1144558430015732819_n.jpg"
                     alt="">
                <div class="block-info">
                    <h5>Nguyễn Duy Phương</h5>
                    <h6>20149058</h6>
                </div>
            </div>
        </div>
        <div class="block">
            <div class="header-block">
                <img class="block-img"
                     src="asset/startbootstrap-shop-homepage-gh-pages/assets/72299496_1017005285357747_3686984631954964480_n.jpg"
                     alt="">
                <div class="block-info">
                    <h5>Lê Minh Tài</h5>
                    <h6>20149058</h6>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Section-->
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
<%--            <div class="col mb-5">--%>
<%--                <div class="card h-100">--%>
<%--                    <!-- Product image-->--%>
<%--                    <img class="card-img-top height-inherit"--%>
<%--                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/947e3e59443c8062d92d.jpg" alt="..."/>--%>
<%--                    <!-- Product details-->--%>
<%--                    <div class="card-body p-4">--%>
<%--                        <div class="text-center">--%>
<%--                            <!-- Product name-->--%>
<%--                            <h5 class="fw-bolder">Lab</h5>--%>
<%--                            <!-- Product price-->--%>
<%--                            Web email--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- Product actions-->--%>
<%--                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">--%>
<%--                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"--%>
<%--                                                    href="https://exerciseweek03.herokuapp.com/emailList">GO!</a></div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col mb-5">--%>
<%--                <div class="card h-100">--%>
<%--                    <!-- Product image-->--%>
<%--                    <img class="card-img-top height-inherit"--%>
<%--                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/Screenshot%202022-09-19%20132129.png"--%>
<%--                         alt="..."/>--%>
<%--                    <!-- Product details-->--%>
<%--                    <div class="card-body p-4">--%>
<%--                        <div class="text-center">--%>
<%--                            <!-- Product name-->--%>
<%--                            <h5 class="fw-bolder">Lab</h5>--%>
<%--                            <!-- Product price-->--%>
<%--                            Web Murach--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- Product actions sss-->--%>
<%--                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">--%>
<%--                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"--%>
<%--                                                    href="https://leminhtai20149058.herokuapp.com/">GO!</a></div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Lab</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            lab ch5ex1
                        </div>
                    </div>
                    <!-- Product actions sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="https://ch5ex1.herokuapp.com/">GO!</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img_1.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Lab</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            lab ch5ex2
                        </div>
                    </div>
                    <!-- Product actions sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="https://ch5ex2.herokuapp.com/">GO!</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img_2.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Lab</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            lab ch6ex1
                        </div>
                    </div>
                    <!-- Product actions sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="https://ch6ex1g2.herokuapp.com/">GO!</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img_3.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Lab</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            lab ch6ex2
                        </div>
                    </div>
                    <!-- Product actiosdasns sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="https://ch6ex2g2.herokuapp.com/">GO!</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img_4.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Lab</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            lab ch7ex1
                        </div>
                    </div>
                    <!-- Product actiosdasns sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="https://ch7ex1g2.herokuapp.com/">GO!</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img_8.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Lab</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            lab ch7ex2
                        </div>
                    </div>
                    <!-- Product actiosdasns sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="https://ch7ex2g2.herokuapp.com/">GO!</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img_7.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Lab</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            lab ch7ex3
                        </div>
                    </div>
                    <!-- Product actiosdasns sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="https://ch7ex3g2.herokuapp.com/">GO!</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img_6.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Lab</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            lab ch8ex1
                        </div>
                    </div>
                    <!-- Product actiosdasns sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="https://ch8ex1g2.herokuapp.com/">GO!</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img_4.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Lab</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            lab ch9ex1
                        </div>
                    </div>
                    <!-- Product actiosdasns sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="https://ch9ex1g2.herokuapp.com/">GO!</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img_4.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Lab</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            lab ch9ex2
                        </div>
                    </div>
                    <!-- Product actiosdasns sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="https://ch9ex2g2.herokuapp.com/">GO!</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top height-inherit"
                         src="asset/startbootstrap-shop-homepage-gh-pages/assets/img_5.png" alt="..."/>
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">Project</h5>
                            <!-- Product price s-->
                            <!-- Product price s-->
                            Web quản lí đề tài
                        </div>
                    </div>
                    <!-- Product actiosdasns sss-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="<c:url value="/trang-chu"/>">GO!</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/js/scripts.js"></script>
</body>
</html>
