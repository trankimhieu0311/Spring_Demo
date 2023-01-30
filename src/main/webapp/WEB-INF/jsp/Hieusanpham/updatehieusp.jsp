<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <title>Cập nhật hiệu sản phẩm</title>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="data:,">
    <link rel="stylesheet" type="text/css" href="../../../css/index.css">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="../../../js/getImageforCreate.js"></script>

    <script src="../../../js/alert.js"></script>
</head>

<body>
<div class="top"><h1> Hiệu sản phẩm</h1></div>

<form class="form" id="updateForm" enctype="multipart/form-data">
    <div class="form-group">
        <label for="idHieuSanPham">Id hiệu sản phẩm</label>
        <input type="text" class="form-control" id="idHieuSanPham" name="idHieuSanPham" value="${hieuSanPham.idHieuSanPham}" readonly>
    </div>
    <div class="form-group">
        <label for="tenHieuSanPham">Tên hiệu sản phẩm</label>
        <input type="text" class="form-control" id="tenHieuSanPham" name="tenHieuSanPham" placeholder="Nhập tên hiệu sản phẩm" value="${hieuSanPham.tenHieuSanPham}">
        <label hidden id="validTenHieuSanPham" style="color: red"></label>
    </div>
    <div class="form-group">
        <label >Hình ảnh hiệu sản phẩm</label>
        <input id="hinhAnhHieuSanPham" name="hinhAnhHieuSanPham" value="${hieuSanPham.hinhAnhHieuSanPham}" hidden>
        <input type="file" id="file" name="fileImageBrand" class="form-control form-control-sm" onchange="loadFile(event)" value="${hieuSanPham.hinhAnhHieuSanPham}">
        <br>
        <img src="../../../uploadImageBrand/${hieuSanPham.hinhAnhHieuSanPham}" alt="hình ảnh hiệu sản phẩm" id="image" width="150px" height="150px" />
    </div>
    <div class="form-group">
        <label>Trạng thái sản phẩm</label>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="tinhTrang" id="tinhTrang1" value="1" <c:if test="${hieuSanPham.tinhTrang == 1}">checked</c:if> />
            <label class="form-check-label" for="tinhTrang">Kích hoạt</label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="tinhTrang" id="tinhTrang" value="2" <c:if test="${hieuSanPham.tinhTrang == 2}">checked</c:if>>
            <label class="form-check-label" for="tinhTrang">Không kích hoạt</label>
        </div>
    </div>
    <button type="button" onclick="alertUpdateHieuSanPham()" class="btn btn-primary">Cập nhật</button>
</form>

</body>
</html>