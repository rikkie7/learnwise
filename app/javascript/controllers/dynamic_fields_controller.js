import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dynamic-fields"
export default class extends Controller {
  static targets = ["container"]

  connect() {
  }

  addField(event) {
    event.preventDefault();
    const newField = this.#createField();
    this.containerTarget.appendChild(newField);
  }

  #createField() {
    const newField = document.createElement("input");
    newField.type = "text";
    newField.name = "learning_topic[content][]";
    newField.className = "form-control mb-2";
    newField.placeholder = "Example: Identify and manage project risks";
    return newField;
  }
}
