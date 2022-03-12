// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "button", "title" ]

  connect() {
    console.log("Hello controller standing by")
  }

  scrollDown() {
    console.log("I got clicked")
    this.titleTarget.classList.add("title-top-margin")
    this.titleTarget.scrollIntoView();
  }
}
