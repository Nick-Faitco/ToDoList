import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tasks"
export default class extends Controller {
  static targets = ["option", "radio", "icon"]

  connect() {
    console.log('Task controller connected');
  }
  checked() {
    console.log('this is checked function');
  }
}
