(function(window, $) {
  'use strict';

  if (!window.Skillane) {
    window.Skillane = {};
  }

  var Skillane = window.Skillane;

  Skillane.App = Skillane.App || {};

  Skillane.App.TextareaResizing = {
    
    initTextareaResizing: function() {
      var observe;
        if (window.attachEvent) {
          observe = function (element, event, handler) {
            if(element) {
              element.attachEvent('on'+event, handler);
            }
          };
        }
        else {
          observe = function (element, event, handler) {
            if(element) {
              element.addEventListener(event, handler, false);
            }
          };
        }
      var text = document.getElementById('text');
      if(text){
        function resize () {
          text.style.height = 'auto';
          text.style.height = text.scrollHeight+'px';
        }
        function delayedResize () {
          window.setTimeout(resize, 0);
        }
        observe(text, 'change',  resize);
        observe(text, 'cut',     delayedResize);
        observe(text, 'paste',   delayedResize);
        observe(text, 'drop',    delayedResize);
        observe(text, 'keydown', delayedResize);

        text.focus();
        text.select();
        resize();
      }
    },

    Init: function() {
      this.initTextareaResizing();
    }
  };

})(window, jQuery);