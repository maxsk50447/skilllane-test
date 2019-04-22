(function(window, $) {
  'use strict';

  if (!window.Skillane) {
    window.Skillane = {};
  }
  

  var Skillane = window.Skillane;

  Skillane.App = Skillane.App || {};

  Skillane.App.Landing = {

    initLanding: function(){
      $(document).ready(function() {
        setTimeout(function() {
          $("#main").removeClass("is-loading");
        }, 100)
      });
    },

    Init: function() {
      this.initLanding();
    }
  };
})(window, jQuery);