<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Loại sản phẩm</title>
      <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
         <link rel="stylesheet" type="text/css" href="../../../css/bootstrap.min.css">
         <link rel="stylesheet" type="text/css" href="../../../css/style.css">
         <link rel="stylesheet" href="../../../css/responsive.css">
         <link rel="icon" href="data:,">
         <link rel="stylesheet" href="../../../css/jquery.mCustomScrollbar.min.css">
         <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
         <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
         <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext" rel="stylesheet">
         <link rel="stylesheet" href="../../../css/owl.carousel.min.css">
         <link rel="stylesoeet" href="../../../../css/owl.theme.default.min.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
         <link rel="stylesheet" type="text/css" href="../../../css/login.css">
      <script>
            function startScroll() {
                  window.scrollBy(0, 620);
            }
           window.onload = startScroll;
         </script>
   </head>
   <button id="myBtn2" style="background:#FFFFFF" onclick="window.location.href='https://www.facebook.com/nhat.kenpj'">
      <img src="https://inkythuatso.com/uploads/thumbnails/800/2021/10/logo-messenger-inkythuatso-2-01-30-15-48-06.jpg"  width='40px'/>
   </button>
   <body>
      <!-- banner bg main start -->
      <div class="banner_bg_main">
         <!-- header top section start -->
         <!-- header top section start -->

         <!-- logo section start -->
         <div class="col-sm-12">
            <a  href="/" style="font-size: 2.5em; " class="logo"><u style="color: #ff6400"><b style="color: #00FFFF">Nhật<i style="color: #ff6400"> Moblie</i></b></u></a>
         </div>
         <!-- logo section end -->

         <!-- header section start -->
         <div class="header_section">
            <div class="container">
               <div class="containt_main">
                  <div id="closeNAV" onclick="closeNav()">
                  <div id="mySidenav" class="sidenav">
                     <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                     <c:forEach var="c" items="${listTenHieuSanPham}">
                        <a href="/indexhieusanpham/${c.idHieuSanPham}">${c.tenHieuSanPham}</a>
                     </c:forEach>
                  </div>
                  </div>
                  <span class="toggle_icon" onclick="openNav()"><img src="../../../images/toggle-icon.png"></span>
                  <div class="dropdown">
                     <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Danh mục
                     </button>
                     <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <c:forEach var="c" items="${listTenLoaiSanPham}">
                           <a class="dropdown-item" href="/indexloaisanpham/${c.idLoaiSp}">${c.tenLoaiSp}</a>
                        </c:forEach>
                     </div>
                  </div>
                  <div class="main">
                     <form action="/timkiem" method="get">
                        <!-- Another variation with a button -->
                        <div style="width: 450px" class="input-group">
                           <input id="keyword" name="keyword" type="text" class="form-control" placeholder="Bạn tìm gì ... ">
                           <div class="input-group-append">
                              <button class="btn btn-secondary" type="submit" style="background-color: #f26522; border-color:#f26522 ">
                                 <i class="fa fa-search"></i>
                              </button>
                              <select id="price" name="price" style="z-index: 9; border: none; height: 20px; margin: auto 0 auto -120px">
                                 <option value=""></option>
                                 <option value="1000000"> 1 triệu</option>
                                 <option value="10000000"> 10 triệu</option>
                                 <option value="20000000"> 20 triệu</option>
                                 <option value="30000000"> 30 triệu</option>
                                 <option value="40000000"> 40 triệu</option>
                              </select>
                           </div>
                        </div>
                     </form>
                  </div>
                  <div class="header_box">
                     <div class="login_menu">
                        <ul>
                           <li><a href="/giohang">
                              <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                              <span  class="padding_10"><strong>Giỏ hàng(${count})</strong></span></a>
                           </li>

                           <c:choose>
                              <c:when test="${userCurrent != 'anonymousUser'}">


                                 <div style=" margin-left: 10px" class="dropdown">
                                    <i style="color: #FFF" class="fa fa-user" aria-hidden="true"></i>
                                    <a style="color: #FFF; margin-left: -5px; text-transform: uppercase" class="btn dropdown-toggle" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${userCurrent}
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                       <a class="dropdown-item" href="/logout">Thoát</a>
                                       <c:if test="${roleCurrent == '[ROLE_ADMIN]'}">
                                          <a class="dropdown-item" href="/admin/1">Admin</a>
                                       </c:if>
                                       <a class="dropdown-item" href="/Khachhang/${userr.userId}">Đơn hàng của tôi</a>
                                       <a class="dropdown-item" href=#>Đổi mật khẩu</a>
                                    </div>
                                 </div>

                              </c:when>
                              <c:otherwise>
                           <li><a id="login" href="#" onclick="onClickLoginPage()">
                              <i class="fa fa-user" aria-hidden="true"></i>
                              <span class="padding_10"><strong>Đăng nhập</strong></span></a>
                              <%--__________________________________________________________________________________________________--%>
                              <div style="display: none" id="myForm">
                                 <div class="form-popup"   onclick="closeLoginPage()">
                                    <div class="closepopup">
                                       <svg xmlns="http://www.w3.org/2000/svg" display="block" width="30" height="30" fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
                                          <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                          <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                                       </svg>
                                    </div>
                                 </div>
                                 <form action="/j_spring_security_check" class="form-container" method="post">
                                    <h1 style="color: #0dcaf0">Đăng nhập</h1>

                                    <input type="text" placeholder="Email" name="username" required>

                                    <input type="password" placeholder="Mật khẩu" name="password" required>

                                    <button type="submit" class="btn">Đăng nhập</button>
                                    <a class="btn btn-outline-warning" href="/login">Đăng kí</a>
                                 </form>
                              </div>
                              <%-----------------------------------------------------------------------------------------------------------------------%>
                           </li>
                           </c:otherwise>
                           </c:choose>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- header section end -->

         <!-- banner section start -->/
         <div style="padding: 30px" class="banner_section layout_padding">
            <div class="container">
               <div id="my_slider" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Uy tín <br> tạo nên thương hiệu</h1>
