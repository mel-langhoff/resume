import "@hotwired/turbo-rails"
import "controllers"

// =========================
// VENDING MACHINE ANIMATION
// =========================
document.addEventListener("turbo:load", () => {
  document.querySelectorAll(".bottle").forEach(bottle => {

    bottle.addEventListener("click", function() {
      this.classList.add("shake")

      setTimeout(() => {
        this.classList.remove("shake")
        this.classList.add("fall")
      }, 200)
    })

  })
})


document.addEventListener("turbo:load", () => {
  const img = document.querySelector(".machine-img")
  const buttons = document.querySelectorAll(".machine-btn")

  if (!img) return

  function positionButtons() {
    const rect = img.getBoundingClientRect()

    const positions = {
      home:     { x: 0.305, y: 0.31 },
      about:    { x: 0.38,  y: 0.31 },
      resume:   { x: 0.535, y: 0.31 },
      projects: { x: 0.615, y: 0.31 },

      contact:  { x: 0.305, y: 0.50 },
      github:   { x: 0.385, y: 0.50 },
      linkedin: { x: 0.535, y: 0.50 },
      topshelf: { x: 0.615, y: 0.50 }
    }

    buttons.forEach(btn => {
      const key = [...btn.classList].find(c => positions[c])
      if (!key) return

      const pos = positions[key]

      btn.style.left = `${rect.left + rect.width * pos.x}px`
      btn.style.top  = `${rect.top  + rect.height * pos.y}px`
      btn.style.width  = `${rect.width * 0.06}px`
      btn.style.height = `${rect.height * 0.12}px`
    })
  }

  positionButtons()
  window.addEventListener("resize", positionButtons)
})