<%@ page import="com.example.demo.config.SecurityUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="#">
  <title>
    Quản lý phân quyền
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
</head>

<body class="g-sidenav-show   bg-gray-100">
  <div class="min-height-300 bg-primary position-absolute w-100"></div>
  <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" target="_blank">
        <img src="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" alt="main_logo">
        <span class="ms-1 font-weight-bold">Quản lý</span>
      </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" href="/phanquyen">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-calendar-grid-58 text-warning text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Phân quyền</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="/donhang">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-credit-card text-success text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Đơn hàng</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="/admin/loaisp/1">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-app text-info text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Danh mục</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="/admin/hieusp/1">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-world-2 text-danger text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Thương hiệu</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="/admin/1">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Sản phẩm</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="https://docs.google.com/spreadsheets/d/1b9FXB4nybzHDpQcjd-E8vv7Ho0cDHrED8jjg_XNmdUM/edit?usp=sharing">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Thống kê</span>
          </a>
        </li>
        
      </ul>
    </div>
    <div class="sidenav-footer mx-3 ">
      <a href="#" target="_blank" class="btn btn-dark btn-sm w-100 mb-3">Documentation</a>
      <a class="btn btn-primary btn-sm mb-0 w-100" href="#" type="button">Upgrade to pro</a>
    </div>
  </aside>
  <main class="main-content position-relative border-radius-lg ">
    <!-- Navbar -->
    <main class="main-content position-relative border-radius-lg ">
      <!-- Navbar -->
      <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
        <div class="container-fluid py-1 px-3">
          <nav aria-label="breadcrumb">
            <h4 class="font-weight-bolder text-white mb-0">Xin chào <strong style="color: #ff6400">Admin</strong> </h4>
          </nav>
          <div style="float: right;" class="right-panel">
            <a style="color: #9be010" href="/">Trang chủ</a>
            <a style="color: #9be010" href="/logout">Thoát</a>
          </div>
        </div>
      </nav>
    </main>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <h5>Danh sách thành viên đăng kí</h5>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
              <table class="table table-hover table-striped table-dark">
                  <thead  class="sticky-top sticky1">
                  <th style=" width: 310px ;padding-left: 150px"> ID</th>
                  <th> Người dùng</th>
                  <th> Email</th>
                  <th> Cấp độ</th>
                  <th> Chi tiết</th>
                  </thead>
                  <tbody>
                  <c:forEach var="u" items="${user}">
                    <tr>
                      <td style="padding-left: 150px">${u.userId.userId}</td>
                      <td>${u.userId.userName}</td>
                      <td>${u.userId.email}</td>
                      <td>
                          ${u.roleId.roleName}
                      </td>
                      <td class="product-removal">
                        <a href="/chitietphanquyen/${u.userId.userId}" class="btn btn-sm btn-warning">Chi tiết</a>
                      </td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>

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
</body>

</html>