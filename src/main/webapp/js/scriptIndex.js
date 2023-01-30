function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("closeNAV").classList.add('closeNAV')
    document.getElementById("meo").classList.add('btn-nav')
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("closeNAV").classList.remove('closeNAV');
    document.getElementById("meo").classList.remove('btn-nav')
}

function scrollOnLeft(){
    document.getElementById("scrollProducts").scrollLeft -= 1110;
}
function scrollOnRight(){
    document.getElementById("scrollProducts").scrollLeft += 1110;
}
function scrollOnLeft1(){
    document.getElementById("scrollProducts1").scrollLeft -= 1110;
}
function scrollOnRight1(){
    document.getElementById("scrollProducts1").scrollLeft += 1110;
}
function scrollOnLeft2(){
    document.getElementById("scrollProducts2").scrollLeft -= 1110;
}
function scrollOnRight2(){
    document.getElementById("scrollProducts2").scrollLeft += 1110;
}
function scrollOnLeft3(){
    document.getElementById("scrollProducts3").scrollLeft -= 1110;
}
function scrollOnRight3(){
    document.getElementById("scrollProducts3").scrollLeft += 1110;
}

//Get the button:
mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        mybutton.style.display = "block";
    } else {
        mybutton.style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}

function onClickLoginPage(){
    const form = document.getElementById("myForm");
    form.style.display = 'block';
}
function closeLoginPage(){
    const form = document.getElementById("myForm");
    form.style.display = 'none';
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
    let row = ' <option disable value="">chọn</option>';
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
$(function() {

    // Initiate Slider
    $('#slider-range').slider({
        range: true,
        min: 0,
        max: 40000000,
        step: 100,
        values: []
    });

    // Move the range wrapper into the generated divs
    $('.ui-slider-range').append($('.range-wrapper'));

    // Apply initial values to the range container
    $('.range').html('<span class="range-value"><sup>$</sup>' + $('#slider-range').slider("values", 0).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span><span class="range-divider"></span><span class="range-value"><sup>$</sup>' + $("#slider-range").slider("values", 1).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span>');

    // Show the gears on press of the handles
    $('.ui-slider-handle, .ui-slider-range').on('mousedown', function() {
        $('.gear-large').addClass('active');
    });

    // Hide the gears when the mouse is released
    // Done on document just incase the user hovers off of the handle
    $(document).on('mouseup', function() {
        if ($('.gear-large').hasClass('active')) {
            $('.gear-large').removeClass('active');
        }
    });

    // Rotate the gears
    var gearOneAngle = 0,
        gearTwoAngle = 0,
        rangeWidth = $('.ui-slider-range').css('width');

    $('.gear-one').css('transform', 'rotate(' + gearOneAngle + 'deg)');
    $('.gear-two').css('transform', 'rotate(' + gearTwoAngle + 'deg)');

    $('#slider-range').slider({
        slide: function(event, ui) {

            // Update the range container values upon sliding

            $('.range').html('<span class="range-value"><sup>$</sup>' + ui.values[0].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span><span class="range-divider"></span><span class="range-value"><sup>$</sup>' + ui.values[1].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '</span>');

            // Get old value
            var previousVal = parseInt($(this).data('value'));

            // Save new value
            $(this).data({
                'value': parseInt(ui.value)
            });

            // Figure out which handle is being used
            if (ui.values[0] == ui.value) {

                // Left handle
                if (previousVal > parseInt(ui.value)) {
                    // value decreased
                    gearOneAngle -= 7;
                    $('.gear-one').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                } else {
                    // value increased
                    gearOneAngle += 7;
                    $('.gear-one').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                }

            } else {

                // Right handle
                if (previousVal > parseInt(ui.value)) {
                    // value decreased
                    gearOneAngle -= 7;
                    $('.gear-two').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                } else {
                    // value increased
                    gearOneAngle += 7;
                    $('.gear-two').css('transform', 'rotate(' + gearOneAngle + 'deg)');
                }

            }

            if (ui.values[1] === 110000) {
                if (!$('.range-alert').hasClass('active')) {
                    $('.range-alert').addClass('active');
                }
            } else {
                if ($('.range-alert').hasClass('active')) {
                    $('.range-alert').removeClass('active');
                }
            }
        }
    });

    // Prevent the range container from moving the slider
    $('.range, .range-alert').on('mousedown', function(event) {
        event.stopPropagation();
    });

});

