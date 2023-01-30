<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <title>Thêm hiệu sản phẩm</title>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="data:,">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../../css/index.css">
    <script src="../../../js/alert.js"></script>
</head>

<body>
<div class="top"><h1> Hiệu sản phẩm</h1></div>

<form class="form" id="createForm">
    <div class="form-group">
        <label for="tenHieuSanPham">Tên hiệu sản phẩm</label>
        <input type="text" class="form-control" id="tenHieuSanPham" name="tenHieuSanPham" placeholder="Nhập tên hiệu sản phẩm">
        <label hidden id="validTenHieuSanPham" style="color: red"></label>
    </div>
    <div class="form-group">
        <label for="hinhAnhHieuSanPham">Hình ảnh hiệu sản phẩm</label>
        <input type="file" class="form-control form-control-sm" id="hinhAnhHieuSanPham" name="hinhAnhHieuSanPham" onchange="loadFile(event)">
        <br>
        <img src="../uploadImageBrand/${hieuSanPham.hinhAnhHieuSanPham}" alt="hình ảnh hiệu sản phẩm" id="image" width="200px" height="200px" style="display: none"/>
    </div>
    <div class="form-group">
        <label>Trạng thái sản phẩm</label>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="tinhTrang" id="tinhTrang1" value="1" checked>
            <label class="form-check-label" for="tinhTrang">Kích hoạt</label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="tinhTrang" id="tinhTrang" value="2">
            <label class="form-check-label" for="tinhTrang">Không kích hoạt</label>
        </div>
    </div>
    <button type="button" onclick="alertCreateHieuSanPham()" class="btn btn-primary">Thêm </button>
</form>

</body>
</html>