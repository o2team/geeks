(function ($, App, Swiper) {
    var ani = {
        init: function() {
            this.$d = $('#evt');
            this.$header = this.$d.find('.evt-header');
            this.$list = this.$d.find('.evt-list');

            App.$win.on('siteLoaded', function() {
                ani.run();
            });
        },
        run: function() {
        }
    };

    ani.init();

    var slidesPerView = 2
    if (document.body.clientWidth <= 767) {
        slidesPerView = 1
    }
    /* 往期回顾轮播 */
    var swiper = new Swiper('.swiper-container', {
        // autoplay: 3000, //是否自动滚动
        speed: 500,      //滚动速速
        autoplayDisableOnInteraction: true,
        loop: true,
        centeredSlides: false,
        slidesPerView: slidesPerView,
        pagination: '.swiper-pagination',
        paginationClickable: true,
        spaceBetween: 39,
        breakpoints: {
            100: {
                slidesPerView: 2
            }
        }
    });

    /* 粒子动效 */
    window.onresize = function () {
        initEffect(document.querySelector('.index-banner__effect'));
    }
    initEffect(document.querySelector('.index-banner__effect'));
    
})(jQuery, App, Swiper);
