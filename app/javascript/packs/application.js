// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

$('.dropdown').on('show.bs.dropdown', function navTopDown() {
  $(this).find('.dropdown-menu').first().stop(true, true).slideDown();
});

$('.dropdown').on('hide.bs.dropdown', function navTopUp() {
  $(this).find('.dropdown-menu').first().stop(true, true).slideUp();
});

$('.dropup').on('show.bs.dropdown', function navBottomDown() {
  $(this).find('.dropdown-menu').first().stop(true, true).slideDown();
});

$('.dropup').on('hide.bs.dropdown', function navBottomUp() {
  $(this).find('.dropdown-menu').first().stop(true, true).slideUp();
});

// External imports
import "bootstrap";
import { initGetPost } from '../plugins/init_get_post';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  initGetPost();
  // Call your functions here, e.g:
  // initSelect2();
  
});
