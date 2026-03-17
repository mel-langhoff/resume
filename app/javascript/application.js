import "@hotwired/turbo-rails"
import "controllers"

// =========================
// IPA ANIMATION
// =========================

document.addEventListener("turbo:load", () => {
  const canvas = document.getElementById("ipaCanvas")
  if (!canvas) return

  const ctx = canvas.getContext("2d")

  let animationId
  let particles = []
  let accentRain = []
  let textTargets = []
  let formationStarted = false
  let animationStopped = false
  let rainFadingOut = false

  const ipaChars = ["p","b","t","d","k","g","m","n","s","z","ʃ","ʒ","θ","ð","h","l","r","j","w","i","e","a","o","u","ə"]

  const accentColor = "#0000EE"

  function resizeCanvas() {
    canvas.width = window.innerWidth
    canvas.height = window.innerHeight
    buildTextTargets()
    buildParticles()
    buildAccentRain()
  }

  function buildTextTargets() {
    textTargets = []

    const textAnchor = document.querySelector(".hero-text-anchor")
    const placeholder = document.querySelector(".hero-text-placeholder")
    if (!textAnchor || !placeholder) return

    const offscreen = document.createElement("canvas")
    offscreen.width = canvas.width
    offscreen.height = canvas.height
    const offCtx = offscreen.getContext("2d")

    const rect = textAnchor.getBoundingClientRect()
    const style = window.getComputedStyle(placeholder)
    const x = rect.left
    const y = rect.top
    const fontSize = parseFloat(style.fontSize)
    const lineHeight = fontSize * 0.9

    offCtx.font = `900 ${fontSize}px Arial`
    offCtx.fillText("HI :)", x, y)
    offCtx.fillText("I'M", x, y + lineHeight)
    offCtx.fillText("MEL", x, y + lineHeight * 2)

    const imageData = offCtx.getImageData(0, 0, offscreen.width, offscreen.height).data

    for (let py = 0; py < offscreen.height; py += 8) {
      for (let px = 0; px < offscreen.width; px += 8) {
        const index = (py * offscreen.width + px) * 4
        if (imageData[index + 3] > 128) {
          textTargets.push({ x: px, y: py })
        }
      }
    }
  }

  class Particle {
    constructor(target) {
      this.target = target
      this.char = ipaChars[Math.floor(Math.random() * ipaChars.length)]
      this.x = Math.random() * canvas.width
      this.y = -Math.random() * canvas.height
      this.vy = Math.random() * 2 + 2
      this.vx = (Math.random() - 0.5) * 0.5
      this.locked = false
    }

    update() {
      if (this.locked || animationStopped) return

      if (!formationStarted) {
        this.y += this.vy
        this.x += this.vx
        return
      }

      const dx = this.target.x - this.x
      this.vx += dx * 0.002
      this.vx *= 0.9
      this.x += this.vx
      this.y += this.vy

      if (this.y >= this.target.y) {
        this.x = this.target.x
        this.y = this.target.y
        this.locked = true
      }
    }

    draw() {
      ctx.font = "bold 18px Arial"
      ctx.fillStyle = "#333"
      ctx.fillText(this.char, this.x, this.y)
    }
  }

  function buildParticles() {
    particles = textTargets.map(t => new Particle(t))
  }

  function buildAccentRain() {
    accentRain = Array.from({ length: 120 }, () => ({
      x: Math.random() * canvas.width,
      y: Math.random() * canvas.height,
      vy: Math.random() * 1 + 1
    }))
  }

  function animate() {
    ctx.clearRect(0, 0, canvas.width, canvas.height)

    accentRain.forEach(p => {
      p.y += p.vy
      if (p.y > canvas.height) p.y = 0

      ctx.globalAlpha = 0.1
      ctx.fillStyle = accentColor
      ctx.fillText(".", p.x, p.y)
    })

    ctx.globalAlpha = 1

    particles.forEach(p => {
      p.update()
      p.draw()
    })

    animationId = requestAnimationFrame(animate)
  }

  resizeCanvas()
  animate()

  setTimeout(() => formationStarted = true, 1200)

  window.addEventListener("resize", () => {
    cancelAnimationFrame(animationId)
    resizeCanvas()
    animate()
  })
})


// =========================
// VENDING MACHINE ANIMATION (FIXED FOR TURBO)
// =========================

document.addEventListener("turbo:load", () => {
  const links = document.querySelectorAll(".bottle-link")

  links.forEach(link => {
    link.addEventListener("click", function(e) {
      e.preventDefault()

      const bottle = this.querySelector(".bottle")
      const url = this.href

      // SHAKE
      bottle.classList.add("shake")

      setTimeout(() => {
        bottle.classList.remove("shake")
        bottle.classList.add("fall")
      }, 200)

      setTimeout(() => {
        window.location.href = url
      }, 900)
    })
  })
})

// =========================
// VENDING MACHINE ANIMATION
// =========================

document.addEventListener("turbo:load", () => {
  const links = document.querySelectorAll(".bottle-link")

  links.forEach(link => {
    link.addEventListener("click", function(e) {
      e.preventDefault()

      const bottle = this.querySelector(".bottle")
      const url = this.href

      // SHAKE
      bottle.classList.add("shake")

      setTimeout(() => {
        bottle.classList.remove("shake")
        bottle.classList.add("fall")
      }, 200)

      // NAVIGATE AFTER ANIMATION
      setTimeout(() => {
        window.location.href = url
      }, 900)
    })
  })
})