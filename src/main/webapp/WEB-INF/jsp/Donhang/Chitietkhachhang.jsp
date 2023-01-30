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
    <title>Chi tiết đơn khách hàng</title>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
</head>

<body>
<div id="admin-heading-panel">
    <div style="padding-top: 20px" class="container">
        <div style="float: left" class="left-panel">
            Cảm ơn quý khách
        </div>
        <div style="float: right" class="right-panel">
            <a href="/">Trang chủ</a>
            <a href="/logout">Thoát</a>
        </div>
    </div>
</div>
<hr width="100%" size="1px" align="left" color="#000000"/>
<button style="float: left" type="button" class="btn btn-outline-info" onclick="quay_lai_trang_truoc()">Quay lại </button><br>
<h1 style="color: #1da1f2; margin-top: 20px"><strong> Đơn hàng</strong></h1>

    <form style="width: 300px" action="/updateOrder" method="POST">
        ID: <input style="border: 0; padding: 0; width: 40px; color: #ff6400" id="id" name="id" value="${status.id}"
                   readonly>
        <select style="height: 32px; border: 0" id="status" name="status" onchange="changeStatus()">
            <option value="4" <c:if test="${status.trangThai == 4}">selected</c:if>>Hủy đơn</option>
            <c:if test="${status.trangThai == 3}">
                <option value="5" <c:if test="${status.trangThai == 5}">selected</c:if> >Nhận hàng</option>
            </c:if>
        </select>
        <button type="submit">Xác nhận</button>
    </form><br>

<div class="sticky-top sticky" style="background-color: white">
    <div class="column-labels">
        <label style="width: 200px; margin-left: 170px" class="product-image">Ảnh</label>
        <label class="product-details">Sản phẩm</label>
        <label style="margin-left: 30px" class="product-price">Giá</label>
        <label class="product-quantity">Số lượng</label>
        <label style="width: 130px" class="product-line-price">Tổng đơn</label>

    </div>
    <c:forEach var="ChitietKh" items="${ChitietKH}">
        <div class="product">
            <div class="product-image">
                <img src="../../../uploadImage/${ChitietKh.sanPham.hinhAnhSanPham}">
            </div>
            <div style="margin: 30px 0; width: 290px" class="product-details">
                <div class="product-title">${ChitietKh.sanPham.tenSanPham}</div>
            </div>
            <div style="margin: 30px 0">
                <div style="margin-left: 20px" class="product-price"><fmt:formatNumber type="number" groupingUsed="true"
                                                             value="${ChitietKh.sanPham.giaDeXuat}"/></div>
            </div>
            <div style="margin-top: 0; padding-left: 45px; margin-right: 15px"
                 class="product-quantity">
                <p>${ChitietKh.soLuongSanPham}</p>
            </div>
            <div style="padding-left: 10px; width: 140px" class="product-line-price"><fmt:formatNumber type="number"
                                                                                         groupingUsed="true"
                                                                                         value="${ChitietKh.tongTien}"/>
            </div>
        </div>
    </c:forEach>

</div>
</body>
<script>
    function quay_lai_trang_truoc(){
        history.back();
    }
</script>
</html>

