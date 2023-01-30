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
    <link rel="stylesheet" type="text/css" href="../../../css/ThongtinKH.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <title>Thông tin khách hàng </title>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
</head>
<body>
<div class="contact-us">
    <strong style="color: #ff6400; font-size: 1.5em; margin-left: 40px; padding-bottom: 20px " > THÔNG TIN KHÁCH HÀNG </strong>
    <form style=" padding-top: 10px" class="frames" id="formInfo">
        <label for="userName">Họ và tên <em>*</em></label>
        <input style="margin-bottom: 20px; border: 0" id="userName" name="userName" value="${userr.userName}" required="" type="text" readonly/>

        <label for="phoneNumber">Điện thoại <em>*</em></label>
        <input style="margin-bottom: 20px; border: 0" id="phoneNumber" name="phoneNumber" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" type="number" placeholder="Số điện thoại (bắt buộc)">

        <label>Địa chỉ <em>*</em> </label>
        <select style="width: 400px; border: 0; margin-top: 5px" name="" id="province">
            <option  value=""> Tỉnh / Thành Phố</option>
        </select><br>
        <select style="width: 400px; border: 0; margin-top: 5px" name="" id="district">
            <option  value=""> Quận / Huyện</option>
        </select><br>
        <select style="width: 400px; border: 0; margin-top: 5px" name="" id="ward">
            <option   value=""> Phường / Xã</option>
        </select><br>

        <label  for="address"></label>
        <input style="margin-top: 10px; margin-bottom: 20px" id="address" type="text" onkeyup="Thongtin()" placeholder="Số nhà, tên đường" />

        <label for="Note">Ghi chú </label>
        <textarea id="Note" name="Note" required="" rows="4" placeholder="Ghi chú (tùy chọn )"></textarea>
        <input style="margin: 10px;width: 0; height: 0" id="result" name="address"  >


        <div style="margin: 15px" class="text-divider" name="phuongthucthanhtoan" id="phuongthucthanhtoan">
        <p style="margin-bottom: 10px; color: #ff6400"><strong>Phương thức thanh toán <em>&#x2a;</em></strong></p>
        Tiền mặt <input style="margin: 0; width: 30px; float: left; padding: 16px 16px" value="1" type="radio" name="phuongthucthanhtoan"><br>
        Momo     <input style="margin: 0; width: 30px; float: left" value="2" type="radio" name="phuongthucthanhtoan"><br>
        Paypal   <input style="margin: 0; width: 30px; float: left" value="3" type="radio" name="phuongthucthanhtoan">
        </div>
        <hr width="99.5%" size="1px" align="left" color="#000000"/>


<%--        <input name="idUser" value="${userr.userId}" style="display: none">--%>
    </form>
    <button type="button"> <a style="color: #fff3cd; border: none;text-decoration: none" href="/" >Chọn thêm sản phẩm</a> </button>
    <button style="width: 200px; " type="button" onclick="ThanhToan() ">Thanh toán</button>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.26.1/axios.min.js" integrity="sha512-bPh3uwgU5qEMipS/VOmRqynnMXGGSRv+72H/N260MQeXZIK4PG48401Bsby9Nq5P5fz7hy5UGNmC/W1Z51h2GQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="../../../js/ThongtinKH.js"></script>

</body>
</html>