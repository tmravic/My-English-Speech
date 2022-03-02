import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "start_recording", "stop_recording", 'ear', "start_playback", "stop_playback", "reset_playback", "upload" ]
  isRecording = false;
  clip = null;

  connect() {
    console.log("Recording controller standing by");
    console.log(`Recording: ${this.isRecording}`)
  }

  // pickUpAudio()

  record() {
    // Not recording and no clip
    if(this.isRecording === false && !this.clip) {
      this.isRecording = true;
      this.stop_recordingTarget.classList.remove("d-none")
      this.earTarget.classList.remove("d-none")
      this.start_recordingTarget.classList.add("d-none")
      // pickUpAudio()
    }
    console.log(`Recording: ${this.isRecording}`)
  }

  stop_recording() {
    // Recording but no clip saved yet
    if(this.isRecording === true && !this.clip) {

      this.clip = "recorded clip"

      this.earTarget.classList.add("d-none")
      this.start_playbackTarget.classList.remove("d-none")
      this.stop_recordingTarget.classList.add("d-none")
      this.stop_playbackTarget.classList.remove("d-none")
      this.reset_playbackTarget.classList.remove("d-none")
      this.isRecording = false;
    }
  }

  reset() {
    // Not recording because finished and clip save
    this.clip = null;
    this.start_recordingTarget.classList.remove("d-none")
    this.start_playbackTarget.classList.add("d-none")
    this.stop_playbackTarget.classList.add("d-none")
    this.reset_playbackTarget.classList.add("d-none")
  }

  // 1. Get the clickImageHandler to go from Microphone -> Stop button -> Play button

  // 2. Add resetHandler,

  // 3. Make sure clickImageHandler can now go:
  // Mic -> Stop -> Play (click resetButton) -> Mic

  // 4. Actual mediaStream handling using the recording api
  // (handle chunks etc.)


  // If we don't have an audio clip, only show the mic
  // Only show stop button when mid-recording
  // If we have a clip, hide the mic and stop, show reset/play/upload
  // isRecording = false
  // clip = null

  // isRecording = true
  // clip = null

  // isRecording = false && clip
  // clip { MediaStream thing... }
  // Show playback buttons

  // if isRecording = false && !clip
  // show just the record button

  // else if (!clip)
  // Stop recording

  // else
  // Play back the recording
}
