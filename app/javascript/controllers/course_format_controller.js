import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="format"
export default class extends Controller {
  static targets = ["format", "location"]

  connect() {
    this.togglelocationField()
  }

  togglelocationField() {
    if (this.formatTarget.value === "in-person") {
      this.locationTarget.classList.remove("d-none")
    } else {
      this.locationTarget.classList.add("d-none")
    }
  }
}
