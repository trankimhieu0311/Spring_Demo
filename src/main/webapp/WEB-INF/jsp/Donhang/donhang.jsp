<%@ page import="com.example.demo.config.SecurityUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="#">
    <title>
        Quản lý
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Nucleo Icons -->
    <link href="../../../css/Dashboard/nucleo-icons.css" rel="stylesheet" />
    <link href="../../../css/Dashboard/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="../../../css/Dashboard/nucleo-svg.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link id="pagestyle" href="../../../css/Dashboard/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
</head>

<body class="g-sidenav-show   bg-gray-100">
<div class="min-height-300 bg-primary position-absolute w-100"></div>

<main class="main-content position-relative border-radius-lg ">
    <!-- Navbar -->
    <button style="width: 100px; height: 40px; margin: 15px 0 0 15px  " type="button" class="btn btn-danger" onclick="quay_lai_trang_truoc()">Trở lại</button>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
        <div class="row">
            <div class="col-12">
                <div class="card mb-4">
                    <div class="card-header pb-0">
                        <h4>Đơn hàng</h4>
                    </div>
                    <div class="card-body px-0 pt-0 pb-2">
                        <div class="table-responsive p-0">

                            <table class="table table-hover table-striped table-dark">

                                <thead style="color: #ff6400" class="sticky-top sticky1">
                                <th> Mã đơn hàng</th>
                                <th> Tên người nhận</th>
                                <th> Địa chỉ</th>
                                <th> Điện thoại</th>
                                <th> Thanh toán bằng</th>
                                <th> Trạng thái đơn hàng</th>
                                <th> Xóa/Chi tiết</th>
                                </thead>
                                <tbody>
                                <c:forEach var="bill" items="${bills}">
                                    <tr >
                                        <td style="padding-left: 25px">${bill.id}</td>
                                        <td style="padding-left: 25px">${bill.userName}</td>
                                        <td style="white-space:break-spaces; ">${bill.address}</td>
                                        <td style="padding-left: 25px">${bill.phoneNumber}</td>
                                        <td style="padding-left: 25px">
                                            <c:if test="${bill.phuongThucThanhToan == 1}">Tiền mặt</c:if>
                                            <c:if test="${bill.phuongThucThanhToan == 2}">Momo</c:if>
                                            <c:if test="${bill.phuongThucThanhToan == 3}">Paypal</c:if>
                                        </td>
                                        <td style="padding-left: 25px">
                                            <c:if test="${bill.trangThai == 1}"><p>Chờ xác nhận</p></c:if>
                                            <c:if test="${bill.trangThai == 2}"><p>Đang đóng gói</p></c:if>
                                            <c:if test="${bill.trangThai == 3}"><p>Đang vận chuyển</p></c:if>
                                            <c:if test="${bill.trangThai == 4}"><p>Đơn hủy</p></c:if>
                                            <c:if test="${bill.trangThai == 5}"><p>Hoàn thành</p></c:if>
                                        </td>
                                        <td style="padding-left: 25px" lass="product-removal">
                                            <a href="/removetorder/${bill.id}" class="btn btn-sm btn-danger">Xóa </a><br>
                                            <a style="padding: 10px 24px" href="/Chitietdonhang/${bill.id}" class="btn btn-sm btn-warning">Chi tiết</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="sticky-bottom">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end" id="pagination"></ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    let pagination = '<li class="page-item <c:if test="${page==1}">disabled</c:if>"><a class="page-link" href="/admin/loaisp/${page-1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span><span class="sr-only"></span></a></li>'
    for(let i = 1 ; i <= '${totalpage}'; i++){
        if('${currentPage}' == i){
            pagination += '<li class="page-item active"><a class="page-link" href="/admin/loaisp/'+(i)+' ">' + (i) + '</a></li>'
        }
        else {
            pagination += '<li class="page-item"><a class="page-link" href="/admin/loaisp/'+(i)+' ">' + (i) + '</a></li>'
        }
    }
    pagination += '<li class="page-item <c:if test="${currentPage==totalpage}">disabled</c:if>"><a class="page-link" href="/admin/loaisp/${page+1}" aria-label="Next"><span aria-hidden="true">&raquo;</span><span class="sr-only"></span></a></li>'
    document.getElementById('pagination').innerHTML = pagination
</script>
<!--   Core JS Files   -->
<script src="../../../js/Dashboard/core/popper.min.js"></script>
<script src="../../../js/Dashboard/core/bootstrap.min.js"></script>
<script src="../../../js/Dashboard/plugins/perfect-scrollbar.min.js"></script>
<script src="../../../js/Dashboard/plugins/smooth-scrollbar.min.js"></script>
<script>

    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../../../js/Dashboard/argon-dashboard.min.js?v=2.0.4"></script>
<script>
    function quay_lai_trang_truoc(){
        history.back();
    }
</script>
</body>

</html>