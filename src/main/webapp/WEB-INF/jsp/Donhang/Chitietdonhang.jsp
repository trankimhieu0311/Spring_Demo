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
    <title>Chi tiết đơn hàng</title>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
</head>

<body>
<div class ="sticky-top sticky">
    <div style="color: #1da1f2;" class="top"><h1>Đơn Hàng</h1>
        <button style="float: left; margin-left: 30px" type="button" class="btn btn-outline-info" onclick="quay_lai_trang_truoc()">Quay lại </button>
    </div>
</div>
<hr width="100%" size="1px" align="left" color="#000000"/>
<c:if test="${status.trangThai != 5}">
<form  style="width: 350px" action="/updateBill" method="post">
ID: <input style="border: 0; padding: 0; width: 35px; color: #ff6400" id="id" name="id" value="${status.id}" readonly>
<select style="height: 32px; border: 0" id="status" name="status" class="dropdown" onchange="changeStatus()">
    <option value="1" <c:if test="${status.trangThai == 1}">selected</c:if>>Chờ xác nhận</option>
    <option value="2" <c:if test="${status.trangThai == 2}">selected</c:if>>Đang đóng gói</option>
    <option value="3" <c:if test="${status.trangThai == 3}">selected</c:if>>Đang vận chuyển</option>
    <option value="4" <c:if test="${status.trangThai == 4}">selected</c:if>>Hủy đơn</option>
</select>
    <button style="border: 0" type="submit">Cập nhật</button>
</form>
</c:if>
<div class="sticky-top sticky">
    <div style="margin-top: 30px" class="column-labels">
        <label style="width: 210px; margin-left: 140px" class="product-image">Ảnh .</label>
        <label class="product-details">Sản phẩm</label>
        <label style="margin-left: 60px" class="product-quantity">Số lượng</label>
        <label class="product-line-price">Tổng tiền </label>
    </div>
    <c:forEach var="ChitietKh" items="${donhang}">
        <div class="product">
            <div class="product-image">
                <img src="../../../uploadImage/${ChitietKh.sanPham.hinhAnhSanPham}">
            </div>
            <div style="margin: 30px 0; width: 290px" class="product-details">
                <div class="product-title">${ChitietKh.sanPham.tenSanPham}</div>
            </div>
            <div style="margin: 30px 0; padding-left: 70px" class="product-quantity">
                <p>${ChitietKh.soLuongSanPham}</p>
            </div>
            <div  style="margin: 30px 0; padding-left: 130px" class="product-line-price"><fmt:formatNumber type="number" groupingUsed="true"
                value="${ChitietKh.tongTien}"/></div>
        </div>

    </c:forEach>
</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
    function quay_lai_trang_truoc(){
        history.back();
    }
</script>
<script>
    function changeStatus(){
        let valueSelect = document.getElementById("status").value;
        console.log(valueSelect)
        $.ajax({
            type: "GET",
            url: "",
            success: function (){

            }
        })
    }
</script>
</html>

