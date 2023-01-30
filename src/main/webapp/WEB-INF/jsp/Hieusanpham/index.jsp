<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <title>Hiệu sản phẩm</title>--%>
<%--    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="ie=edge">--%>
<%--    <link rel="icon" href="data:,">--%>
<%--    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link rel="stylesheet" type="text/css" href="../../../css/index.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="../../../css/logobrand.css">--%>
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--    <script src="../../../js/alert.js"></script>--%>
<%--    <script src="../../../js/sticky.js"></script>--%>

<%--</head>--%>

<%--<body>--%>
<%--<div class ="sticky-top sticky">--%>
<%--    <div class="top"><h1>Danh Sách Hiệu Sản Phẩm</h1>--%>
<%--        <a href="/admin/1" class="btn btn-warning">Trở lại</a>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<table class="table table-hover table-dark table-striped">--%>
<%--    <thead class="sticky-top sticky1">--%>
<%--        <th>Tên hiệu sản phẩm</th>--%>
<%--        <th>Logo</th>--%>
<%--        <th>Trạng Thái</th>--%>
<%--        <th>--%>
<%--            <a href="/admin/createhieusp" class="btn btn-primary">Thêm</a>--%>
<%--&lt;%&ndash;            <a href="/admin/loaisp/1" class="btn btn-success">Loại sản phẩm</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="/admin/1" class="btn btn-success">Sản phẩm</a>&ndash;%&gt;--%>
<%--        </th>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--        <c:forEach var="listHieuSanPham" items="${listHieuSanPham}">--%>
<%--            <tr>--%>
<%--                <td>${listHieuSanPham.tenHieuSanPham}</td>--%>
<%--                <td>--%>
<%--                    <c:choose>--%>
<%--                        <c:when test="${listHieuSanPham.hinhAnhHieuSanPham == null}">Chưa có logo</c:when>--%>
<%--                        <c:otherwise>--%>
<%--                                <img class="logobrand" src="../../../uploadImageBrand/${listHieuSanPham.hinhAnhHieuSanPham}" alt="logo_brand">--%>
<%--                        </c:otherwise>--%>
<%--                    </c:choose>--%>
<%--                </td>--%>
<%--                <td><c:choose>--%>
<%--                    <c:when test="${listHieuSanPham.tinhTrang == 1}">Kích hoạt</c:when>--%>
<%--                    <c:otherwise>Không kích hoạt</c:otherwise>--%>
<%--                </c:choose></td>--%>
<%--                <td>--%>
<%--                    <a href="/admin/updatehieusp/${listHieuSanPham.idHieuSanPham}" class="btn btn-success">Sửa</a>--%>
<%--                    <a onclick="deleteHieuSanPham(${listHieuSanPham.idHieuSanPham})" class="btn btn-danger">Xóa</a>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>

<%--<div class="sticky-bottom">--%>
<%--    <nav aria-label="Page navigation example">--%>
<%--        <ul class="pagination justify-content-end" id="pagination">--%>
<%--        </ul>--%>
<%--    </nav>--%>

<%--</div>--%>

<%--<script>--%>
<%--        let pagination = '<li class="page-item <c:if test="${page==1}">disabled</c:if>"><a class="page-link" href="/admin/hieusp/${page-1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span><span class="sr-only"></span></a></li>'--%>
<%--        for(let i = 1 ; i <= '${totalpage}'; i++){--%>
<%--            if('${currentPage}' == i){--%>
<%--                pagination += '<li class="page-item active"><a class="page-link" href="/admin/hieusp/'+(i)+' ">' + (i) + '</a></li>'--%>
<%--            }--%>
<%--            else {--%>
<%--                pagination += '<li class="page-item"><a class="page-link" href="/admin/hieusp/'+(i)+' ">' + (i) + '</a></li>'--%>
<%--            }--%>
<%--        }--%>
<%--        pagination += '<li class="page-item <c:if test="${currentPage==totalpage}">disabled</c:if>"><a class="page-link" href="/admin/hieusp/${page+1}" aria-label="Next"><span aria-hidden="true">&raquo;</span><span class="sr-only"></span></a></li>'--%>
<%--        document.getElementById('pagination').innerHTML = pagination--%>
<%--</script>--%>

<%--</body>--%>
<%--</html>--%>