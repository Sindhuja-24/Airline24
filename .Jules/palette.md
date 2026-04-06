## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-06 - [Micro-UX: Real-time Input Masking & A11y]
**Learning:** Real-time input formatting (like CC numbers or expiry dates) significantly reduces user cognitive load but can be disruptive if the cursor position isn't manually managed during the DOM update. Additionally, decorative emojis used as icons must be explicitly hidden with `aria-hidden="true"` to prevent screen readers from announcing them as part of the content.
**Action:** Use a helper function to calculate and restore cursor position (`selectionStart`/`selectionEnd`) when programmatically formatting user input in vanilla JS. Always wrap decorative emojis in a `<span>` with `aria-hidden="true"`.
