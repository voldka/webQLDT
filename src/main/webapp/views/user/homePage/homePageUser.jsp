<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Trang chủ UTE</title>
</head>
<body>
<!-- Navigation-->
<!-- Section-->
<section class="py-5" style="padding-top: 0px!important;">
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
                    <c:forEach var="item" items="${model.listResult}">
                        <tr>
                            <a class="table-anchor" href="<c:url value="/notification"/>">
                                <li class="article-area table-li">
                                    <p>
                                        <span class="btn btn-primary btn-sm">
                                            ${item.createdDate}
                                        </span>
                                            ${item.title}
                                    </p>
                                </li>
                            </a>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <tfoot>
                    <tr>

                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->

</body>
</html>
