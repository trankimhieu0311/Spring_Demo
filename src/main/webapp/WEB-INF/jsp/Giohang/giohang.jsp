<%@ page import="com.example.demo.config.SecurityUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="../../../css/giohang.css">
    <link rel="stylesheet" type="text/css" href="../../../css/login.css">
    <link rel="stylesheet" type="text/css" href="../../../css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet"/>
    <title>Giỏ hàng</title>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
</head>
<body>
<h1 style="margin: 20px ;color: #ff6400">Giỏ hàng</h1><br>
<div class="shopping-cart"><br>
    <div class="column-labels">
        <label style="width: 220px; margin-left: 150px" class="product-image">Ảnh</label>
        <label class="product-details">Sản phẩm</label>
        <label style="padding-left: 18px" class="product-price">Giá</label>
        <label style="margin-left: 10px" class="product-quantity">Số lượng</label>
        <label style="margin-left: 20px" class="product-removal">Xóa</label>
        <label style="width: 140px" class="product-line-price">Thành tiền</label>
    </div>
    <c:forEach var="sanpham" items="${sanpham}">
    <div class="product">
        <div class="product-image">
            <img src="../../../uploadImage/${sanpham.sanPham.hinhAnhSanPham}">
        </div>
        <div style="margin: 30px 0; width: 270px" class="product-details">
            <div class="product-title">${sanpham.sanPham.tenSanPham}</div>
        </div>
        <div style="margin: 30px 0">
            <c:choose>
                <c:when test="${sanpham.sanPham.giaGiam == null}">
                    <div style="margin-left: 20px" class="product-price"><fmt:formatNumber type="number" groupingUsed="true"
                                                                 value="${sanpham.sanPham.giaDeXuat}"/></div>
                </c:when>
                <c:otherwise>
                    <div class="product-price"><fmt:formatNumber type="number" groupingUsed="true"
                                                                 value="${sanpham.sanPham.giaGiam}"/></div>
                </c:otherwise>
            </c:choose>
        </div>

        <div style="margin-top: 0; padding-left: 20px ;margin-right: 15px; margin-left: 10px" class="product-quantity">
            <a href="/subtraction/${sanpham.sanPham.idSanPham}"
               style="text-decoration: none; border-radius: 20%; border: 2px solid black">&minus;</a>
            <p style="margin: 10px 0 10px 0">${sanpham.soLuongSanPham}</p>
            <a <c:if test="${sanpham.sanPham.soLuongSanPham == sanpham.soLuongSanPham}">hidden</c:if> href="/addition/${sanpham.sanPham.idSanPham}"
               style="text-decoration: none; border-radius: 20%; border: 2px solid black">&plus;</a>
        </div>

        <div style="width: 120px" class="product-removal">
            <a style="text-decoration: none; background-color: #ff6400; color: black; "
               href="/removetocart/${sanpham.sanPham.idSanPham}" class="remove-product">
                Remove
            </a>
        </div>
        <div style="padding-left: 110px" class="product-line-price"><fmt:formatNumber type="number" groupingUsed="true"
                                                          value="${sanpham.tongTien}"/></div>
    </div>
    </c:forEach>
    <div style="margin-bottom: 50px; margin-right: 50px" class="totals">
        <div class="totals-item">
            <label>Tổng tiền tạm tính</label>
            <div class="totals-value" id="cart-subtotal"><fmt:formatNumber type="number" groupingUsed="true"
                                                                           value="${tongtien}"/></div>
        </div>
        <div class="totals-item">
            <label>Tiền ship</label>
            <div class="totals-value" id="cart-shipping">0</div>
        </div>
        <div class="totals-item totals-item-total">
            <label>Tổng tiền</label>
            <div class="totals-value" id="cart-total"><fmt:formatNumber type="number" groupingUsed="true" value="${tongtien }"/></div>
        </div>
    </div>

    <div style=" margin-right: 500px; padding-top: 100px">
        <button style="  font-size: 1.3em" type="button"><a style="text-decoration: none; color: #fff3cd" href="/">Chọn thêm sản phẩm</a></button>
        <button <c:if test="${tongtien == 0}">hidden</c:if> style="  font-size: 1.3em" type="button"><a style="text-decoration: none;color: #fff3cd"
                                                            onclick="TiepTuc(`${userCurrent}`)" class="continue">Tiếp tục </a></button>
        <div>
            <div style="display: none" id="myForm">
                <div class="form-popup" onclick="closeLoginPage()">
                    <div class="closepopup">
                        <svg xmlns="http://www.w3.org/2000/svg" display="block" width="30" height="30"
                             fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                        </svg>
                    </div>
                </div>
                <form action="/j_spring_security_check" class="form-container" method="post">
                    <h1 style="color:#ff6400">Đăng nhập</h1>
                    <input type="text" placeholder="Email" name="username" required>
                    <input type="password" placeholder="Mật khẩu" name="password" required>
                    <button style="background-color: #ff6400; " type="submit" href="" class="btn">Đăng nhập </button>
                    <a style="background-color: #ff6400" class="btn btn-outline-warning" href="/login">Đăng kí</a>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
            integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.26.1/axios.min.js"
            integrity="sha512-bPh3uwgU5qEMipS/VOmRqynnMXGGSRv+72H/N260MQeXZIK4PG48401Bsby9Nq5P5fz7hy5UGNmC/W1Z51h2GQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="../../../js/giohang.js"></script>

</body>
</html>