<%--                              <div class="buynow_bt"><a href="#">Mua ngay</a></div>--%>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Make believe<br> Hãy tin tưởng</h1>
<%--                              <div class="buynow_bt"><a href="#">Mua ngay</a></div>--%>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Think different <br> Hãy suy nghĩ khác biệt</h1>
<%--                              <div class="buynow_bt"><a href="#">Mua ngay</a></div>--%>
                           </div>
                        </div>
                     </div>
                  </div>
                  <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="prev">
                     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  </a>
                  <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
                     <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  </a>
               </div>
            </div>
         </div>
         <!-- banner section end -->
      </div>
      <!-- banner bg main end -->


      <!-- fashion section start -->
      <div style="padding-top: 30px" class="fashion_section">
         <div class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <h1 style="color: #ff6400" class="fashion_taital" id="title">${tenLoaiSanPham.tenLoaiSp}</h1>
                     <div class="fashion_section_2">
                        <div class="carousel slide" data-ride="carousel" style="position: static">
                           <div class="carousel-inner">
                              <div class="carousel-item active" style="display: flex; overflow: hidden; scroll-snap-type: x mandatory;" id="scrollProducts" >
                                 <c:forEach var="sanpham" items="${listSanPhambyLoai}">
                                    <div class="col-lg-3 col-sm-3" style="scroll-snap-align: start;">
                                       <div class="box_main" style="border-radius: 20px; border: 1px solid rgba(13,202,240,0.27) ">
                                          <h4 class="shirt_text" style="white-space: nowrap;overflow: hidden;text-overflow: ellipsis;">${sanpham.tenSanPham}</h4>
                                          <p class="price_text">Giá:
                                             <span style="color: #262626;">
                                          <c:choose>
                                             <c:when test="${sanpham.giaGiam == null}">
                                                <fmt:formatNumber type="number" groupingUsed="true" value="${sanpham.giaDeXuat}"/>₫
                                             </c:when>
                                             <c:otherwise>
                                                <fmt:formatNumber type="number" groupingUsed="true" value="${sanpham.giaGiam}"/>₫
                                             </c:otherwise>
                                          </c:choose>
                                       </span>
                                          </p>
                                          <strike><p class="price_text"><span style="color: #a43636;"><fmt:formatNumber type="number" groupingUsed="true" value="${sanpham.giaDeXuat}"/>₫</span></p></strike>
                                          <a href="/addtocart?id=${sanpham.idSanPham}&soluong=1">
                                             <div style="margin: 0; min-height: 250px" class="tshirt_img"><img src="../../../uploadImage/${sanpham.hinhAnhSanPham}" width="270px"></div></a>
                                          <div class="btn_main">
                                             <div class="buy_bt"><a href="/addtocart?id=${sanpham.idSanPham}&soluong=1">Mua ngay</a></div>
                                             <div class="seemore_bt"><a href="/detailsap/${sanpham.idSanPham}">Xem thêm</a></div>
                                          </div>
                                       </div>
                                    </div>
                                 </c:forEach>
                              </div>
                           </div>
                           <a onclick="scrollOnLeft()" class="carousel-control-prev" style=" border-radius: 50%; background-color: rgba(204,164,60,0.67); width: 100px; top: 50% ; left: 100px; height: 100px">
                              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                              <span class="sr-only">Previous</span>
                           </a>
                           <a onclick="scrollOnRight()" class="carousel-control-next" style=" border-radius: 50%; background-color: rgba(204,164,60,0.67); width: 100px; top: 50% ; right: 100px; height: 100px">
                              <span class="carousel-control-next-icon" aria-hidden="true"></span>
                              <span class="sr-only">Next</span>
                           </a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="loader_main">
                  <div class="loader"></div>
               </div>
            </div>
         </div>
      </div>

      <!-- fashion section end -->

      <!-- footer section start -->
      <div class="footer_section layout_padding">
         <div style="display: flex; margin: 0 auto; width: 60%; margin-bottom: 0">
            <c:forEach var="c" items="${listTenHieuSanPham}">
               <div style="margin-right: 15px">
                  <a href="/indexhieusanpham/${c.idHieuSanPham}"><img src="../../../uploadImageBrand/${c.hinhAnhHieuSanPham}" style="border-radius: 5px; width: 500px; height: 60%"></a>
               </div>
            </c:forEach>
         </div>
         <div style="padding: 0" class="container">
            <div style="font-size: 2.5em; " class="logo"><b style="color: #0dcaf0">Nhật<i style="color: #ff6400"> Moblie</i></b></div>
         </div>
         <!-- Footer -->
         <footer style="padding-top: 0" class="footer_section layout_padding">

            <!-- Section: Links  -->
            <section class="">
               <div style="color: #fff3cd" class="container text-center text-md-start mt-5">
                  <!-- Grid row -->
                  <div class="row mt-3">
                     <!-- Grid column -->
                     <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 style="color:#ff6400; font-size: 1.3em " class="text-uppercase fw-bold mb-4">
                           <i class="fas fa-gem me-3"></i>Chúng tôi
                        </h6>
                        <p>
                           Cung cấp sản phẩm chất lượng từ các thương hiệu SmartPhones.
                           Đầy đủ tất cả dịch vụ khách hàng cần
                        </p>
                     </div>
                     <!-- Grid column -->

                     <!-- Grid column -->
                     <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 style="color: #ff6400; font-size: 1.3em" class="text-uppercase fw-bold mb-4">
                           Chuyên
                        </h6>
                        <p>
                           <a  class="text-reset">Sữa chữa</a>
                        </p>
                        <p>
                           <a  class="text-reset">Ép kính</a>
                        </p>
                        <p>
                           <a  class="text-reset">Thay pin</a>
                        </p>
                        <p>
                           <a  class="text-reset">Thay màn</a>
                        </p>
                     </div>
                     <!-- Grid column -->

                     <!-- Grid column -->
                     <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 style="color: #ff6400; font-size: 1.2em; width: 178px; margin-left: 15px" class="text-uppercase fw-bold mb-4">
                           Hỗ trợ khách hàng
                        </h6>
                        <p style="width: 170px">
                           <a  class="text-reset">Quy trình vận chuyển</a>
                        </p>
                        <p style="width: 170px">
                           <a class="text-reset">Quy trình đổi trả</a>
                        </p>
                        <p style="width: 170px">
                           <a class="text-reset">Hướng dẫn trả góp</a>
                        </p>
                        <p style="width: 170px">
                           <a class="text-reset">Chính sách bảo hành</a>
                        </p>
                     </div>
                     <!-- Grid column -->

                     <!-- Grid column -->
                     <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <!-- Links -->
                        <h6 style="color: #ff6400; font-size: 1.3em" class="text-uppercase fw-bold mb-4">Liên hệ</h6>
                        <p><i class="fa fa-home"></i> 94 ĐỖ QUANG, ĐN</p>
                        <p>
                           <i class="fa fa-facebook"></i>
                           facebook.com/nhat.kenpj
                        </p>
                        <p><i class="fa fa-mobile"></i> + 0905 834 323 </p>
                        <p><i class="fa fa-mobile"></i> + 0702 459 959 </p>
                     </div>
                     <!-- Grid column -->
                  </div>
                  <!-- Grid row -->
               </div>
            </section>
            <!-- Section: Links  -->


         </footer>

         <!-- Footer -->

      </div>
      <!-- footer section end -->



      <!-- Javascript files-->
      <script src="../../../js/jquery.min.js"></script>
      <script src="../../../js/popper.min.js"></script>
      <script src="../../../js/bootstrap.bundle.min.js"></script>
      <script src="../../../js/jquery-3.0.0.min.js"></script>
      <script src="../../../js/plugin.js"></script>
      <!-- sidebar -->
      <script src="../../../js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="../../../js/custom.js"></script>
      <script src="../../../js/scriptIndex.js"></script>

   </body>
</html>