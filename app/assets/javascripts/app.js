var ready = function() {
  'use strict';

  if (!window.Skillane) {
    window.Skillane = {};
  }

  var Skillane = window.Skillane;

  Skillane.App = Skillane.App || {};

  Skillane.Init = (function() {
    Skillane.App.Landing.Init();
    Skillane.App.TextareaResizing.Init();
    Skillane.App.Datepicker.Init();
  })();
};

window.$(document).on('turbolinks:load', ready)