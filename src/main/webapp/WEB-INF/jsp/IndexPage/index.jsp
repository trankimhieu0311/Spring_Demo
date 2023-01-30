<%@ page import="com.example.demo.config.SecurityUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <title> Nhật Moblie </title>
   <link rel="shortcut icon" type="image/png" href="data:image/png;base64,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" />
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
         <link rel="stylesoeet" href="css/owl.theme.default.min.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link rel="stylesheet" type="text/css" href="../../../css/buttonONtop.css">
         <link href='https://css.gg/chevron-double-up-o.css' rel='stylesheet'>
         <link rel="stylesheet" type="text/css" href="../../../css/login.css">

</head>
<button id="myBtn2" style="background:#FFFFFF" onclick="window.location.href='https://www.facebook.com/nhat.kenpj'">
   <img src="https://inkythuatso.com/uploads/thumbnails/800/2021/10/logo-messenger-inkythuatso-2-01-30-15-48-06.jpg"  width='40px'/>
</button>
<body >
<!-- banner bg main start -->
<div class="banner_bg_main">
      <!-- header top section start -->
      <!-- header top section end -->

      <!-- logo section start -->

               <div class="col-sm-12">
                  <div style="font-size: 2.5em; " class="logo"><u style="color: #ff6400"><b style="color: #00FFFF">Nhật<i style="color: #ff6400"> Moblie </i></b></u></div>
               </div>

      <!-- logo section end -->

      <!-- header section start -->
      <div class="header_section">
         <div class="container">
            <div class="containt_main">
               <div id="closeNAV" onclick="closeNav()">
               <div id="mySidenav" class="sidenav" style="font-size: small">
                  <a href="javascript:void(0)" title="close" class="closebtn" onclick="closeNav()">&times;</a>
                  <c:forEach var="hieusanpham" items="${listTenHieuSanPham}">
                     <a href="/indexhieusanpham/${hieusanpham.idHieuSanPham}">${hieusanpham.tenHieuSanPham}</a>
                  </c:forEach>
               </div>
               </div>
               <span class="toggle_icon" onclick="openNav()"><img id="meo" src="../../../images/toggle-icon.png"></span>
               <div class="dropdown">
                  <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Danh mục </button>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                     <c:forEach var="loaisanpham" items="${listTenLoaiSanPham}">
                        <a class="dropdown-item" href="/indexloaisanpham/${loaisanpham.idLoaiSp}">${loaisanpham.tenLoaiSp}</a>
                     </c:forEach>
                  </div>

               </div>

               <div class="main">
                  <form action="/timkiem" method="get">
                  <!-- Another variation with a button -->
                  <div style="width: 450px; " class="input-group">
                     <input id="keyword" name="keyword" type="text" class="form-control" placeholder="Bạn tìm gì ...">
                     <div class="input-group-append">
                        <button class="btn btn-secondary" type="submit" style="background-color: #ff6400; border-color:#FFFFFF ; ">
                        <i class="fa fa-search"></i>
                        </button>
                     </div>

                     <select id="price" name="price" class="CROSS-BODY-hover-button-column" style="z-index: 9; border: none; height: 20px; margin: auto 0 auto -120px">
                        <option value=""></option>
                        <option value="1000000"> 1 triệu</option>
                        <option value="10000000"> 10 triệu</option>
                        <option value="20000000"> 20 triệu</option>
                        <option value="30000000"> 30 triệu</option>
                        <option value="40000000"> 40 triệu</option>
                     </select>

                  </div>
                  </form>
               </div>
               <div class="header_box">
                  <div class="login_menu">
                     <ul>
                        <li><a href="/giohang">
                           <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                           <span  class="padding_10" id='lblCartCount'><strong>${count}</strong></span><strong>Giỏ hàng</strong></a>
                        </li>
                        <c:choose>
                           <c:when test="${userCurrent != 'anonymousUser'}">
                              <div style=" margin-left: 10px" class="dropdown">
                                 <i style="color: #ff6400" class="fa fa-user" aria-hidden="true"></i>
                                 <a style="color: #ff6400; margin-left: -5px; text-transform: uppercase" class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${userCurrent}
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
                           <div style="display: none;  word-wrap: break-word" id="myForm">
                              <div class="form-popup"  onclick="closeLoginPage()">
                                 <div class="closepopup">
                                 <svg xmlns="http://www.w3.org/2000/svg" display="block" width="30" height="30" fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                                 </svg>
                                 </div>
                              </div>
                                 <form action="/j_spring_security_check" class="form-container" method="post">
                                    <h1 style="color:#ff6400"s>Đăng nhập</h1>

                                    <input type="text" placeholder="Email" name="username" required>

                                    <input type="password" placeholder="Mật khẩu" name="password" required>

                                    <button style="background-color: #ff6400" type="submit" class="btn">Đăng nhập</button>
                                    <a style="background-color: #ff6400" class="btn btn-outline-warning" href="/login">Đăng kí</a>
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

      <!-- banner section start -->
      <div style="padding: 30px" class="banner_section layout_padding">
         <div class="container">
            <div id="my_slider" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <div class="row">
                        <div class="col-sm-12">
                           <h1 class="banner_taital"> Uy tín <br> Tạo nên thương hiệu</h1>
