// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .



window.onload = function() {
  drop = document.querySelector('#my-drop-down-menu');
  button = document.querySelector('.vs__selected-options');
  document.querySelector('.header-language-select').addEventListener('click', () => {
    if (drop.classList.contains("hidden_dropdown")){
      drop.classList.remove('hidden_dropdown');
      drop.classList.add('vs__dropdown-menu');
      button.classList.add('dropdown_opacity');
    }
    else{
      drop.classList.remove('vs__dropdown-menu');
      drop.classList.add('hidden_dropdown');
      button.classList.remove('dropdown_opacity');
    }
  })
}
