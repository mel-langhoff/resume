import "@hotwired/turbo-rails"
import "controllers"
document.addEventListener("turbo:load", () => {
  const img = document.querySelector(".machine-img")
  const buttons = document.querySelectorAll(".machine-btn")
  const layer = document.getElementById("bottle-layer")

  if (!img || !layer) return

  // 🔥 SINGLE SOURCE OF TRUTH
const config = {
  home:     { x: 0.5, y: 0.30, img: "home.png" },
  about:    { x: 0.5, y: 0.38, img: "about.png" },
  resume:   { x: 0.5, y: 0.46, img: "resume.png" },
  projects: { x: 0.5, y: 0.54, img: "projects.png" },

  contact:  { x: 0.5, y: 0.62, img: "contact.png" },
  github:   { x: 0.5, y: 0.70, img: "github.png" },
  linkedin: { x: 0.5, y: 0.78, img: "linkedin.png" },
  topshelf: { x: 0.5, y: 0.86, img: "topshelf.png" }
}

  // function positionButtons() {
  //   const rect = img.getBoundingClientRect()

  //   buttons.forEach(btn => {
  //     const key = btn.dataset.key
  //     const pos = config[key]
  //     if (!pos) return

  //     btn.style.left = `${rect.width * pos.x}px`
  //     btn.style.top  = `${rect.height * pos.y}px`
  //   })
  // }

  function dropBottle(btn, key, url) {
    const containerRect = layer.getBoundingClientRect()
    const rect = btn.getBoundingClientRect()
    const cfg = config[key]

    const bottle = document.createElement("img")
    bottle.src = `/assets/${cfg.img}`
    bottle.classList.add("falling-bottle")

    // 🔥 SAME math as buttons → PERFECT alignment
    bottle.style.left = `${rect.left - containerRect.left + rect.width / 2}px`
bottle.style.top  = `${rect.top  - containerRect.top  + rect.height / 2 + 40}px`
    layer.appendChild(bottle)

    void bottle.offsetWidth
    bottle.classList.add("animate")

    setTimeout(() => {
      window.location.href = url
    }, 900)
  }

  buttons.forEach(btn => {
    btn.addEventListener("click", function(e) {
      e.preventDefault()

      const key = this.dataset.key
      const url = this.href

      this.style.transform = "scale(0.9)"
      setTimeout(() => this.style.transform = "scale(1)", 100)

      dropBottle(this, key, url)
    })
  })

  // positionButtons()
  // window.addEventListener("resize", positionButtons)
})