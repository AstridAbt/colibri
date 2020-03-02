const earth = () => {
  const earthWidth = document.querySelector('.earth').clientWidth
  const fullEarth = document.querySelectorAll('.full-earth')
  const halfEarth = document.querySelector('.half-earth')
  const nbHalf = halfEarth ? 1 : 0
  const max = (earthWidth / (fullEarth.length + nbHalf)) - 5

  fullEarth.forEach(e => {
    e.style.height = `${max}px`
  })

  if (halfEarth) {
    halfEarth.style.height = `${max - 5}px`
  }
}

export { earth };
