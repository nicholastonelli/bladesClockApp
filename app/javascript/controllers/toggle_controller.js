import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"]

  change() {
    if (this.menuTarget.classList.contains("hidden")) {
      this.menuTarget.classList.remove("hidden")
    } else {
      this.menuTarget.classList.add("hidden")
    }
  }

  connect() {}
}
