<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <link rel="icon" href="data:,">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/index.css" type="text/css">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
<div style="text-align: center">
    <h1>Tin tức mỗi ngày</h1>
</div>
<table class="table table-hover table-striped table-bordered table-dark">
    <thead>
        <th>Tên tin tức</th>
        <th>Mã tin tức</th>
        <th>Hình ảnh</th>
        <th>Nội dung</th>
        <th>Trạng thái</th>
    </thead>
    <tbody>
        <c:forEach var="listTinTuc" items="${listtintuc}">
            <tr>
                <td>${listTinTuc.tenTinTuc}</td>
                <td>${listTinTuc.maTin}</td>
                <td>
                    <img src="${pageContext.request.contextPath}/uploadImage/${listTinTuc.hinhAnh}" width="240" height="200"/>
                </td>
                <td>${listTinTuc.noiDung}</td>
                <td>${listTinTuc.tinhTrang}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
