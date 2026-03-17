import "@hotwired/turbo-rails"
import "controllers"

if (!window.vendingInitialized) {
  window.vendingInitialized = true

  document.addEventListener("click", function(e) {
    const btn = e.target.closest(".machine-btn")
    if (!btn) return

    e.preventDefault()
    e.stopPropagation() // 🧨 stops double firing

    const layer = document.getElementById("bottle-layer")
    if (!layer) return

    // 🧹 REMOVE ANY EXISTING BOTTLES (THIS FIXES YOUR BUG)
    layer.innerHTML = ""

    const config = {
      home:     "home.png",
      about:    "about.png",
      resume:   "resume.png",
      projects: "projects.png",
      contact:  "contact.png",
      github:   "github.png",
      linkedin: "linkedin.png",
      topshelf: "topshelf.png"
    }

    const key = btn.dataset.key
    const url = btn.href
    const imgName = config[key]

    const containerRect = layer.getBoundingClientRect()
    const rect = btn.getBoundingClientRect()

    const bottle = document.createElement("img")
    bottle.src = `/assets/${imgName}`
    bottle.classList.add("falling-bottle")

    const startX = rect.left - containerRect.left + rect.width / 2
    const startY = rect.top - containerRect.top + rect.height / 2

    const slotX = containerRect.width / 2
    const slotY = containerRect.height * 0.78
    const floorY = containerRect.height * 0.88

    const direction = Math.random() > 0.5 ? 1 : -1
    const slideX = direction * (Math.random() * 200 + 100)
    const spin = Math.random() * 360

    bottle.style.left = `${startX}px`
    bottle.style.top  = `${startY}px`
    bottle.style.transform = "translate(-50%, -50%) scale(0.6)"

    layer.appendChild(bottle)

    // MOVE TO SLOT
    requestAnimationFrame(() => {
      bottle.style.transition = "all 0.3s ease"
      bottle.style.left = `${slotX}px`
      bottle.style.top  = `${slotY}px`
    })

    // 🚀 FLY OUT
    setTimeout(() => {
      bottle.style.transition = "all 0.4s cubic-bezier(.3,1.6,.5,1)"
      bottle.style.transform = `
        translate(-50%, -120%)
        scale(1.3)
        rotate(${spin}deg)
      `
    }, 300)

    // DROP
    setTimeout(() => {
      bottle.style.transition = "all 0.4s cubic-bezier(.2,1,.3,1)"
      bottle.style.top = `${floorY}px`
      bottle.style.transform = `
        translate(-50%, -50%)
        scale(1)
        rotate(${spin}deg)
      `
    }, 700)

    // SLIDE
    setTimeout(() => {
      bottle.style.transition = "left 0.8s cubic-bezier(.1,.8,.2,1)"
      bottle.style.left = `${slotX + slideX}px`
    }, 1100)

    // FINAL REST
    setTimeout(() => {
      bottle.style.transform = `
        translate(-50%, -50%)
        rotate(${90 * direction}deg)
      `
    }, 1700)

    // NAVIGATE
    setTimeout(() => {
      window.location.href = url
    }, 2100)
  })
}