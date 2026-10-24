import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "@hotwired/turbo-rails"
import "./channels/consumer"

Rails.start()
ActiveStorage.start()
