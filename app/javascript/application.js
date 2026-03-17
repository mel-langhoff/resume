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