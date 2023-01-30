function ThanhToan(){
    let res = document.getElementById("result");
    if(res.value == ""){
        alert("Ban chua nhạp thong tin")
    }else{
        const form = document.getElementById("formInfo");
        form.method = "POST";
        form.action = "/buyProduct";
        const boolean = confirm("Mua sản phẩm này")
        if (boolean) {
            form.submit();
        }
    }
}

const host = "https://provinces.open-api.vn/api/";
let callAPI = (api) => {
    return axios.get(api)
        .then((response) => {
            renderData(response.data, "province");
        });
}
callAPI('https://provinces.open-api.vn/api/?depth=1');
let callApiDistrict = (api) => {
    return axios.get(api)
        .then((response) => {
            renderData(response.data.districts, "district");
        });
}
let callApiWard = (api) => {
    return axios.get(api)
        .then((response) => {
            renderData(response.data.wards, "ward");
        });
}

let renderData = (array, select) => {
    let row = ' <option disable value=""> Chọn </option>';
    array.forEach(element => {
        row += `<option value="${element.code}">${element.name}</option>`
    });
    document.querySelector("#" + select).innerHTML = row
}

$("#province").change(() => {
    callApiDistrict(host + "p/" + $("#province").val() + "?depth=2");
    printResult();
});
$("#district").change(() => {
    callApiWard(host + "d/" + $("#district").val() + "?depth=2");
    printResult();
});
$("#ward").change(() => {
    printResult();
})

function Thongtin(){
    let ThanhPho = $("#province option:selected").text();
    let Quan = $("#district option:selected").text();
    let Phuong = $("#ward option:selected").text();
    let inputName = document.getElementById("userName").value;
    let inputPhone = document.getElementById("phoneNumber").value;
    let inputAddress = document.getElementById("address").value;

    let res = document.getElementById("result");
    if(ThanhPho != "" && Quan != "" && Phuong != "" && inputName != "" && inputPhone != "" && inputAddress != ""){
        res.value = ThanhPho+', '+Quan+', '+Phuong+', '+inputAddress;
    }
}

function ThanhToan(){
    let res = document.getElementById("result");
    if(res.value == ""){
        alert("Vui lòng nhập thông tin và chọn phương thức thanh toán")
    }else{
        const form = document.getElementById("formInfo");
        form.method = "POST";
        form.action = "/buyProduct";
        const boolean = confirm("Mua sản phẩm này")
        if (boolean) {
            form.submit();
        }
    }
}