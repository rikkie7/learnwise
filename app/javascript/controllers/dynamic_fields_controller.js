import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dynamic-fields"
export default class extends Controller {
  static targets = ["container"]

  connect() {
    console.log("Hello, Stimulus!", this.element);
    this.addbuttonListener();
  }

  addField() {
    const newField = document.createElement("input")
    newField.type = "text"
    newField.name = "learning_topic[content][]"
    newField.className = "form-control mb-2"
    this.containerTarget.appendChild(newField)
  }
}
