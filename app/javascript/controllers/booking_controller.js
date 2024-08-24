import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cancel-booking"
export default class extends Controller {

  static values = { warning: String }

  cancel(event) {
    if (this.hasWarningValue) {
      event.preventDefault();
      alert(this.warningValue);
    }
  }
}
