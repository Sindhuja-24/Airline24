## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-20 - [Robust Input Masking & Cursor Management]
**Learning:** A robust vanilla JS input masking implementation must handle cursor positioning to prevent jumping. By calculating the 'delta' between the value before and after formatting, `selectionStart` can be adjusted accurately. This approach also avoids "sticky separator" bugs during backspacing without needing explicit event type checks.
**Action:** Use the `delta`-based cursor adjustment pattern for all future input masking tasks to ensure a smooth typing experience.
