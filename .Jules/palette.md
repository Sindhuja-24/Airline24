## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2024-05-22 - [Enhancing Loop-Generated Form Accessibility]
**Learning:** When generating form fields within loops (e.g., JSTL `<c:forEach>`), it is critical to use the loop index to create unique `id` and `for` attribute pairs. This ensures that every input is correctly associated with its label for screen readers and touch targets. Redundant navigation wrappers (like `<a>` around `<button>`) should be removed to maintain clean form semantics and prevent conflicting browser actions.
**Action:** Use loop indices to generate unique accessibility IDs. Audit forms for redundant anchor tags wrapping submit buttons.
