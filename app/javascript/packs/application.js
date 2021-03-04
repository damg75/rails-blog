// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
import "css/styles"
// bin/webpack-dev-server para testear la compilacion con webpack, en este caso se agrego bootstrap 4, popper.js y jquery bootstrap 5 ya no maneja esas dependencias

Rails.start()
Turbolinks.start()
ActiveStorage.start()
