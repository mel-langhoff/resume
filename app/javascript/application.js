import "@hotwired/turbo-rails";
import "controllers";

document.addEventListener("turbo:load", () => {
  const canvas = document.getElementById("ipaCanvas");
  if (!canvas) return;

  const ctx = canvas.getContext("2d");

  let animationId;
  let particles = [];
  let accentRain = [];
  let textTargets = [];
  let formationStarted = false;
  let animationStopped = false;
  let rainFadingOut = false;

  const ipaChars = [
    "p","b","t","d","ʈ","ɖ","c","ɟ","k","ɡ","q","ɢ","ʔ",
    "m","ɱ","n","ɳ","ɲ","ŋ","ɴ",
    "ʙ","r","ʀ",
    "ⱱ","ɾ","ɽ",
    "ɸ","β","f","v","θ","ð","s","z","ʃ","ʒ","ʂ","ʐ","ç","ʝ","x","ɣ","χ","ʁ","ħ","ʕ","h","ɦ",
    "ɬ","ɮ",
    "ʋ","ɹ","ɻ","j","ɰ",
    "l","ɭ","ʎ","ʟ",
    "ʘ","ǀ","ǃ","ǂ","ǁ","ɓ","ɗ","ʄ","ɠ","ʛ",
    "i","y","ɨ","ʉ","ɯ","u",
    "ɪ","ʏ","ʊ",
    "e","ø","ɘ","ɵ","ɤ","o",
    "ə",
    "ɛ","œ","ɜ","ɞ","ʌ","ɔ",
    "æ","ɐ",
    "a","ɶ","ɑ","ɒ"
  ];

  const accentColor = "#0000EE";

  function resizeCanvas() {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    buildTextTargets();
    buildParticles();
    buildAccentRain();
  }

  function buildTextTargets() {
    textTargets = [];

    const textAnchor = document.querySelector(".hero-text-anchor");
    const placeholder = document.querySelector(".hero-text-placeholder");
    if (!textAnchor || !placeholder) return;

    const offscreen = document.createElement("canvas");
    offscreen.width = canvas.width;
    offscreen.height = canvas.height;
    const offCtx = offscreen.getContext("2d");

    offCtx.clearRect(0, 0, offscreen.width, offscreen.height);
    offCtx.fillStyle = "#000";
    offCtx.textAlign = "left";
    offCtx.textBaseline = "top";

    const rect = textAnchor.getBoundingClientRect();
    const style = window.getComputedStyle(placeholder);
    const x = rect.left;
    const y = rect.top;
    const fontSize = parseFloat(style.fontSize);
    const lineHeight = fontSize * 0.9;

    offCtx.font = `900 ${fontSize}px Arial`;
    offCtx.fillText("HI :)", x, y);
    offCtx.fillText("I'M", x, y + lineHeight);
    offCtx.fillText("MEL", x, y + lineHeight * 2);

    const imageData = offCtx.getImageData(0, 0, offscreen.width, offscreen.height).data;
    const gap = 8;

    for (let py = 0; py < offscreen.height; py += gap) {
      for (let px = 0; px < offscreen.width; px += gap) {
        const index = (py * offscreen.width + px) * 4;
        const alpha = imageData[index + 3];

        if (alpha > 128) {
          textTargets.push({ x: px, y: py });
        }
      }
    }

    textTargets.sort((a, b) => {
      if (a.y === b.y) return a.x - b.x;
      return a.y - b.y;
    });
  }

  function nearestTextTargetDistance(x, y) {
    let minDist = Infinity;

    for (let i = 0; i < textTargets.length; i += 8) {
      const dx = textTargets[i].x - x;
      const dy = textTargets[i].y - y;
      const dist = Math.sqrt(dx * dx + dy * dy);
      if (dist < minDist) minDist = dist;
    }

    return minDist;
  }

  class Particle {
    constructor(target) {
      this.target = target;
      this.char = ipaChars[Math.floor(Math.random() * ipaChars.length)];
      this.size = Math.random() * 5 + 17;
      this.x = Math.random() * canvas.width;
      this.y = -Math.random() * canvas.height;
      this.vy = Math.random() * 1.4 + 2.6;
      this.vx = (Math.random() - 0.5) * 0.5;
      this.locked = false;
      this.color = "#333333";
    }

    update() {
      if (this.locked || animationStopped) return;

      if (!formationStarted) {
        this.y += this.vy;
        this.x += this.vx;

        if (this.x < -20) this.x = canvas.width + 20;
        if (this.x > canvas.width + 20) this.x = -20;
        return;
      }

      this.y += this.vy;

      const dx = this.target.x - this.x;
      this.vx += dx * 0.0018;
      this.vx *= 0.92;
      this.x += this.vx;

      if (this.y >= this.target.y) {
        this.x = this.target.x;
        this.y = this.target.y;
        this.vx = 0;
        this.vy = 0;
        this.locked = true;
      }
    }

    draw() {
      ctx.save();
      ctx.font = `900 ${this.size}px Arial`;
      ctx.fillStyle = this.color;
      ctx.textAlign = "right";
      ctx.textBaseline = "middle";
      ctx.fillText(this.char, this.x, this.y);
      ctx.restore();
    }
  }

  class AccentParticle {
    constructor() {
      this.char = ipaChars[Math.floor(Math.random() * ipaChars.length)];
      this.size = Math.random() * 4 + 14;
      this.reset();
    }

    reset() {
      this.x = Math.random() * canvas.width;
      this.y = -Math.random() * canvas.height;
      this.vy = Math.random() * 1.3 + 1.4;
      this.vx = (Math.random() - 0.5) * 0.18;
      this.baseOpacity = Math.random() * 0.16 + 0.07;
      this.opacity = this.baseOpacity;
      this.fadeSpeed = Math.random() * 0.01 + 0.008;
      this.active = true;
    }

    update() {
      if (!this.active || animationStopped) return;

      this.y += this.vy;
      this.x += this.vx;

      const dist = nearestTextTargetDistance(this.x, this.y);

      if (!rainFadingOut) {
        if (formationStarted && dist < 90) {
          this.opacity = this.baseOpacity * (dist / 90) * 0.35;
        } else {
          this.opacity = this.baseOpacity;
        }

        if (this.y > canvas.height + 50) {
          this.reset();
        }
      } else {
        this.opacity -= this.fadeSpeed;
        if (this.opacity <= 0) {
          this.active = false;
        }
      }
    }

    draw() {
      if (!this.active) return;

      ctx.save();
      ctx.globalAlpha = this.opacity;
      ctx.fillStyle = accentColor;
      ctx.font = `900 ${this.size}px Arial`;
      ctx.textAlign = "center";
      ctx.textBaseline = "middle";
      ctx.fillText(this.char, this.x, this.y);
      ctx.restore();
    }
  }

  function buildParticles() {
    particles = textTargets.map((target) => new Particle(target));
  }

  function buildAccentRain() {
    accentRain = [];
    for (let i = 0; i < 260; i++) {
      accentRain.push(new AccentParticle());
    }
  }

  function allParticlesLocked() {
    return particles.length > 0 && particles.every((p) => p.locked);
  }

  function accentRainGone() {
    return accentRain.every((p) => !p.active);
  }

  function animate() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    accentRain.forEach((p) => {
      p.update();
      p.draw();
    });

    particles.forEach((p) => {
      p.update();
      p.draw();
    });

    if (formationStarted && allParticlesLocked()) {
      rainFadingOut = true;

      const heroPhoto = document.getElementById("heroPhoto");
      if (heroPhoto) heroPhoto.classList.add("visible");
    }

    // 👉 FADE IN ABOUT SECTION HERE
    if (formationStarted && allParticlesLocked()) {
      const about = document.querySelector(".about-section");
      if (about) {
        setTimeout(() => {
          about.classList.add("show");
        }, 250);
      }
    }

    if (formationStarted && allParticlesLocked() && accentRainGone()) {
      animationStopped = true;
      cancelAnimationFrame(animationId);
      return;
    }

    animationId = requestAnimationFrame(animate);
  }

  resizeCanvas();
  animate();

setTimeout(() => {
  formationStarted = true;

  const about = document.getElementById("aboutSection");

  if (about) {
    setTimeout(() => {
      about.style.opacity = "1";
      about.style.transform = "translateY(0)";
    }, 500);
  }

}, 1500);

  window.addEventListener("resize", () => {
    formationStarted = false;
    animationStopped = false;
    rainFadingOut = false;

    const heroPhoto = document.getElementById("heroPhoto");
    if (heroPhoto) heroPhoto.classList.remove("visible");

    cancelAnimationFrame(animationId);
    resizeCanvas();
    animate();

    setTimeout(() => {
      formationStarted = true;
    }, 1500);
  });

  document.addEventListener(
    "turbo:before-cache",
    () => cancelAnimationFrame(animationId),
    { once: true }
  );
});