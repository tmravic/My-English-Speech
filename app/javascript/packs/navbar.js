export default function navbar() {
  console.log("inside navbar")
  let scrollObject = {}
  const nav = document.querySelector(".navbar")
  const getScrollPosition = () => {
    scrollObject = {
      x: window.pageXOffset,
      y: window.pageYOffset,
    }

    if (scrollObject.y > 10) {
      if (!nav.classList.contains('active')) {
        nav.classList.add('active')
        console.log("adding class")
        console.log("nav element", nav)
      }
    } else {
      if (nav.classList.contains('active')) {
        nav.classList.remove('active')
        console.log("removing class")
        console.log("nav element", nav)
      }
    }
  }
  window.onscroll = getScrollPosition
}
