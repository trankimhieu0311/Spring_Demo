<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="shortcut icon" type="image/png" href="https://png.pngtree.com/template/20190716/ourlarge/pngtree-creative-initial-letter-n-circle-color-logo-vector-linear-circle-letter-image_228209.jpg" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign up</title>
    <link rel="stylesheet" href="../../../css/indexLogin.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>
<body>

    <div class="container">
        <section class="card" id="card">
            <div class="front">
                <img id="avatarUser" src="../../../img/images.png" class="chip">
                <div class="data">
                    <div class="flex">
                        <div class="group" id="emailUser">
                            <p class="label">Email</p>
                            <p class="email">####@gmail.com</p>
                        </div>    
                    
                        <div class="group" id="nameUser">
                            <p class="label">Họ và tên</p>
                            <p class="fullname">#####</p>
                        </div>
                    </div>
                    <div class="flex">
                        <div class="group" id="numberUser">
                            <p class="label">Số điện thoại</p>
                            <p class="number">*****</p>
                        </div>
                    
                        <div class="group" id="addressUser">
                            <p class="label">Địa chỉ</p>
                            <p class="address">#####</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="back">
                <div class="magnetic-bar"></div>
                <div class="data">
                    <div class="group" id="signature">
                        <p class="label">Chữ kí</p>
                        <div class="signature"><p></p></div>
                    </div>
                    <div class="group" id="passwordUser">
                        <p class="label">Mật khẩu</p>
                        <p style="filter: blur(5px);" class="password"></p>
                    </div>
                </div>
            </div>
        </section>


        <div class="btn-container">
            <button class="btn-open" id="btn-open">
                <img src="../../../img/btn.png">
            </button>
        </div>


        <form action="/saveUser" method="post" class="card-form" id="card-form">
            <div class="container1">
                <label class="file-upload-wrapper" for="avatar">Your Avatar</label>
                <input class="file-upload-field" type="file" id="avatar" name="avatar" onchange="loadFile(event)">
            </div>

        <div class="flex">
            <div class="group">
                <label for="email">Your Email</label>
                <input type="text" id="email" name="email" maxlength="30" autocomplete="off">
            </div>
            <div class="group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" maxlength="15">
                <i id="showpassword" style="margin-left:-35px; cursor: pointer;" class="bi bi-eye-slash-fill"></i>
            </div>
        </div>
        <div class="flex">
            <div class="group">
                <label for="userName">Your Name</label>
                <input type="text" id="userName" name="userName" maxlength="19" autocomplete="off">
            </div>
            <div class="group">
                <label for="phoneNumber">Your Number</label>
                <input type="text" id="phoneNumber" name="phoneNumber" maxlength="20" autocomplete="off">
            </div>
        </div>
            <div class="group">
                <label for="address">Your Address</label>
                <input type="text" id="address" name="address" maxlength="35" autocomplete="off">
            </div>
            

            

            <button type="submit" class="btn-send">Submit</button>
        </form>


    </div>
    
<script src="../../../js/index.js"></script>
</body>
</html>