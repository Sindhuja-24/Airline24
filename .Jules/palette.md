## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-01 - [Enhancing Async Feedback & Preventing Double Submits]
**Learning:** For critical actions like payment, users need immediate visual confirmation that their request is being processed. Disabling the submit button and changing its text prevents redundant API calls and reduces user anxiety. In legacy JSP projects, ensure any utility classes (like `opacity-75`) are either defined in the CSS or used consistently if they're part of a known convention.
**Action:** Implement loading states (disabled button + status text) for all primary form submissions. Always verify that interactive elements are not nested (e.g., `<button>` inside `<a>`).
