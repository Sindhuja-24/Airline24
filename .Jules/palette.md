## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-05-23 - [Refining Form Feedback & Screen Reader Experience]
**Learning:** Decorative emojis placed inside or near text (like status messages or input icons) should be wrapped in `<span aria-hidden="true">` to prevent screen readers from announcing their names (e.g., "lock emoji"), which can disrupt the flow of information. Real-time input masking for sensitive data like credit cards improves micro-UX but requires careful management of `selectionStart` to avoid cursor jumping.
**Action:** Always wrap decorative emojis in `aria-hidden` spans. When implementing masking, calculate the 'delta' of separator characters to maintain the correct cursor position.
