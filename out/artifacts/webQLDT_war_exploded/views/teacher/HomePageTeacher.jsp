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
        <div class="notification-container-add"><a class="nav-link" href="<c:url value="/teacher-add-notificate"/>">
            <img src="${pageContext.request.contextPath}/views/user/homePage/assets/add.png" width="24" height="24"
                 alt="add anotificate">
        </a></div>
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
                    <c:if test="${not empty model}">
                        <c:forEach var="item" items="${model}">
                            <tr>
                                <td>
                                    <a class="table-anchor" href="#">
                                        <li class="article-area table-li">
                                            <p>
                                        <span class="btn btn-primary btn-sm">
                                                ${item.createddate}
                                        </span>
                                                    ${item.title}
                                            </p>
                                        </li>
                                    </a>
                                </td>
                                <td style="width: 8%">
                                    <form action="<c:url value="/teacher-home"/>" method="post" style="margin: 4px;">
                                        <input type="hidden" name="action-notificate" value="" class="edit-input">
                                        <input type="hidden" name="id" value="${item.id}" class="edit-input-id">
                                        <button class="btn btn-primary btn-sm edit-button" type="submit">
                                            <i class="fa-solid fa-pen-to-square"></i>
                                        </button>
                                    </form>
                                    <form action="<c:url value="/teacher-home"/>" method="post" style="margin: 4px;">
                                        <input type="hidden" name="action-notificate" value="deleteNotificate" class="delete-input}">
                                        <input type="hidden" name="id" value="${item.id}" class="delete-input-id">
                                        <button class="btn btn-primary btn-sm" type="submit">
                                            <i class="fa-solid fa-trash"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
    $('#delete-button').click(function (){
        $('#delete-input').val('deleteNotificate')
    })
    $('#edit-button').click(function (){
        $('#edit-input').val('editNotificate');
    })
</script>
</body>
</html>
