import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    console.log("hello");
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      center: [this.markerValue.lng, this.markerValue.lat],
      zoom: 14
    })

    this.#addMarkerToMap()
    this.#fitMarkerToMap()
  }

    #addMarkerToMap(){
        const popup = new mapboxgl.Popup().setHTML(this.markerValue.info_window)

        new mapboxgl.Marker()
        .setLngLat([this.markerValue.lng, this.markerValue.lat])
        .setPopup(popup)
        .addTo(this.map)
      }

    #fitMarkerToMap(){
      const bounds = new mapboxgl.LngLatBounds();
      bounds.extend([this.markerValue.lng, this.markerValue.lat]);
    }
}
