<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <title>Cập nhật sản phẩm</title>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
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

<form class="form" id="updateForm" enctype="multipart/form-data">
    <div class="form-group" hidden>
        <label for="idSanPham">Id sản phẩm</label>
        <input type="number" class="form-control" id="idSanPham" value="${sanPham.idSanPham}" name="idSanPham" readonly>
    </div>
    <div class="form-group">
        <label for="tenSanPham">Tên sản phẩm</label>
        <input type="text" class="form-control" id="tenSanPham" value="${sanPham.tenSanPham}" name="tenSanPham">
        <label hidden id="validTenSanPham" style="color: red"></label>
    </div>
    <div class="form-group">
        <label for="maSanPham">Mã sản phẩm</label>
        <input type="text" class="form-control" id="maSanPham" value="${sanPham.maSanPham}" name="maSanPham">
        <label hidden id="validMaSanPham" style="color: red"></label>
    </div>
    <div class="form-group">
        <label for="file">Hình ảnh sản phẩm</label>
        <input id="hinhAnhSanPham" name="hinhAnhSanPham" value="${sanPham.hinhAnhSanPham}" hidden>
        <input type="file" id="file" name="file" class="form-control form-control-sm" onchange="loadFile(event)" value="${sanPham.hinhAnhSanPham}">
        <br>
        <img src="../../../uploadImage/${sanPham.hinhAnhSanPham}" alt="hình ảnh sản phẩm" id="image" width="200px" height="200px" />
    </div>
    <div class="form-group">
        <label for="moTa">Đặc điểm nổi bật</label>
        <textarea type="text" class="form-control" id="moTa" name="moTa" >${sanPham.moTa}</textarea>
        <label hidden id="validDacDiemSanPham" style="color: red"></label>
    </div>
    <div class="form-group">
        <label for="soLuongSanPham">Số lượng</label>
        <input type="number" min="0" class="form-control" id="soLuongSanPham" value="${sanPham.soLuongSanPham}" name="soLuongSanPham">
        <label hidden id="validSoLuongSanPham" style="color: red"></label>
    </div>
    <div class="form-group">
        <label for="giaDeXuat">Giá gốc</label>
        <input type="number" min="0" class="form-control mask" id="giaDeXuat" value="${sanPham.giaDeXuat}" name="giaDeXuat" >
        <label hidden id="validGiaDeXuat" style="color: red"></label>
    </div>
    <div class="form-group">
        <label for="giaGiam">Giá khuyến mãi</label>
        <input type="number" min="0" class="form-control mask" id="giaGiam" value="${sanPham.giaGiam}" name="giaGiam" >
    </div>

    <div class="form-group">
        <label for="thoigianbaohanh">Thời gian bảo hành</label>
        <select name="thoigianbaohanh" id="thoigianbaohanh">
            <option value="3" <c:if test="${sanPham.thoigianbaohanh == 3}">selected</c:if>>3 tháng</option>
            <option value="6" <c:if test="${sanPham.thoigianbaohanh == 6}">selected</c:if>>6 tháng</option>
            <option value="12" <c:if test="${sanPham.thoigianbaohanh == 12}">selected</c:if>>12 tháng</option>
        </select>
    </div>

    <div style="margin-bottom: 5px" class="form-group">
        <label for="giaGiam">Hiệu sản phẩm</label>
        <select name="hieusanpham" id="hieusanpham">
            <c:forEach var="hieuSanPham" items="${listHieuSanPham}">
                <c:choose>
                    <c:when test="${hieuSanPham.idHieuSanPham == sanPham.hieusanpham.idHieuSanPham}">
                    <option value="${hieuSanPham.idHieuSanPham}" selected>${hieuSanPham.tenHieuSanPham}</option>
                    </c:when>
                <c:otherwise>
                    <option value="${hieuSanPham.idHieuSanPham}">${hieuSanPham.tenHieuSanPham}</option>
                </c:otherwise>
                </c:choose>
            </c:forEach>
        </select>
    </div>
    <div class="form-group">
        <label for="giaGiam">Loại sản phẩm</label>
        <select name="loaisp" id="loaisp">
            <c:forEach var="loaiSanPham" items="${listLoaiSanPham}">
                <c:choose>
                    <c:when test="${loaiSanPham.idLoaiSp == sanPham.loaisp.idLoaiSp}">
                        <option value="${loaiSanPham.idLoaiSp}" selected>${loaiSanPham.tenLoaiSp}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${loaiSanPham.idLoaiSp}">${loaiSanPham.tenLoaiSp}</option>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </select>
    </div>
    <button type="button" onclick="alertUpdateSanPham()" class="btn btn-primary">Cập nhật</button>
</form>

<script>
    $("input.mask").each((i,ele)=>{
        let clone=$(ele).clone(false)
        clone.attr("type","text")
        let ele1=$(ele)
        clone.val(Number(ele1.val()).toLocaleString("en"))
        $(ele).after(clone)
        $(ele).hide()
        clone.mouseenter(()=>{
            ele1.show()
            clone.hide()
        })
        setInterval(()=>{
            let newv=Number(ele1.val()).toLocaleString("en")
            if(clone.val()!=newv){
                clone.val(newv)
            }
        },10)
        $(ele).mouseleave(()=>{
            $(clone).show()
            $(ele1).hide()
        })
    })
</script>
</body>
</html>