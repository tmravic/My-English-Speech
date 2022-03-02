import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "start-playback", "stop-playback", "reset-playback" ]

  connect() {
    console.log("Playback controller standing by")
  }
  clickit() {
    console.log("These control playback")
  }
}
