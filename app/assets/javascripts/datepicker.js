(function(window, $) {
  'use strict';

  if (!window.Skillane) {
    window.Skillane = {};
  }
  

  var Skillane = window.Skillane;

  Skillane.App = Skillane.App || {};

  Skillane.App.Datepicker = {

    initDatepicker: function(){
      $(document).ready(function() {
        $('[data-behavior=daterangepicker]').daterangepicker({
          opens: 'left'
        }, function(start, end, label) {
          console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
        });
      });
    },

    Init: function() {
      this.initDatepicker();
    }
  };
})(window, jQuery);