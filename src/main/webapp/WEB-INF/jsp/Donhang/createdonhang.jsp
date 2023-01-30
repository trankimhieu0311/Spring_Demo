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
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../../css/index.css">
    <script src="../../../js/alert.js"></script>
    <title>Document</title>
</head>
<body>
<div class="top"><h1>Add new order</h1></div>
<form class="form" id="createForm" enctype="multipart/form-data">

</form>
    <div class="form-group">
        <label for="tenKhachHang">Tên khách hàng</label>
        <input type="text" class="form-control" id="tenKhachHang" name="tenKhachhang" placeholder="Nhập tên khách hàng" >
        <label hidden id="validTenKhachHang" style="color: red"></label>
    </div>

    <div class="form-group">
        <label for="tenSanPham">Tên sản phẩm</label>
        <input type="text" class="form-control" id="tenSanPham" name="tenSanPham" placeholder="Nhập tên sản phẩm" onchange="validateTenSanPham()">
        <label hidden id="validTenSanPham" style="color: red"></label>
    </div>

    <div class="form-group">
        <label for="tenNgaylap">Ngày lập</label>
        <input type="text" class="form-control" id="tenNgaylap" name="tenSanPham" placeholder="Nhập ngày lập" >
        <label hidden id="validNgaylap" style="color: red"></label>
    </div>

    <div class="form-group">
        <label for="diachi">Địa Chỉ</label>
         <input type="text" class="form-control" id="diaChi" name="diaChi" placeholder="Địa chỉ" >
         <label hidden id="validDiaChi" style="color: red"></label>
    </div>

    <div class="form-group">
        <label for="tongTien">Tổng tiền</label>
        <input type="text" class="form-control" id="tongTien" name="tenTien" placeholder="Tổng tiền" >
        <label hidden id="validTongTien" style="color: red"></label>
    </div>

    <div class="form-group">
        <label for="trangThaiDonHang">Trạng thái đơn hàng</label>
        <input type="text" class="form-control" id="trangThaiDonHang" name="trangThaiDonHang" placeholder="Trạng thái dơn hàng" >
        <label hidden id="validTrangThaiDonHang" style="color: red"></label>
    </div>

</body>
</html>