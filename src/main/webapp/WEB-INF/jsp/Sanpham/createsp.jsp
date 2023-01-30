<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <title>Thêm sản phẩm</title>
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

<form class="form" id="createForm" enctype="multipart/form-data">

    <div class="form-group">
        <label for="tenSanPham">Tên sản phẩm</label>
        <input type="text" class="form-control" id="tenSanPham" name="tenSanPham" placeholder="Nhập tên sản phẩm" onchange="validateTenSanPham()">
        <label hidden id="validTenSanPham" style="color: red"></label>
    </div>

    <div class="form-group">
        <label for="maSanPham">Mã sản phẩm</label>
        <input type="text" class="form-control" id="maSanPham" name="maSanPham" placeholder="Nhập mã sản phẩm" onchange="validateMaSanPham()">
        <label hidden id="validMaSanPham" style="color: red"></label>
    </div>

    <div class="form-group">
        <label for="file">Hình ảnh sản phẩm</label>
        <input type="file" class="form-control form-control-sm" id="file" name="file" onchange="loadFile(event)">
        <br>
        <img src="../uploadImage/${sanPham.hinhAnhSanPham}" alt="hình ảnh sản phẩm" id="image" width="200px" height="200px" style="display: none"/>
    </div>

    <div class="form-group">
        <label for="moTa">Đặc điểm nổi bật</label>
        <textarea type="text" class="form-control" id="moTa" name="moTa" placeholder="Nhập mô tả" onchange="validateDacDiemSanPham()"></textarea>
        <label hidden id="validDacDiemSanPham" style="color: red"></label>
    </div>

    <div class="form-group">
        <label for="soLuongSanPham">Số lượng</label>
        <input type="number" min="0" class="form-control" id="soLuongSanPham" name="soLuongSanPham" placeholder="Nhập số lượng sản phẩm" onchange="validateSoLuongSanPham()">
        <label hidden id="validSoLuongSanPham" style="color: red"></label>
    </div>

    <div class="form-group">
        <label for="giaDeXuat">Giá gốc</label>
        <input type="number" min="0" class="form-control mask" id="giaDeXuat" name="giaDeXuat" placeholder="Nhập giá gốc sản phẩm" onchange="validateGiaDeXuat()">
        <label hidden id="validGiaDeXuat" style="color: red"></label>
    </div>

    <div class="form-group">
        <label for="giaGiam">Giá khuyến mãi</label>
        <input type="number" min="0" class="form-control mask" id="giaGiam" name="giaGiam" placeholder="Nhập giá khuyến mãi sản phẩm">
    </div>

    <div class="form-group">
        <label for="thoigianbaohanh">Thời gian bảo hành</label>
        <select name="thoigianbaohanh" id="thoigianbaohanh">
            <option value="3">3 tháng</option>
            <option value="6">6 tháng</option>
            <option value="12">12 tháng</option>
        </select>
    </div>

    <div class="form-group">
        <label for="giaGiam">Hiệu sản phẩm</label>
        <select name="hieusanpham" id="hieusanpham">
            <c:forEach var="hieuSanPham" items="${listHieuSanPham}">
            <option value="${hieuSanPham.idHieuSanPham}">${hieuSanPham.tenHieuSanPham}</option>
            </c:forEach>
        </select>
    </div>

    <div class="form-group">
        <label for="giaGiam">Loại sản phẩm</label>
        <select name="loaisp" id="loaisp">
            <c:forEach var="loaiSanPham" items="${listLoaiSanPham}">
                <option value="${loaiSanPham.idLoaiSp}">${loaiSanPham.tenLoaiSp}</option>
            </c:forEach>
        </select>
    </div>
    <button onclick="alertCreateSanPham()" type="button" class="btn btn-primary">Thêm </button>
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