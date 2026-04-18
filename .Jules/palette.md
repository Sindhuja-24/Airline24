## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-18 - [Robust Input Masking & State Feedback]
**Learning:** Real-time input masking (e.g., for credit cards) significantly improves UX but requires careful handling of the cursor position (`selectionStart`) and backspacing over separators to prevent "sticky" characters. Providing a "Processing..." state on submission prevents accidental double-actions and confirms the app is working.
**Action:** Use a reusable `mask` helper in vanilla JS that calculates selection delta and checks `inputType` for deletions. Always disable buttons and show loading text on form submission.
