import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["startDate", "endDate"]

  connect() {
    this.initializeDatepickers()
    this.updateStyles()
  }

  initializeDatepickers() {
    this.startDatePicker = flatpickr(this.startDateTarget, {
      dateFormat: "d.m.Y",
      onChange: this.updateEndDateMin.bind(this),
      minDate: this.element.dataset.flatpickrMinDate || "today",
    });
    this.endDatePicker = flatpickr(this.endDateTarget, {
      dateFormat: "d.m.Y",
      minDate: this.element.dataset.flatpickrMinDate || "today",
    });
  }

  updateEndDateMin(selectedDates) {
    const startDate = selectedDates[0];
    this.endDatePicker.set("minDate", startDate);
  }

  updateStyles() {
    const selectedDate = this.element.querySelector('.flatpickr-day.selected')
    if (selectedDate) {
      selectedDate.style.backgroundColor = '#2196F3'
      selectedDate.style.color = 'white'
    }
  }
}
