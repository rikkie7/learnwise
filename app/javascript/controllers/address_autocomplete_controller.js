import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="address-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["address"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address"
    })
    this.geocoder.addTo(this.element)
    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
    // this.element.querySelector(".mapboxgl-ctrl-geocoder--input").placeholder = "Where are you going to have your class?"
    // this.element.querySelector(".mapboxgl-ctrl-geocoder--input").classList.add("form-control")
    // // Add custom class to the geocoder container
    // this.element.querySelector(".mapboxgl-ctrl-geocoder").classList.add("custom-geocoder")
    // Modify the input element
    const inputEl = this.element.querySelector(".mapboxgl-ctrl-geocoder--input")
    inputEl.placeholder = "Where are you going to have your class?"
    inputEl.classList.add("form-control")
    this.#addClearButton(inputEl)
  }

  disconnect() {
    this.geocoder.onRemove()
  }
  #setInputValue(event) {
    this.addressTarget.value = event.result["place_name"]
  }

  #clearInputValue() {
    this.addressTarget.value = ""
  }

  #addClearButton(inputEl) {
    const clearButton = document.createElement('button')
    clearButton.innerHTML = '×'
    clearButton.className = 'clear-button'
    clearButton.setAttribute('type', 'button')
    clearButton.style.display = 'none'

    inputEl.parentNode.appendChild(clearButton)

    inputEl.addEventListener('input', () => {
      clearButton.style.display = inputEl.value ? 'block' : 'none'
    })

    clearButton.addEventListener('click', () => {
      inputEl.value = ''
      clearButton.style.display = 'none'
      this.geocoder.clear()
    })
  }
}
