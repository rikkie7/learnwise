import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="capacity"
export default class extends Controller {

  static targets = ["size", "capacity"];

  connect() {
    this.toggleCapacityField();
  }

  toggleCapacityField() {
    if (this.sizeTarget.value === "group") {
      this.capacityTarget.classList.remove("d-none");
    } else {
      this.capacityTarget.classList.add("d-none");
    }
  }
}
