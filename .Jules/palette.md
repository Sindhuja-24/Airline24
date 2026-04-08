## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-08 - [Enhancing Payment Form UX with Real-time Formatting]
**Learning:** Real-time input formatting for card numbers and expiry dates significantly reduces friction and error in payment flows. When implementing such masks, it is crucial to preserve the user's cursor position (selectionStart) to avoid a disruptive jumping effect during typing. Additionally, providing visual feedback and disabling the submit button during processing prevents double-submissions and clarifies system status.
**Action:** Implement cursor-aware input masks for specialized formats like credit cards and dates. Ensure all form fields have explicit `for` attributes on labels for accessibility.
