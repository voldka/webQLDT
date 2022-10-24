<!-- <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>List Projects</title>
    <!-- Favicon-->
    <!-- <link rel="icon" type="image/x-icon" href="<c:url value="assets/favicon.ico"/>"/> -->
    <!-- Bootstrap icons-->
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>--%>
<%--    <!-- Core theme CSS (includes Bootstrap)-->--%>

<%--    <link rel="stylesheet" href="css/styles.css">--%>
<%--    <link rel="stylesheet" href="css/taile.css">--%>

<%--    <link href=${pageContext.request.contextPath}/views/user/homePage/css/styles.css rel="stylesheet" type="text/css" />--%>
<%--    <link href=${pageContext.request.contextPath}/views/user/homePage/css/taile.css rel="stylesheet" type="text/css" />--%>

</head>
<body>
<!-- Section-->
<section class="py-5" style="padding-top: 0px!important;">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="section-header">
                <h4>
                    Tên loại đề tài vừa chọn
                </h4>
            </div>
            <div class="section-table">
                <table class="table demo footable-loaded footable listProject_section-table listProject_section-table--padding" data-page-size="5">
                    <thead>
                    <tr>
                        <th data="true">STT</th>
                        <th>Tên đề tài</th>
                        <th>GVHD</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="listProject_section-table--hover">
                        <td>1</td>
                        <td>
                            <a href="<c:url value="/detail-project"/>"> Web bán hàng sử dụng MERN stack</a>
                        </td>
                        <td>Mai Anh Thơ</td>
                    </tr>
                    <tr class="listProject_section-table--hover">
                        <td>2</td>
                        <td>
                            <a href="<c:url value="/detail-project"/>"> Web xem phim sử dụng MEAN stack </a>
                        </td>
                        <td>Mai Anh Thơ</td>
                    </tr>
                    <tr class="listProject_section-table--hover">
                        <td>3</td>
                        <td>
                            <a href="<c:url value="/detail-project"/>"> Web quản lí đề tài sử dụng jsp servlet</a>
                        </td>
                        <td>Mai Anh Thơ</td>
                    </tr>
                    <tr class="listProject_section-table--hover">
                        <td>4</td>
                        <td>
                            <a href="<c:url value="/detail-project"/>"> web xem phim</a>
                        </td>
                        <td>Mai Anh Thơ</td>
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
</body>
</html>
