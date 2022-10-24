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
    <title>detail project</title>
    <!-- Favicon-->
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
                    Tên loại đề tài vừa chọn
                </h4>
            </div>
            <div class="section-table">
                <table class="table demo footable-loaded footable listProject_section-table listProject_section-table--padding"
                       data-page-size="5">
                    <tbody>
                    <tr class="listProject_section-table--hoverDarkgrey">
                        <td>Tên đề tài</td>
                        <td>Tìm hiểu Entity Framework và .NETXây dựng chương trình phân tích và đánh giá hoạt động
                            đào
                            tạo sử dụng .NET
                        </td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey">
                        <td>Mục tiêu</td>
                        <td>Tìm hiểu jsp, servlet, mô hình mvc, xml, dao, service, jdbc,...</td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey">
                        <td>SL sinh viên</td>
                        <td>3/3</td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey">
                        <td>Loại đề tài</td>
                        <td>Tiểu luận chuyên ngành</td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey">
                        <td>Trạng thái</td>
                        <td>Được bảo vệ</td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey" style="background-color: #f2dede;">
                        <td>GV hướng dẫn</td>
                        <td>Mai Anh Thơ</td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey" style="background-color:#dff0d8">
                        <td>Điểm đề tài</td>
                        <td>Chưa có điểm</td>
                    </tr>
                    <td colspan="2" style="text-align: center;">
                        <form action="<c:url value="/list-projects"/>" method="get">
                            <button id="back" type="submit" class="btn btn-info" style="color: white; "
                                    href="">Quay về
                            </button>
                        </form>
                    </td>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
</body>
</html>
