$(document).ready(function() {
    $("#continent01").click(function() {
        if ($("#continent01").is(':checked')) {
            $(".nation-asia").css("display","inline-block");
            $(".nation-eu").css("display","none");
            $(".nation-na").css("display","none");
        }
    });
    $("#continent02").click(function() {
        if ($("#continent02").is(':checked')) {
            $(".nation-asia").css("display","none");
            $(".nation-eu").css("display","inline-block");
            $(".nation-na").css("display","none");
        }
    });
    $("#continent03").click(function() {
        if ($("#continent03").is(':checked')) {
            $(".nation-asia").css("display","none");
            $(".nation-eu").css("display","none");
            $(".nation-na").css("display","inline-block");
        }
    });
    $("#nation02").click(function() {
        if ($("#nation02").is(':checked')) {
            $(".area-kr").css("display","inline-block");
            $(".area-jp").css("display","none");
            $(".area-ch").css("display","none");
        }
    });
    $("#nation21").click(function() {
        if ($("#nation21").is(':checked')) {
            $(".area-kr").css("display","none");
            $(".area-jp").css("display","inline-block");
            $(".area-ch").css("display","none");
        }
    });
    $("#nation22").click(function() {
        if ($("#nation22").is(':checked')) {
            $(".area-kr").css("display","none");
            $(".area-jp").css("display","none");
            $(".area-ch").css("display","inline-block");
        }
    });
    $("#area14").click(function() {
        if ($("#area14").is(':checked')) {
            $(".city-jeju").css("display","inline-block");
            $(".city-gg").css("display","none");
            $(".city-cn").css("display","none");
        }
    });
    $("#area02").click(function() {
        if ($("#area02").is(':checked')) {
            $(".city-jeju").css("display","none");
            $(".city-gg").css("display","inline-block");
            $(".city-cn").css("display","none");
        }
    });
    $("#area15").click(function() {
        if ($("#area15").is(':checked')) {
            $(".city-jeju").css("display","none");
            $(".city-gg").css("display","none");
            $(".city-cn").css("display","inline-block");
        }
    });
});
