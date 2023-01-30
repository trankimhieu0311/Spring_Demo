<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <title>Detail Products</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="data:,">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../../css/index.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../../../js/getImageforCreate.js"></script>
    <script src="../../../js/alert.js"></script>
</head>

<body>
<div class="top"><h1>Sản phẩm</h1></div>

<form class="form" id="detailForm" enctype="multipart/form-data">
    <div class="form-group">
        <label for="tenSanPham">Tên sản phẩm</label>
        <input type="text" class="form-control" id="tenSanPham" value="${sanPham.tenSanPham}" name="tenSanPham">
        <label hidden id="validTenSanPham" style="color: red"></label>
    </div>
    <div class="form-group">
        <label for="file">Hình ảnh sản phẩm</label>
        <input id="hinhAnhSanPham" name="hinhAnhSanPham" value="${sanPham.hinhAnhSanPham}" hidden>
        <input type="file" id="file" name="file" class="form-control form-control-sm" onchange="loadFile(event)" value="${sanPham.hinhAnhSanPham}">
        <br>
        <img src="../uploadImage/${sanPham.hinhAnhSanPham}" alt="hình ảnh sản phẩm" id="image" width="200px" height="200px" style="display: none"/>
    </div>

</form>
