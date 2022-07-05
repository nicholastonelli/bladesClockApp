import { Controller } from "@hotwired/stimulus"
//import { useClickOutside } from 'stimulus-use'

export default class extends Controller {
  static targets = ["menu", "wrapper"]

  change() {
    console.log(`change triggering`)
    if (this.menuTarget.classList.contains("hidden")) {
      this.menuTarget.classList.remove("hidden")
    } else {
      this.menuTarget.classList.add("hidden")
    }
  }



  connect() {
    this.menuTarget = this.menuTarget.bind(this)
  }
}
