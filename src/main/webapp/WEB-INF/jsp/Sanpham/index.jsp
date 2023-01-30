<%--<%@ page import="com.example.demo.config.SecurityUtils" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="ie=edge">--%>
<%--    <link rel="icon" href="data:,">--%>
<%--&lt;%&ndash;    <link rel="stylesheet" type="text/css" href="../../../css/bootstrap.min.css">&ndash;%&gt;--%>

<%--    <link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="../../../css/index.css">--%>
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--    <script src="../../../js/sticky.js"></script>--%>
<%--    <script src="../../../js/alert.js"></script>--%>
<%--    <title>Sản phẩm</title>--%>
<%--    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />--%>
<%--</head>--%>

<%--<body>--%>
<%--    <div class ="sticky-top sticky">--%>
<%--        <div class="top"><h1>Danh Sách Sản Phẩm</h1>--%>
<%--            <a href="/" class="btn btn-light">Trang chủ</a>--%>
<%--            <a href="/donhang" class="btn btn-outline-danger">Đơn hàng</a>--%>
<%--            <a href="/phanquyen" class=" btn btn-outline-info">Phân quyền </a>--%>
<%--            <a href="https://docs.google.com/spreadsheets/d/1b9FXB4nybzHDpQcjd-E8vv7Ho0cDHrED8jjg_XNmdUM/edit?usp=sharing" class="btn btn-primary">Thống kê</a>--%>
<%--            <a href="/admin/1" class="btn btn-outline-secondary">Mặc định</a>--%>
<%--            <a href="/admin/sortbyprice/1" class="btn btn-outline-success">Giá tăng dần</a>--%>
<%--            <a href="/admin/listtintuc" class="btn btn-outline-warning">Tin tức</a>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <table class="table table-hover table-striped table-dark">--%>
<%--        <thead class="sticky-top sticky1">--%>
<%--        <th>Id</th>--%>
<%--        <th>Tên sản phẩm</th>--%>
<%--        <th>Mã sản phẩm</th>--%>
<%--        <th>Hình ảnh</th>--%>
<%--        <th>Số lượng</th>--%>
<%--        <th>Giá gốc</th>--%>
<%--        <th>Giá khuyến mãi</th>--%>
<%--        <th>--%>
<%--            <a href="/admin/createsp" class="btn btn-primary">Thêm</a>--%>
<%--            <a href="/admin/loaisp/1" class="btn btn-success">Loại sản phẩm</a>--%>
<%--            <a href="/admin/hieusp/1" class="btn btn-success">Hiệu sản phẩm</a>--%>
<%--        </th>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="sanpham" items="${listSanPham}">--%>
<%--            <tr>--%>
<%--                <td>${sanpham.idSanPham}</td>--%>
<%--                <td>${sanpham.tenSanPham}</td>--%>
<%--                <td>${sanpham.maSanPham}</td>--%>
<%--                <td>--%>
<%--                    <c:choose>--%>
<%--                        <c:when test="${sanpham.hinhAnhSanPham == null}">Chưa có hình ảnh sản phẩm</c:when>--%>
<%--                        <c:otherwise>--%>
<%--                            <img src="../../../uploadImage/${sanpham.hinhAnhSanPham}" alt="hình ảnh sản phẩm" width="150px" height="150px"/>--%>
<%--                        </c:otherwise>--%>
<%--                    </c:choose>--%>
<%--                </td>--%>
<%--                <td>${sanpham.soLuongSanPham}</td>--%>
<%--                <td><fmt:formatNumber type="number" groupingUsed="true" value="${sanpham.giaDeXuat}" />₫</td>--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${sanpham.giaGiam == null}">--%>
<%--                        <td><fmt:formatNumber type="number" groupingUsed="true" value="${sanpham.giaDeXuat}" />₫</td>--%>
<%--                    </c:when>--%>
<%--                    <c:otherwise>--%>
<%--                        <td><fmt:formatNumber type="number" groupingUsed="true" value="${sanpham.giaGiam}" />₫</td>--%>
<%--                    </c:otherwise>--%>
<%--                </c:choose>--%>
<%--                <td>--%>
<%--                    <a href="/admin/edit/${sanpham.idSanPham}" class="btn btn-success">Sửa</a>--%>
<%--                    <a onclick="deleteSanPham(${sanpham.idSanPham})" class="btn btn-danger">Xóa</a>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--   <div class="sticky-bottom">--%>
<%--       <nav aria-label="Page navigation example">--%>
<%--           <ul class="pagination justify-content-end" id="pagination">--%>
<%--           </ul>--%>
<%--       </nav>--%>
<%--   </div>--%>

<%--<script>--%>
<%--    let x = location.href;--%>
<%--    console.log(x);--%>
<%--    let pos = x.search('sortbyprice');--%>
<%--    if(pos == -1){--%>
<%--        let pagination = '<li class="page-item <c:if test="${page==1}">disabled</c:if>"><a class="page-link" href="/admin/${page - 1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span><span class="sr-only"></span></a></li>'--%>
<%--    for(let i = 1 ; i <= '${totalpage}'; i++){--%>
<%--        if('${currentPage}' == i){--%>
<%--            pagination += '<li class="page-item active"><a class="page-link" href="/admin/'+(i)+' ">' + (i) + '</a></li>'--%>
<%--        }--%>
<%--        else {--%>
<%--            pagination += '<li class="page-item"><a class="page-link" href="/admin/'+(i)+' ">' + (i) + '</a></li>'--%>
<%--        }--%>
<%--    }--%>
<%--    pagination += '<li class="page-item <c:if test="${currentPage == totalpage}">disabled</c:if>"><a class="page-link" href="/admin/${page + 1}" aria-label="Next"><span aria-hidden="true">&raquo;</span><span class="sr-only"></span></a></li>'--%>
<%--    document.getElementById('pagination').innerHTML = pagination--%>

<%--    }else{--%>
<%--        let pagination = '<li class="page-item <c:if test="${page==1}">disabled</c:if>"><a class="page-link" href="/admin/sortbyprice/${page-1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span><span class="sr-only"></span></a></li>'--%>
<%--        for(let i = 1 ; i <= '${totalpage}'; i++){--%>
<%--            if('${currentPage}' == i){--%>
<%--                pagination += '<li class="page-item active"><a class="page-link" href="/admin/sortbyprice/'+(i)+' ">' + (i) + '</a></li>'--%>
<%--            }--%>
<%--            else {--%>
<%--                pagination += '<li class="page-item"><a class="page-link" href="/admin/sortbyprice/'+(i)+' ">' + (i) + '</a></li>'--%>
<%--            }--%>
<%--        }--%>
<%--        pagination += '<li class="page-item <c:if test="${currentPage == totalpage}">disabled</c:if>"><a class="page-link"  href="/admin/sortbyprice/${page + 1}" aria-label="Next"><span aria-hidden="true">&raquo;</span><span class="sr-only"></span></a></li>'--%>
<%--        document.getElementById('pagination').innerHTML = pagination--%>
<%--    }--%>
<%--</script>--%>

<%--</body>--%>
<%--</html>--%>