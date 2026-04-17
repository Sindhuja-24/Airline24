## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2025-05-20 - [Payment UX & A11y Standards]
**Learning:** Real-time input masking for card numbers and expiry dates provides immediate feedback and reduces errors. In legacy JSP/HTML, explicitly linking labels via `for`/`id` and using `aria-hidden` on decorative icons (like emojis in inputs) is crucial for screen reader accessibility. Simulated loading states on buttons prevent duplicate form submissions and improve perceived performance.
**Action:** Implement a standard masking helper and submission handler for all payment forms. Ensure icons within inputs are hidden from assistive technologies.
