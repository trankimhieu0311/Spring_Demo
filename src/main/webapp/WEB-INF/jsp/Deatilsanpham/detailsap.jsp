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
    <link rel="stylesheet" type="text/css" href="../../../css/detailsap.css">
    <link rel="stylesheet" type="text/css" href="../../../css/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;500&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./app.css">
    <title>Chi tiết sản phẩm</title>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
</head>
<body>

<button style="width: 180px; height: 85px; margin: 20px 30px; border-radius: 15px 50px 30px; font-size: 1.3em; border-color: #ff6400; background-color:#FFFFFF">
    <a href="/" style="color: #FF4000; border: none"><strong>Trang chủ</strong></a></button>
<section class="product" style="width: 900px; height: 400px; padding-top: 10px; padding-left: 50px ;padding-bottom: 0">
    <div class="product__photo">
        <img src="../../../uploadImage/${sanpham.hinhAnhSanPham}" height="350px" width="350px">
    </div>
    <div class="product__info">
        <div class="title">
            <h1 style="font-size: 1.7em; width: 450px; margin-bottom: 5px">${sanpham.tenSanPham}</h1>

            Mã SP: <span style="color: #FF3366; padding-left: 0; font-size: 1.2em; ">${sanpham.maSanPham}</span>

            <h2 style="width: 200px ;margin: 0 0 ; color: #0dcaf0; padding-bottom: 10px; padding-top: 10px; font-size: 1.2em" >${rate} ☆ đánh giá</h2>
        </div>
        <div style="margin: 0; color: #ff6400; font-size: 1.7em; padding-bottom: 5px" class="price">
            <label style="color: black; font-size: 0.6em">Giá:</label>
            <c:choose>
                <c:when test="${sanpham.giaGiam == null}">
                    <fmt:formatNumber type="number" groupingUsed="true" value="${sanpham.giaDeXuat}"/>đ
                </c:when>
                <c:otherwise>
                    <fmt:formatNumber type="number" groupingUsed="true" value="${sanpham.giaGiam}"/>đ
                </c:otherwise>
            </c:choose>
        </div>
        <caption>Bảo hành <strong> ${sanpham.thoigianbaohanh}</strong> tháng</caption>
        <h3>100% sản phẩm chất lượng và đảm bảo uy tín</h3>
        <div style="margin: 15px 0;" class="description">
            <h5 style="margin: 0; padding-bottom: 5px"> Còn <strong style="color: #ff6400; font-size: 1.3em">${sanpham.soLuongSanPham}</strong> sản phẩm </h5>
            <div style="padding: 2px 2px" class="buttons_added">
                <label for="soluong">Số lượng:</label>
                <input style="width: 60px; height: 26px" type="number" class="form-control" id="soluong" name="soluong" min="1" max="${sanpham.soLuongSanPham}" value="${curentQuantity}" >
            </div>
        </div>
        <!------------------------>
        <button <c:if test="${sanpham.soLuongSanPham == 0}">disabled</c:if> style="float: left; padding: 10px 9px" onclick="addToCart()" class="buy--btn">Thêm vào giỏ hàng</button>

    </div>
</section>
<h1 style="margin-left: 350px; color: #FF6600; margin-bottom: 0 "><u>Điểm nổi bật</u></h1>
<pre name="moTa"
          style="background: #ffffff; margin-left: 300px; padding: 0; border: 0; font-size: 1.2em " class="hidden" type="text" > ${sanpham.moTa}</pre>

