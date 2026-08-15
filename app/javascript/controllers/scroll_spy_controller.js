import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-spy"
export default class extends Controller {
  static targets = ["link", "reveal"]

  connect() {
    this.navObserver = new IntersectionObserver(
      (entries) => this.handleNavIntersect(entries),
      { rootMargin: "-40% 0px -55% 0px", threshold: 0 }
    )

    this.linkTargets.forEach((link) => {
      const id = link.getAttribute("href").slice(1)
      const section = document.getElementById(id)
      if (section) this.navObserver.observe(section)
    })

    this.revealObserver = new IntersectionObserver(
      (entries) => this.handleRevealIntersect(entries),
      { threshold: 0.15 }
    )

    this.revealTargets.forEach((el) => this.revealObserver.observe(el))

    this.boundHandleScroll = this.handleScroll.bind(this)
    window.addEventListener("scroll", this.boundHandleScroll)
  }

  disconnect() {
    if (this.navObserver) this.navObserver.disconnect()
    if (this.revealObserver) this.revealObserver.disconnect()
    window.removeEventListener("scroll", this.boundHandleScroll)
  }

  handleScroll() {
    const atBottom =
      window.innerHeight + window.scrollY >= document.documentElement.scrollHeight - 2

    if (!atBottom) return

    const lastLink = this.linkTargets[this.linkTargets.length - 1]
    this.linkTargets.forEach((link) => {
      const isActive = link === lastLink
      link.classList.toggle("text-amber", isActive)
      link.classList.toggle("text-paper-dim", !isActive)
    })
  }

  handleNavIntersect(entries) {
    entries.forEach((entry) => {
      if (!entry.isIntersecting) return
      const id = entry.target.id

      this.linkTargets.forEach((link) => {
        const isActive = link.getAttribute("href") === `#${id}`
        link.classList.toggle("text-amber", isActive)
        link.classList.toggle("text-paper-dim", !isActive)
      })
    })
  }

  handleRevealIntersect(entries) {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add("is-visible")
        this.revealObserver.unobserve(entry.target)
      }
    })
  }
}
