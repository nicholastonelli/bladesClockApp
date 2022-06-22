import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["svg"]
    static values = {
        marked: Number,
        sections: Number,
    }

  createSvg(tag) {
    let xmlns = "http://www.w3.org/2000/svg"
    return document.createElementNS(xmlns, tag)
  }


  makeClock(r = 50, cx = 55, cy = 55) {
    let clockFace = this.createSvg("circle")
    clockFace.setAttribute("fill", "#DDD")
    clockFace.setAttribute("stroke", "black")
    clockFace.setAttribute("stroke-width", "4")
    clockFace.setAttribute("r", r)
    clockFace.setAttribute("cx", cx)
    clockFace.setAttribute("cy", cy)
    clockFace.setAttribute("x", "55")
    clockFace.setAttribute("y", "55")

    let sections = this.makeSections(this.sectionsValue, cx, cy, r)
    
    this.svgTarget.appendChild(clockFace)
    this.svgTarget.appendChild(sections)
  }

  makeSections(sections, cx, cy, r){
    let clockLines = this.createSvg("svg")
        for (let i=1; i<=sections; i++){
            let clockLine = this.createSvg("path")
            clockLine.setAttribute("stroke", "black") 
            clockLine.setAttribute("stroke-width", "4") 
            clockLine.setAttribute("stroke-width", "4")
            clockLine.setAttribute("d", `M${cx} ${cy} ${cx + r * Math.cos((2 * Math.PI * i) / sections)} ${cy + r * Math.sin((2 * Math.PI * i) / sections)}`)
            clockLines.appendChild(clockLine)
        }
    return clockLines
  }

  setMarked(){

  }

  connect() {
    this.makeClock()
  }
}
