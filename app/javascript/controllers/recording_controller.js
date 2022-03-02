import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "start-recording", "stop-recording" ]

  connect() {
    console.log("Recording controller standing by")
  }
  clickit() {
    console.log("These control recording")
  }
}
