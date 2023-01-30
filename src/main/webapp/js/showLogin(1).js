$(function() {
    let a = false;
    $(window).scroll(function() {
        let scroll = $(window).scrollTop();
        console.log(scroll);

        if (scroll >= 600 && a==false) {
            document.getElementById("myForm").style.display = 'block';
            a = true;
            console.log(a);
        }
        console.log(a);
    });
});
function validateTenSanPham(){
    const tenSanPham = document.getElementById("tenSanPham").value;
    const labelTenSanPham = document.getElementById("validTenSanPham");
    if(!tenSanPham) {
        labelTenSanPham.innerHTML = 'Vui lòng kiểm tra tên tài khoản !';
        labelTenSanPham.hidden = false;
        return false
    }else {
        labelTenSanPham.hidden = true;
        return tenSanPham;
    }
}
