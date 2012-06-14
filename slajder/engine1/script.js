
function ws_fade(b, a) {
    var c = jQuery;
    a.each(function (d) {
        if (!d) { c(this).show() }
        else { c(this).hide() } 
    });
    this.go = function (d, e) {
        c(a.get(d)).fadeIn(b.duration);
        c(a.get(e)).fadeOut(b.duration); 
        return d
    } 
};

jQuery("#prvislider-container1").prviSlider({
    effect: "fade",
    prev: "", next: "",
    duration: 20 * 100,
    delay: 30 * 100,
    outWidth: 900,
    outHeight: 300,
    width: 900,
    height: 300,
    autoPlay: true,
    stopOnHover: false,
    loop: false,
    bullets: true,
    caption: true,
    controls: true
    });