## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2024-12-11 - [Robust Real-time Input Masking]
**Learning:** Real-time input masking for card numbers and expiry dates in vanilla JS must use `selectionStart`/`selectionEnd` to prevent the cursor from jumping to the end of the input on every keystroke. Consolidating formatting logic into a single helper function maintains a small footprint in legacy environments.
**Action:** Use a reusable `formatInput` helper for all masked inputs and ensure cursor position is calculated relative to value length changes.
