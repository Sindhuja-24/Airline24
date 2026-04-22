## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-22 - [Refining Input Masking & Submission States]
**Learning:** Real-time input masking (e.g., card numbers, expiry dates) in vanilla JS should calculate the 'delta' of separators added/removed to adjust `selectionStart`, preventing cursor jumping. Implementing a 'Processing' state on buttons by disabling them and changing text provides critical feedback and prevents double-submissions in legacy apps without built-in form state management.
**Action:** Use the 'delta' calculation pattern for input masking and always add visual/functional locks (disabled state + text change) to submission buttons for async-like flows.