<%--                           <div class="buynow_bt"><a href="#">Mua ngay</a></div>--%>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <div class="row">
                        <div class="col-sm-12">
                           <h1 class="banner_taital">Make believe<br> Hãy tin tưởng</h1>
<%--                           <div class="buynow_bt"><a href="#"> Mua ngay</a></div>--%>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <div class="row">
                        <div class="col-sm-12">
                           <h1 class="banner_taital">Think different <br> Hãy suy nghĩ khác biệt</h1>
<%--                           <div class="buynow_bt"><a href="#">Mua ngay </a></div>--%>
                        </div>
                     </div>
                  </div>
               </div>
               <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="prev" hidden>
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
               </a>
               <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next" hidden>
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
               </a>
            </div>
         </div>
      </div>
      <!-- banner section end -->
</div>
<!-- banner bg main end -->

<%--star products--%>
<div style="padding: 20px; margin-top: 20px" class="fashion_section" <c:if test="${empty listSanPham}">hidden</c:if> >
   <div class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
         <div class="carousel-item active">
            <div class="container">
               <h1 style="color: #ff6400" class="fashion_taital">Sản phẩm bạn quan tâm</h1>
               <div class="fashion_section_2">
                  <div class="carousel slide" data-ride="carousel" style="position: static">
                     <div class="carousel-inner">
                        <div class="carousel-item active" style="display: flex; overflow: hidden; scroll-snap-type: x mandatory;" id="scrollProducts">
                           <c:forEach var="sanpham" items="${listSanPham}">
                              <div class="col-lg-2 col-sm-2" style="scroll-snap-align: start;">
                                 <div class="box_main" style="border-radius: 20px; border: 1px solid rgba(13,202,240,0.27)">
                                    <h4 class="shirt_text" style="white-space: nowrap;overflow: hidden;text-overflow: ellipsis;">${sanpham.tenSanPham}</h4>
                                    <p class="price_text" style="max-width: 100px">Giá:
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
                                    <a href="/detailsap/${sanpham.idSanPham}">
                                       <div style="margin: 0; min-height: 150px " class="tshirt_img"><img src="../../../uploadImage/${sanpham.hinhAnhSanPham}"  width="270px"></div></a>
                                    <div class="btn_main">
                                       <div class="buy_bt"><a href="/addtocart?id=${sanpham.idSanPham}&soluong=1">Mua ngay</a></div>
                                       <div class="seemore_bt"><a href="/detailsap/${sanpham.idSanPham}">Xem thêm</a></div>
                                    </div>
                                 </div>
                              </div>
                           </c:forEach>
                        </div>
                     </div>
                     <a onclick="scrollOnLeft()" class="carousel-control-prev" style=" border-radius: 50%;  background-color: rgba(204,164,60,0.67); width: 80px; top: 50% ; left: 80px; height: 80px">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     </a>
                     <a onclick="scrollOnRight()" class="carousel-control-next" style="border-radius: 50%;  background-color: rgba(204,164,60,0.67); width: 80px; top: 50% ; right: 80px; height: 80px">
                        <span class="carousel-control-next-icon" aria-hidden="true" ></span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<%--end products--

<%--start điện thoại--%>

<div style="padding-bottom: 50px" class="fashion_section">
   <div class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
         <div class="carousel-item active">
            <div class="container">
               <h1 style="color: #ff6400" class="fashion_taital">Điện thoại</h1>
               <div class="fashion_section_2">
                  <div class="carousel slide" data-ride="carousel" style="position: static">
                     <div class="carousel-inner">
                        <div class="carousel-item active" style="display: flex; overflow: hidden" id="scrollProducts1">
                           <c:forEach var="sanpham" items="${listSanPhambydienthoai}">
                              <div class="col-lg-3 col-sm-3">
                                 <div class="box_main" style="border-radius: 20px; border: 1px solid rgba(13,202,240,0.27)">
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
                                    <a href="/detailsap/${sanpham.idSanPham}">
                                       <div style="margin: 0; min-height: 250px " class="tshirt_img"><img src="../../../uploadImage/${sanpham.hinhAnhSanPham}" ></div></a>
                                    <div class="btn_main">
                                       <div class="buy_bt"><a href="/addtocart?id=${sanpham.idSanPham}&soluong=1">Mua ngay</a></div>
                                       <div class="seemore_bt"><a href="/detailsap/${sanpham.idSanPham}">Xem thêm</a></div>
                                    </div>
                                 </div>
                              </div>
                           </c:forEach>
                        </div>
                     </div>
                     <a onclick="scrollOnLeft1()" class="carousel-control-prev" style=" border-radius: 50%; background-color: rgba(204,164,60,0.67); width: 100px; top: 50% ; left: 100px; height: 100px">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     </a>
                     <a onclick="scrollOnRight1()" class="carousel-control-next" style=" border-radius: 50%; background-color: rgba(204,164,60,0.67); width: 100px; top: 50% ; right: 100px; height: 100px">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

