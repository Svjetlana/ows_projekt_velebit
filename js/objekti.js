
$(document).ready(function () {

    if ($.cookie('login_cookie') == 'true') {
        $("#panel").slideToggle("slow");
    }

    $(".btn-slide").click(function () {
        $("#panel").slideToggle("slow");
        return false;
    });

    var $firstPara = $('p').eq(5);
    $firstPara.hide();
    $('a.dalje').click(function () {
        $firstPara.animate({ opacity: 'toggle', height: 'toggle' }, 'slow');
        var $link = $(this);
        if ($link.text() == 'Dalje...') {
            $link.text('Zatvori');
        }
        else {
            $link.text('Dalje...');
        }
        return false;
    });

    $('p').eq(5).css({ width: "250px", padding: "3px" });

});            