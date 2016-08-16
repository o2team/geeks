(function($, App) {
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
            this.$header.animateCSS('slideInDown', {
                delay: 700
            });
            this.$list.animateCSS('slideInUp', {
                delay: 900
            });
        }
    };

    ani.init();

})(jQuery, App);