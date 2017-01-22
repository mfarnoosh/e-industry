// $('body').scrollspy({ target: '.container-navbar' })
/*--------Mega Menu------------*/
$(document).ready(function(){
    $(".dropdown").hover(
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown("400");
            $(this).toggleClass('open');
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideUp("400");
            $(this).toggleClass('open');
        }
    );
});
/*---------carousel-------------*/
$(document).ready(function () {
    $('#myCarousel').carousel();
    var winWidth = $(window).innerWidth();
    $(window).resize(function () {

        if ($(window).innerWidth() < winWidth) {
            $('.carousel-inner>.item>img').css({
                'min-width': winWidth, 'width': winWidth
            });
        }
        else {
            winWidth = $(window).innerWidth();
            $('.carousel-inner>.item>img').css({
                'min-width': '', 'width': ''
            });
        }
    });
})

/*---------Confirm Password----------*/
/*
function checkPasswordMatch() {
    var password = $('#password').val();
    var confirmPassword = $('#re-password').val();
    if (password != confirmPassword)
        $("#divCheckPasswordMatch").html("گذرواژه‌هایکسان نیستند!");
    else
        // $("#divCheckPasswordMatch").html("Passwords match.");
        $("#divCheckPasswordMatch").hide();

}
$(document).ready(function () {
    $("#password, #re-password").keyup(checkPasswordMatch);
});*/

/*-----submit button-------*/
