require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { initSweetalert } from '../plugins/init_sweetalert';


if (document.querySelector('#sweet-alert-demo')) {
  initSweetalert('#sweet-alert-demo', {
    title: "Merci d'avoir donné ton avis :) ",
    buttons: false,
    timer: 12000,
    text: "Check the status of your booking on your dashboard",
    icon: "success"
  });
