## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like <button> inside <a>) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-25 - [Input Masking & Form Feedback in Vanilla JS]
**Learning:** Real-time input masking (e.g., for credit cards and dates) in vanilla JS requires careful cursor management using selectionStart and setSelectionRange to prevent the cursor from jumping. Providing immediate visual feedback (disabling buttons, "Processing..." state) on form submission is crucial for preventing double-submissions and improving perceived performance in legacy environments.
**Action:** Use a masking helper to manage cursor position during formatting. Always disable submit buttons and provide text feedback during form processing to enhance the UX of async-like operations.
