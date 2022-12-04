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
  <link href=${pageContext.request.contextPath}/views/user/homePage/css/taile.css rel="stylesheet" type="text/css"/><script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <!-- Favicon-->
  <!-- Bootstrap icons-->

  <!-- Core theme CSS (includes Bootstrap)-->
</head>
<body>
<!-- Section-->
<section class="thongke">
  <!-- Tab items -->
  <div class="tabs">
    <div class="tab-item active">
      Đề tài
    </div>
    <div class="tab-item">
      Sinh viên
    </div>
    <div class="tab-item">
      Giảng viên
    </div>
    <div class="line"></div>
  </div>

  <!-- Tab content -->
  <div class="tab-content">
    <div class="tab-pane active">
      <h3 class="text-center text-danger">Thống kê đề tài</h3>
      <form class="form-horizontal">
        <div class="form-group">
          <label class="col-sm-4 control-label">Loại đề tài</label>
          <div class="col-sm-4">
            <select class="form-control" id="loai_detai_dt">
              <option value="0">Chọn loại đề tài</option>
              <option value="1">Tiểu luận chuyên ngành 2014</option>
              <option value="2">Đề tài tốt nghiệp 2014</option>
              <option value="3">Tiểu luận chuyên ngành 2017</option>
              <option value="4">Tiểu luận chuyên ngành 2018</option>
              <option value="5">Đề tài tốt nghiệp 2018</option>
              <option value="6">Đề tài tốt nghiệp 2017</option>
              <option value="7">Tiểu luận chuyên ngành 2019</option>
            </select>
          </div>
        </div>
      </form>
      <div id="dt1" style="width: 800px; height: 500px"></div>
      <div id="dt2" style="width: 800px; height: 500px"></div>
    </div>
    <div class="tab-pane">
      <h3 class="text-center text-danger">Thống kê đề tài theo Sinh Viên</h3>
      <form class="form-horizontal">
        <div class="form-group">
          <label class="col-sm-4 control-label">Loại đề tài</label>
          <div class="col-sm-4">
            <select class="form-control" id="loai_detai_sv">
              <option value="0">Chọn loại đề tài</option>
              <option value="1">Tiểu luận chuyên ngành 2014</option>
              <option value="2">Đề tài tốt nghiệp 2014</option>
              <option value="3">Tiểu luận chuyên ngành 2017</option>
              <option value="4">Tiểu luận chuyên ngành 2018</option>
              <option value="5">Đề tài tốt nghiệp 2018</option>
              <option value="6">Đề tài tốt nghiệp 2017</option>
              <option value="7">Tiểu luận chuyên ngành 2019</option>
            </select>
          </div>
        </div>
      </form>
      <div id="dt2"></div>
    </div>
    <div class="tab-pane">
      <h3 class="text-center text-danger">Thống kê đề tài theo Sinh Viên</h3>
      <form class="form-horizontal">
        <div class="form-group">
          <label class="col-sm-4 control-label">Loại đề tài</label>
          <div class="col-sm-4">
            <select class="form-control" id="loai_detai_sv">
              <option value="0">Chọn loại đề tài</option>
              <option value="1">Tiểu luận chuyên ngành 2014</option>
              <option value="2">Đề tài tốt nghiệp 2014</option>
              <option value="3">Tiểu luận chuyên ngành 2017</option>
              <option value="4">Tiểu luận chuyên ngành 2018</option>
              <option value="5">Đề tài tốt nghiệp 2018</option>
              <option value="6">Đề tài tốt nghiệp 2017</option>
              <option value="7">Tiểu luận chuyên ngành 2019</option>
            </select>
          </div>
        </div>
      </form>
      <div id="dt3"></div>
    </div>
  </div>
</section>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
  const $ = document.querySelector.bind(document);
  const $$ = document.querySelectorAll.bind(document);

  const tabs = $$(".tab-item");
  const panes = $$(".tab-pane");

  const tabActive = $(".tab-item.active");
  const line = $(".tabs .line");

  requestIdleCallback(function () {
    line.style.left = tabActive.offsetLeft + "px";
    line.style.width = tabActive.offsetWidth + "px";
  });

  tabs.forEach((tab, index) => {
    const pane = panes[index];

    tab.onclick = function () {
      $(".tab-item.active").classList.remove("active");
      $(".tab-pane.active").classList.remove("active");

      line.style.left = this.offsetLeft + "px";
      line.style.width = this.offsetWidth + "px";

      this.classList.add("active");
      pane.classList.add("active");
    };
  });
</script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="<c:url value="js/scripts.js"/>"></script>
<script type="text/javascript">
  google.charts.load("current", {packages:["corechart"]});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Task', 'Hours per Day'],
      ['Công nghệ phần mềm',     57],
      ['Hệ thống thông tin',      33],
      ['Mạng máy tính',  15],
    ]);

    var options = {
      title: 'Tiểu luận chuyên ngành 2014',
      is3D: true,
    };

    var chart = new google.visualization.PieChart(document.getElementById('dt1'));
    chart.draw(data, options);

  }
</script>

<script type="text/javascript">
  google.charts.load("current", {packages:["corechart"]});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Task', 'Hours per Day'],
      ['Công nghệ phần mềm',     99],
      ['Hệ thống thông tin',      44],
      ['Mạng máy tính',  43],
      ['Sư phạm',  57],

    ]);

    var options = {
      title: 'Tiểu luận chuyên ngành 2014',
      is3D: true,
    };

    var chart = new google.visualization.PieChart(document.getElementById('dt2'));
    chart.draw(data, options);

  }
</script>
</body>
</html>
