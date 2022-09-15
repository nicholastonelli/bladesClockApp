import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "button"]

  change(event) {

    /* if (this.menuTarget.classList.contains("hidden")) {
      this.menuTarget.classList.remove("hidden")
    } else {
      this.menuTarget.classList.add("hidden")
    } */
  } 

  outsideClick(event) {

    //console.log(`event.target:`, event.target)
    //console.log(`this.element:`, this.element)
    //console.log(`this.menuTarget`, this.menuTarget)
    //console.log(this.element === event.target)
    //console.log(this.element.contains(event.target))

    // Ignore event if clicked within element
    if (
      this.element === event.target ||
      this.element.contains(event.target)
    ) {
      return
    } else {
      // Execute the actual action we're interested in
      console.log('hidden outside click activating')
      this.menuTarget.classList.add("hidden")
    }
  }

  connect() {
  }
}
