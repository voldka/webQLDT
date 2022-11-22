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
                        <td>${model.nameTopic}
                        </td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey">
                        <td>Mục tiêu</td>
                        <td>${model.target}</td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey">
                        <td>SL sinh viên</td>
                        <td>${model.number}/3</td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey">
                        <td>Loại đề tài</td>
                        <td>${model.type.name}</td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey">
                        <td>Trạng thái</td>
                        <td>${model.status}</td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey" style="background-color: #f2dede;">
                        <td>GV hướng dẫn</td>
                        <td>${model.createdby}</td>
                    </tr>
                    <tr class="listProject_section-table--hoverDarkgrey" style="background-color:#dff0d8">
                        <td>Điểm đề tài</td>
                        <td>${model.rate}</td>
                    </tr>
                    <td colspan="2" style="text-align: center;">
                        <form action="<c:url value="/student-detail-project?id=${model.id}"/>" method="post"
                              style="display: inline-block;">
                            <button class="btn btn-info" type="submit"
                                    style="color: white;background-color: chocolate;border-color: chocolate;">
                                Đăng kí
                            </button>
                            <input type="hidden" name="action" value="regisTopic">
                        </form>
                        <form action="" method="get" style="display: inline-block;">
                            <a id="back" class="btn btn-info" style="color: white; "
                               href="<c:url value="/student-list-projects?id=${typeId}"/>">Quay về
                            </a>
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
