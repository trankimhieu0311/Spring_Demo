<%@ page import="com.example.demo.config.SecurityUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="data:,">
    <link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../../css/index.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="../../../js/sticky.js"></script>
    <script src="../../../js/alert.js"></script>
    <title>Products</title>
</head>

<body>
<div class ="sticky-top sticky">
    <div class="top"><h1>Danh Sách Đơn hàng</h1>
        <a href="/" class="btn btn-outline-secondary">Trang chủ</a>
        <a href="#" class="btn btn-outline-secondary">Đơn hàng mới</a>
        <a href="#" class="btn btn-outline-secondary">Đơn xử lý</a>
        <a href="#" class="btn btn-outline-secondary">Đơn hoàn thành</a>
    </div>

    <table class="table table-hover table-striped table-dark">
        <thead class="sticky-top sticky1">
        <th>Hình ảnh</th>
        <th>Tên sản phẩm</th>
        <th>Số lượng</th>
        <th>Tổng tiền</th>
        <th>Trạng thái đơn hàng</th>
        </thead>

    </table>
</div>
</body>