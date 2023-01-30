
$(function() {
    $(window).scroll(function() {
        let scroll = $(window).scrollTop();
        if (scroll >= 97) {
            document.getElementsByClassName("sticky-top")[0].style.background="black"
            document.getElementsByClassName("sticky-top")[0].style.transitionDuration = "1s";

            // document.getElementsByClassName("body")[0].style.background="black"
        } else {
            document.getElementsByClassName("sticky-top")[0].style.background="yellow"
            // document.getElementsByClassName("body")[0].style.background="yellow"
        }
    });
});

