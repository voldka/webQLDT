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
                    ${type.name}
                </h4>
            </div>
            <div class="section-table">
                <table class="table demo footable-loaded footable listProject_section-table listProject_section-table--padding" data-page-size="5">
                    <thead>
                    <tr>
                        <th data="true">STT</th>
                        <th>Tên đề tài</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:if test="${countModel>0}">
                        <c:forEach var="index" begin="0" end="${countModel-1}">
                            <c:forEach var="item" items="${model}" begin="${index}" end="${index}">
                                <tr class=" listProject_section-table--hover">
                                    <td style="width: 10%">${index+1}</td>
                                    <td>
                                        <a href="<c:url value="/detail-project?id=${item.id}&&typeId=${type.id}"/>">${item.nameTopic}</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:forEach>
                    </c:if>
                    </tbody>
                    <tfoot>

                    </tfoot>
                </table>
            </div>
        </div>
    </div>
    </div>
</section>
</body>
</html>
