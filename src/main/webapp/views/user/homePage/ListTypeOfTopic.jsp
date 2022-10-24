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
    <title>List type of topic </title>
    <!-- Favicon-->
    <%--    <!-- <link rel="icon" type="image/x-icon" href="<c:url value="assets/favicon.ico"/>"/> -->--%>
    <%--    <!-- Bootstrap icons-->--%>
    <%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>--%>
    <!-- Core theme CSS (includes Bootstrap)-->
</head>
<body>
<!-- Section-->
<section class="py-5" style="padding-top: 0px!important;">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="section-header">
                <h4>
                    Danh sách đề tài
                </h4>
            </div>
            <div class="section-table">
                <form action="<c:url value="/list-projects"/>" method="get" id="ListTypeOfTopicSubmit">
                    <table class="table demo footable-loaded footable listProject_section-table listProject_section-table--padding"
                           data-page-size="5">
                        <thead>
                        <tr>
                            <th data="true">STT</th>
                            <th>Loại đề tài</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="index" begin="0" end="${countModel-1}">
                            <c:forEach var="item" items="${model.listResult}" begin="${index}" end="${index}">
                                <tr class=" listProject_section-table--hover">
                                    <td>${index+1}</td>
                                    <td>
                                        <a href="<c:url value="/list-projects"/>">${item.name}</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:forEach>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="5"></td>
                        </tr>
                        </tfoot>
                    </table>
                </form>
                <ul class="pagination" id="pagination">

                </ul>
            </div>
        </div>
    </div>
    </div>
</section>

</body>
<script>
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: 10,
            visiblePages: 5,
            startPage: 4,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    $('#maxPageItem').val(limit);
                    $('#page').val(page);
                    $('#sortName').val('title');
                    $('#sortBy').val('desc');
                    $('#type').val('list');
                    $('#formSubmit').submit();
                }
            }
        });
    });
</script>
</html>
