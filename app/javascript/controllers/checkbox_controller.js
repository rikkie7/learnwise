import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {

  static targets = ["completed", "incomplete", "course"]

  connect() {
    const complete = this.completedTarget.checked;
    const incomplete = this.incompleteTarget.checked;
    const today = new Date();


    if (complete === true && incomplete === false ) {
      this.courseTargets.forEach((courseElement) => {
        const endDate = new Date(courseElement.getAttribute("end-date"))
        if (today < endDate) {
          courseElement.classList.add("d-none");
        }
        else {
          courseElement.classList.remove("d-none")
        }
      })
    }
    else if (complete === false && incomplete === true ) {
      this.courseTargets.forEach((courseElement) => {
        const endDate = new Date(courseElement.getAttribute("end-date"))
        if (today > endDate) {
          courseElement.classList.add("d-none");
        }
        else {
          courseElement.classList.remove("d-none")
        }
      })
    }
    else {
      this.courseTargets.forEach((courseElement) => {
          courseElement.classList.remove("d-none");
          courseElement.classList.remove("d-none")
      })
    }
  }
}



// check if both checkbox is unchecked, show both pages
// if complete is checked, only show complete.
//if incomplete is checked, only show incomplete
