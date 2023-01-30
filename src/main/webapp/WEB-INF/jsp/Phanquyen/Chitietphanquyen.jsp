<%@ page import="com.example.demo.config.SecurityUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <title>Thông tin thành viên</title>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
</head>

<body>
<div class="container">
    <div class="row">
        <button style="margin-top: 15px ;width: 100px; height: 40px;" type="button" class="btn btn-outline-info" onclick="quay_lai_trang_truoc()">Quay lại</button>
        <h3 style="margin-top: 20px; color: #1da1f2"> Thông tin thành viên</h3>
        <form method="POST" name="update" action="/updateLevels">
           STT: <input style="margin-right: 15px" name="id" value="${user.id}" readonly>
           ID: <input  name="userId" value="${user.userId.userId}" readonly>
            <table class="table">

                <caption>Thành viên đã đăng ký</caption>
                <tr>
                    <td>Họ tên:   </td>
                    <td ><input style="border: 0" type="text" value="${user.userId.userName}" readonly/></td>
                </tr>
                <tr>
                    <td>Email:  </td>
                    <td><input style="border: 0; width: 260px" type="text" value="${user.userId.email}" readonly/></td>
                </tr>
                <tr>
                    <td>Quyền  </td>
                    <td>
                        <select name="roleId" value="status" onchange="changeStatus()">
                            <option value="1" <c:if test="${user.roleId.roleId == 1}">selected</c:if>>Admin</option>
                            <option value="2" <c:if test="${user.roleId.roleId == 2}">selected</c:if>>Thành viên</option>
                        </select>
                    </td>
                </tr>
                <tr><td colspan="2"><input type="submit" class="btn btn-outline-danger" name="save" value="Lưu thông tin"></td></tr>
            </table>
        </form>
    </div>

</div>
<script>
    function quay_lai_trang_truoc(){
        history.back();
    }
</script>
</body>
</html>