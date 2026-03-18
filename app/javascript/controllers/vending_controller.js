document.addEventListener("turbo:load", () => {
  const buttons = document.querySelectorAll(".machine-btn")
  const layer = document.getElementById("bottle-layer")

  if (!layer) return

  const config = {
    home:     { img: "home.png" },
    about:    { img: "about.png" },
    resume:   { img: "resume.png" },
    projects: { img: "projects.png" },
    contact:  { img: "contact.png" },
    github:   { img: "github.png" },
    linkedin: { img: "linkedin.png" },
    topshelf: { img: "topshelf.png" }
  }

  function dropBottle(btn, key, url) {
    const containerRect = layer.getBoundingClientRect()
    const rect = btn.getBoundingClientRect()

    const cfg = config[key]

    // safety fallback
    if (!cfg) {
      console.log("Missing config for:", key)
      window.location.href = url
      return
    }

    const bottle = document.createElement("img")
    bottle.src = `/assets/${cfg.img}`
    bottle.classList.add("falling-bottle")

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
})