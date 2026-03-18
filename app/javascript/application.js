import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", () => {
  const layer = document.getElementById("bottle-layer")
  if (!layer) return

  const config = {
    home: "home.png",
    about: "about.png",
    resume: "resume.png",
    projects: "projects.png",
    contact: "contact.png",
    github: "github.png",
    linkedin: "linkedin.png",
    topshelf: "topshelf.png"
  }

  // ✅ ONE listener (no duplication)
  document.addEventListener("click", (e) => {
    const btn = e.target.closest(".machine-btn")
    if (!btn) return

    e.preventDefault()

    const key = btn.dataset.key
    const url = btn.href
    const img = config[key]

    if (!img) {
      window.location.href = url
      return
    }

    // 🧹 clear previous bottle
    layer.innerHTML = ""

    const bottle = document.createElement("img")
    bottle.src = `/assets/${img}`
    bottle.className = "falling-bottle"

    const slotX = window.innerWidth / 2
    const slotY = window.innerHeight + 20   // 🔥 true bottom

    bottle.style.left = `${slotX}px`
    bottle.style.top = `${slotY}px`
    bottle.style.transform = "translate(-50%, -50%) scale(0.8)"
    bottle.style.transition = "none"

    layer.appendChild(bottle)

    // 🔥 force render
    bottle.offsetHeight

    requestAnimationFrame(() => {
      requestAnimationFrame(() => {

        // pop out of slot
        bottle.style.transition = "top 0.15s ease"
        bottle.style.top = `${window.innerHeight * 0.9}px`

        // 🚀 shoot at face
        setTimeout(() => {
          bottle.style.transition = "all 0.5s cubic-bezier(.2,1.8,.3,1)"
          bottle.style.top = `${window.innerHeight * 0.4}px`
          bottle.style.transform = `
            translate(-50%, -50%)
            scale(5)
            rotate(${Math.random() * 720}deg)
          `

          document.body.classList.add("screen-hit")
          setTimeout(() => {
            document.body.classList.remove("screen-hit")
          }, 200)

        }, 150)

        // navigate
        setTimeout(() => {
          window.location.href = url
        }, 800)

      })
    })
  })
})