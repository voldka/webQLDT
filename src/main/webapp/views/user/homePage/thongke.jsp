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
    <title>Trang thống kê</title>
    <link rel="stylesheet" href="css/thongke.css">
    <link href=${pageContext.request.contextPath}/views/user/homePage/css/styles.css rel="stylesheet" type="text/css"/>
    <link href=${pageContext.request.contextPath}/views/user/homePage/css/taile.css rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <!-- Favicon-->
    <!-- Bootstrap icons-->

    <!-- Core theme CSS (includes Bootstrap)-->
</head>
<body>
<!-- Section-->
<div class="container px-4 px-lg-5 mt-5">
    <!-- Tab items -->

    <!-- Tab content -->
    <div class="tab-content">
        <div class="tab-pane active">
            <h3 class="text-center text-danger">Thống kê loại đề tài theo số lượng đề tài</h3>
            <div id="dt1" style="width: 800px; height: 500px;margin: auto;"></div>
        </div>
    </div>
</div>
</div>
<!-- Bootstrap core JS-->
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>--%>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="<c:url value="js/scripts.js"/>"></script>
<script type="text/javascript">
    google.charts.load("current", {packages: ["corechart"]});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            <c:if test="${countModel>0}">
            <c:forEach var="index" begin="0" end="${countModel-1}">
                <c:forEach var="item" items="${listType}" begin="${index}" end="${index}">
                <c:forEach var="items" items="${num}" begin="${index}" end="${index}">
                ['${item.name}', ${items}],
                </c:forEach>
                </c:forEach>
            </c:forEach>
            </c:if>
        ]);

        var options = {
            title: 'thống kế số lương đề tài',
            is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('dt1'));
        chart.draw(data, options);

    }
</script>
</body>
</html>
