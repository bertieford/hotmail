import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter-products"
export default class extends Controller {
  static targets = ["filter", "pill", "list", "form"]
  // connect() {
  //   console.log(this.filterTarget)
  //   console.log(this.pillTargets)
  //   console.log(this.listTarget)
  // }
  filtration(event){
    const locationFilter = event.currentTarget.innerText.replace(/\s+/g, '')
    console.log(locationFilter)
    const url = `http://localhost:3000/products?location=${locationFilter}`
    console.log(url)
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.listTarget.outerHTML = data
    })
  }

  show(event){
    // console.log(this.pillTargets)
    this.pillTargets.forEach(target => {
      target.classList.add("d-none")
    })
  }

}
