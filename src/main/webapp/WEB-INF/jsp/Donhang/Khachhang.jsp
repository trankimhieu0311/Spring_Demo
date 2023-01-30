<%@ page import="com.example.demo.config.SecurityUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="data:,">
    <link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../../css/khachhang.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="../../../js/sticky.js"></script>
    <script src="../../../js/alert.js"></script>
    <title>Đơn khách hàng</title>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
</head>

<body>
<div id="admin-heading-panel">
    <div style="padding-top: 20px" class="container">
        <div style="float: left" class="left-panel">
            Xin chào <span style="color: #ff6400">${userr.userName}</span>
        </div>
        <div style="float: right" class="right-panel">
            <a href="/">Trang chủ</a>
            <a href="/logout">Thoát</a>
        </div>
    </div>
</div>
<hr width="100%" size="1px" align="left" color="#000000"/>
<h1 style="color: #ff6400 "><strong> Đơn hàng</strong></h1>

<table class="table table-hover table-striped table-dark">
    <thead style="color: #ff6400" class="sticky-top sticky1">
    <th> Ngày tạo đơn </th>
    <th> Mã đơn hàng</th>
    <th> Tên người nhận</th>
    <th> Địa chỉ</th>
    <th> Điện thoại</th>
    <th> Thanh toán bằng</th>
    <th> Trạng thái đơn hàng</th>
    <th> Chi tiết</th>

    </thead>
    <tbody>
    <c:forEach var="bill" items="${bills}">
        <tr>
            <td><fmt:formatDate pattern = "dd-MM-yyyy" value = "${bill.createDateTime}" /></td>
            <td>${bill.id}</td>
            <td>${bill.userName}</td>
            <td>${bill.address}</td>
            <td>${bill.phoneNumber}</td>
            <td>
                <c:if test="${bill.phuongthucthanhtoan == 1}">Tiền mặt</c:if>
                <c:if test="${bill.phuongthucthanhtoan == 2}">Momo</c:if>
                <c:if test="${bill.phuongthucthanhtoan == 3}">Paypal</c:if>
            </td>
            <td>
                <c:if test="${bill.trangThai == 1}"><p>Chờ xác nhận</p></c:if>
                <c:if test="${bill.trangThai == 2}"><p>Đang đóng gói</p></c:if>
                <c:if test="${bill.trangThai == 3}"><p>Đang vận chuyển</p></c:if>
                <c:if test="${bill.trangThai == 4}"><p>Đã hủy</p></c:if>
                <c:if test="${bill.trangThai == 5}"><p>Đã nhận hàng</p></c:if>
            </td>
            <td lass="product-removal">
                <a href="/ChitietKH/${bill.id}" class="btn btn-sm btn-warning">Chi tiết</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>