<hr width="60%" size="2px" align="10%" color="#000000"/>
<section style="margin-top: 10px; margin-left: 350px;">
    <div class="container my-5 py-5">
        <div class="row d-flex justify-content-center">
            <div class="col-md-12 col-lg-10 col-xl-8">
                <div class="card">
                    <h1 style="color: black;"><u>Đánh giá & nhận xét</u> <small style="color: #1da1f2">${sanpham.tenSanPham}</small></h1>
                    <c:choose>
                        <c:when test="${userCurrent != 'anonymousUser'}">
                            <form action="/saveComment" method="post">
                                <div class="card-footer py-3 border-0">
                                    <div class="d-flex flex-start w-100">
                                        <!-- rate star start-->
                                        <div style="width: 750px" class="rating">
                                            <input type="radio" name="rate" value="5" onclick="checkRate()" id="rating5"><label for="rating5">☆</label>
                                            <input type="radio" name="rate" value="4" onclick="checkRate()" id="rating4"><label for="rating4">☆</label>
                                            <input type="radio" name="rate" value="3" onclick="checkRate()" id="rating3"><label for="rating3">☆</label>
                                            <input type="radio" name="rate" value="2" onclick="checkRate()" id="rating2"><label for="rating2">☆</label>
                                            <input type="radio" name="rate" value="1" id="rating1" onclick="checkRate()"><label for="rating1">☆</label>

                                        </div>
                                        <!-- rate star end-->
                                        <input name="sanPham" id="sanPham" value="${sanpham.idSanPham}" readonly hidden>
                                        <input name="user" id="user" value="${userr.userId}" hidden readonly>
                                        <textarea name="comment" id="comment" placeholder="Nhận xét của bạn..." rows="5"
                                                  style="background: #ffffff; width: 700px; border: none; padding-left: 5px"  type="text"></textarea>
                                        <button style="float: left ;font-size: 1.3em; height: 82px;" type="submit"><a
                                                style="text-decoration: none; color: black ;border: none; float: right"><strong>Gửi</strong></a>
                                        </button>
                                    </div>

                                </div>
                            </form><br>
                        </c:when>

                        <c:otherwise>
                            <div><a id="login" href="#" onclick="onClickLoginPage()"
                                    style="border: none; text-decoration: none">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <strong style="border: none;color:#0066FF;  padding-bottom: 50px; text-decoration: none;">ĐĂNG NHẬP</strong></a> ĐỂ BÌNH LUẬN
                                <div style="display: none" id="myForm">
                                    <div class="form-popup" onclick="closeLoginPage()">
                                        <div class="closepopup">
                                            <svg xmlns="http://www.w3.org/2000/svg" display="block" width="30"
                                                 height="30" fill="currentColor" class="bi bi-x-circle"
                                                 viewBox="0 0 16 16">
                                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                                            </svg>
                                        </div>
                                    </div>
                                    <form action="/j_spring_security_check" class="form-container" method="post">
                                        <h1 style="color:#ff6400">Đăng nhập</h1>

                                        <input type="text" placeholder="Email" name="username" required>

                                        <input type="password" placeholder="Mật khẩu" name="password" required>

                                        <button style="background-color: #ff6400" type="submit"
                                                href="/detailsap/${sanpham.idSanPham}" class="btn">Đăng nhập
                                        </button>
                                        <button style="background-color: #ff6400"
                                           class="btn btn-outline-warning" href="/login">Đăng kí</button>
                                    </form>
                                </div>
                            </div>
                        </c:otherwise>
                    </c:choose>

                    <div style="padding-left: 80px">
                        <c:forEach var="review" items="${listReivew}">
                            <c:choose>
                            <c:when test="${review.comment == null || review.comment == ''}">
                                <a hidden></a>
                            </c:when>
                            <c:otherwise>
                                <p><strong>${review.user.userName} </strong> <small> <fmt:formatDate type = "both"
                                 dateStyle = "short" timeStyle = "short" value= "${review.createtime}"/></small></p>
                                <p>${review.comment }</p>
                            </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    function onClickLoginPage() {
        const form = document.getElementById("myForm");
        form.style.display = 'block';
    }

    function closeLoginPage() {
        const form = document.getElementById("myForm");
        form.style.display = 'none';
    }
    function addToCart() {
        let soLuong = document.getElementById("soluong").value;
        location.href = "/addtocart?id=${sanpham.idSanPham}&soluong=" + soLuong;
    }

    function checkRate(){
        let rate1 = document.getElementById("rating1")
        let rate2 = document.getElementById("rating2")
        let rate3 = document.getElementById("rating3")
        let rate4 = document.getElementById("rating4")
        let rate5 = document.getElementById("rating5")
        if(rate1.checked){
            return rate1.value;
        }else if(rate2.checked){
            return rate2.value;
        }else if(rate3.checked){
            return rate3.value;
        }else if(rate4.checked){
            return rate4.value;
        }else if(rate5.checked){
            return rate5.value;
        }
    }
</script>

</body>
</html>
