! function() {

  $("#menu-close").click(function(a) {
    a.preventDefault(), $("#sidebar-wrapper").toggleClass("active");
  })

  $("#menu-toggle").click(function(a) {
    a.preventDefault(), $("#sidebar-wrapper").toggleClass("active");
  })

  $(function() {
    $("a[href*=#]:not([href=#])").click(function() {
      if (location.pathname.replace(/^\//, "") == this.pathname.replace(/^\//, "") || location.hostname == this.hostname) {
        var a = $(this.hash);
        if (a = a.length ? a : $("[name=" + this.hash.slice(1) + "]"), a.length) return $("html,body").animate({
          scrollTop: a.offset().top
        }, 1e3), !1
      }
    })
  })

  $(window).load(function() {
    $("#loader").fadeOut(), $("#mask").delay(1e3).fadeOut("slow")
  })

  $(document).scroll(function() {
    if ( $(document).scrollTop() >= 500 ) {
      $(".navbar").addClass("navbar-fixed-top");
      $("html").addClass("has-fixed-nav");
    } else {
      $(".navbar").removeClass("navbar-fixed-top");
      $("html").removeClass("has-fixed-nav");
    }
  })

  $(document).ready(function() {
    $("#tab-container").easytabs()
  })
}(jQuery);
