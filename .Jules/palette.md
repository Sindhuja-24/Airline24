## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-14 - [Refining Payment UX & Accessibility]
**Learning:** Implementing real-time input masking (e.g., for credit cards) significantly improves data entry accuracy, but vanilla JS implementations must explicitly handle cursor position (selectionStart/End) to prevent the cursor from jumping to the end during middle-string edits. Providing immediate visual feedback ("Processing...") on submission prevents double-clicks and reassures users during asynchronous-like operations.
**Action:** Use a helper function for input masking that calculates and restores cursor offsets. Always pair accessibility fixes (labels/ARIA) with interaction improvements to provide a holistic UX upgrade.
