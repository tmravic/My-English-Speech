export default function navbar() {
  console.log("inside navbar")
  let scrollObject = {}
  const nav = document.querySelector(".navbar")
  const getScrollPosition = () => {
    scrollObject = {
      x: window.pageXOffset,
      y: window.pageYOffset,
    }
    if (scrollObject.y > 10){
     nav.classList.add('active')
     console.log("adding class")
    } else {
      nav.classList.remove('active')
    console.log("removing class")
    }
  }
  window.onscroll = getScrollPosition
}