<%--end điện thoại--%>

<%--start tai nghe--%>
<div style="padding-bottom: 50px" class="fashion_section">
   <div class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
         <div class="carousel-item active">
            <div class="container">
               <h1 style="color: #ff6400" class="fashion_taital">Tai nghe</h1>
               <div class="fashion_section_2">
                  <div class="carousel slide" data-ride="carousel" style="position: static">
                     <div class="carousel-inner">
                        <div class="carousel-item active" style="display: flex; overflow: hidden" id="scrollProducts2">
                           <c:forEach var="sanpham" items="${listSanPhambytainghe}">
                              <div class="col-lg-3 col-sm-3">
                                 <div class="box_main" style="border-radius: 20px; border: 1px solid rgba(13,202,240,0.27)">
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
                                    <a href="/detailsap/${sanpham.idSanPham}">
                                       <div style="margin: 0; min-height: 250px" class="tshirt_img"><img src="../../../uploadImage/${sanpham.hinhAnhSanPham}"  width="270px"></div></a>
                                    <div class="btn_main">
                                       <div class="buy_bt"><a href="/addtocart?id=${sanpham.idSanPham}&soluong=1">Mua ngay</a></div>
                                       <div class="seemore_bt"><a href="/detailsap/${sanpham.idSanPham}">Xem thêm</a></div>
                                    </div>
                                 </div>
                              </div>
                           </c:forEach>
                        </div>
                     </div>
                     <a onclick="scrollOnLeft2()" class="carousel-control-prev" style=" border-radius: 50%; background-color: rgba(204,164,60,0.67); width: 100px; top: 50% ; left: 100px; height: 100px">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     </a>
                     <a onclick="scrollOnRight2()" class="carousel-control-next" style=" border-radius: 50%; background-color: rgba(204,164,60,0.67); width: 100px; top: 50% ; right: 100px; height: 100px">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

<%--end tai nghe--%>

<%--start đồng hồ--%>
<div style="padding-bottom: 50px" class="fashion_section">
   <div class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
         <div class="carousel-item active">
            <div class="container">
               <h1 style="color: #ff6400" class="fashion_taital">Đồng hồ</h1>
               <div class="fashion_section_2">
                  <div class="carousel slide" data-ride="carousel" style="position: static">
                     <div class="carousel-inner">
                        <div class="carousel-item active" style="display: flex; overflow: hidden" id="scrollProducts3">
                           <c:forEach var="sanpham" items="${listSanPhambyDongho}">
                              <div class="col-lg-3 col-sm-3">
                                 <div class="box_main" style="border-radius: 20px; border: 1px solid rgba(13,202,240,0.27)">
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
                                    <a href="/detailsap/${sanpham.idSanPham}">
                                       <div style="margin: 0;min-height: 250px" class="tshirt_img"><img src="../../../uploadImage/${sanpham.hinhAnhSanPham}"  width="270px"></div></a>
                                    <div class="btn_main">
                                       <div class="buy_bt"><a href="/addtocart?id=${sanpham.idSanPham}&soluong=1">Mua ngay</a></div>
                                       <div class="seemore_bt"><a href="/detailsap/${sanpham.idSanPham}">Xem thêm</a></div>
                                    </div>
                                 </div>
                              </div>
                           </c:forEach>
                        </div>
                     </div>
                     <a onclick="scrollOnLeft3()" class="carousel-control-prev" style=" border-radius: 50%; background-color: rgba(204,164,60,0.67); width: 100px; top: 50% ; left: 100px; height: 100px">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     </a>
                     <a onclick="scrollOnRight3()" class="carousel-control-next" style=" border-radius: 50%; background-color: rgba(204,164,60,0.67); width: 100px; top: 50% ; right: 100px; height: 100px">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<%--end đồng hồ--%>>

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
                     <a class="text-reset">Quy trình vận chuyển</a>
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

<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="gg-chevron-double-up-o"></i></button>

      <!-- Javascript files-->
      <script src="../../../js/jquery.min.js"></script>
<%--      <script src="../../../js/popper.min.js"></script>--%>
      <script src="../../../js/bootstrap.bundle.min.js"></script>
      <script src="../../../js/jquery-3.0.0.min.js"></script>
      <script src="../../../js/plugin.js"></script>
      <!-- sidebar -->
      <script src="../../../js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="../../../js/custom.js"></script>
      <script src="../../../js/scriptIndex.js"></script>
      <script src="../../../js/showLogin.js"></script>

</body>
</html>