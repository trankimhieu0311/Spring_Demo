let a =  location.href;
function deleteSanPham(id){
    console.log(a);
        if(a.search("sortbyprice")){
            if(confirm('Bạn muốn xoá SẢN PHẨM này?')){
                location.href = '/admin/delete/' + id;
            }
        }
}
function deleteLoaiSanPham(id){
    if(confirm('Bạn muốn xoá LOẠI SẢN PHẨM này?')){
        location.href = '/admin/deleteloaisp/' + id;
    }
}

function deleteHieuSanPham(id){
    if(confirm("Bạn muốn xoá HIỆU SẢN PHẨM này?")){
        location.href = '/admin/deletehieusp/' + id;
    }
}

// ================================SẢN=PHẨM===============================================================================================================
function alertCreateSanPham(){
    let validTenSanPham =  validateTenSanPham();
    let validMaSanPham =  validateMaSanPham();
    let validSoLuongSanPham = validateSoLuongSanPham();
    let validGiaDeXuat = validateGiaDeXuat();
    if(validTenSanPham && validMaSanPham && validSoLuongSanPham && validGiaDeXuat) {
                const form = document.getElementById("createForm");
                form.method = "POST";
                form.action = "/admin/save";
                const boolean = confirm("Bạn có muốn thêm mới không ?")
                if (boolean) {
                    form.submit();
                }
        }
}
function alertUpdateSanPham(){
    let validTenSanPham =  validateTenSanPham();
    let validMaSanPham =  validateMaSanPham();
    let validSoLuongSanPham = validateSoLuongSanPham();
    let validGiaDeXuat = validateGiaDeXuat();
    if(validTenSanPham && validMaSanPham && validSoLuongSanPham && validGiaDeXuat) {
        const form = document.getElementById("updateForm");
        form.method = "POST";
        form.action = "/admin/save";
        const boolean = confirm("Cập nhật sản phẩm này ?")
        if (boolean) {
            form.submit();
        }
    }
}
// ----------------------------------------------------------------------------------------------------------------------------------------------
function validateTenSanPham(){
    const tenSanPham = document.getElementById("tenSanPham").value;
    const labelTenSanPham = document.getElementById("validTenSanPham");
    if(!tenSanPham) {
        labelTenSanPham.innerHTML = 'Vui lòng nhập tên sản phẩm !';
        labelTenSanPham.hidden = false;
        return false
    }else {
        labelTenSanPham.hidden = true;
        return tenSanPham;
    }
}
function validateMaSanPham(){
    const maSanPham = document.getElementById("maSanPham").value;
    const labelMaSanPham = document.getElementById("validMaSanPham");
    if(!maSanPham){
        labelMaSanPham.innerHTML = 'Vui lòng nhập mã sản phẩm !';
        labelMaSanPham.hidden = false;
        return false
    }else {
        labelMaSanPham.hidden = true;
        return maSanPham;
    }
}
function validateDacDiemSanPham(){
    const dacDiemSanPham = document.getElementById("dacDiemSanPham").value;
    const labelTenSanPham = document.getElementById("validDacDiemSanPham");
    if(!dacDiemSanPham) {
        labelDacDiemSanPham.innerHTML = 'Vui lòng nhập mô tả !';
        labelDacDiemSanPham.hidden = false;
        return false
    }else {
        labelDacDiemSanPham.hidden = true;
        return dacDiemSanPham;
    }
}

function validateSoLuongSanPham(){
    const soLuongSanPham = document.getElementById("soLuongSanPham").value;
    const labalSoLuong = document.getElementById("validSoLuongSanPham");
    if(!soLuongSanPham){
        labalSoLuong.innerHTML = 'Vui lòng nhập số lượng sản phẩm !';
        labalSoLuong.hidden = false;
        return false
    }else{
        labalSoLuong.hidden = true;
        return soLuongSanPham;
    }
}
function validateGiaDeXuat(){
    const giaDeXuat = document.getElementById("giaDeXuat").value;
    const labelGiaDeXuat = document.getElementById("validGiaDeXuat");
    if(!giaDeXuat){
        labelGiaDeXuat.innerHTML = 'Vui lòng nhập giá gốc sản phẩm !';
        labelGiaDeXuat.hidden = false;
        return false
    }else{
        labelGiaDeXuat.hidden = true;
        return giaDeXuat;
    }
}
// =================================LOẠI=SẢN=PHẨM=============================================================================================================
function alertCreateLoaiSanPham(){
    let validTenLoaiSanPham = validateTenLoaiSanPham();
    if(validTenLoaiSanPham){
        const form = document.getElementById("createForm");
        form.method = "POST";
        form.action = "/admin/saveloaisp";
        const boolean = confirm("Bạn có muốn thêm mới không ?")
        if (boolean) {
            form.submit();
        }
    }
}
function alertUpdateLoaiSanPham(){
    let validTenLoaiSanPham = validateTenLoaiSanPham();
    if(validTenLoaiSanPham) {
        const form = document.getElementById("updateForm");
        form.method = "POST";
        form.action = "/admin/saveloaisp";
        const boolean = confirm("Cập nhật loại sản phẩm này ?")
        if (boolean) {
            form.submit();
        }
    }
}
// ------------------------------------------------------------------------------------------------------------------------------------------------
function validateTenLoaiSanPham(){
    const tenLoaiSanPham = document.getElementById("tenLoaiSp").value;
    const labelTenLoaiSanPham = document.getElementById("validTenLoaiSanPham");
    if(!tenLoaiSanPham){
        labelTenLoaiSanPham.innerHTML = 'Vui lòng nhập tên loại sản phẩm !';
        labelTenLoaiSanPham.hidden = false;
    }else{
        labelTenLoaiSanPham.hidden = true;
        return tenLoaiSanPham;
    }
}
// ==================HIỆU=SẢN=PHẨM=======================================================================================================================
function alertCreateHieuSanPham(){
    let validTenHieuSanPham = validateTenHieuSanPham();
    if(validTenHieuSanPham){
        const form = document.getElementById("createForm");
        form.method = "POST";
        form.action = "/admin/savehieusp";
        const boolean = confirm("Bạn có muốn thêm mới không ?")
        if (boolean) {
            form.submit();
        }
    }
}
function alertUpdateHieuSanPham(){
    let validTenHieuSanPham = validateTenHieuSanPham();
    if(validTenHieuSanPham) {
        const form = document.getElementById("updateForm");
        form.method = "POST";
        form.action = "/admin/savehieusp";
        const boolean = confirm("Cập nhật loại sản phẩm này ?")
        if (boolean) {
            form.submit();
        }
    }
}
// --------------------------------------------------------------------------------------------------------------------------------------------------
function validateTenHieuSanPham(){
    const tenHieuSanPham = document.getElementById("tenHieuSanPham").value;
    const labelTenHieuSanPham = document.getElementById("validTenHieuSanPham");
    if(!tenHieuSanPham){
        labelTenHieuSanPham.innerHTML = 'Vui lòng nhập tên hiệu sản phẩm !';
        labelTenHieuSanPham.hidden = false;
    }else{
        labelTenHieuSanPham.hidden = true;
        return tenHieuSanPham;
    }
}