## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-05-16 - [Advanced Input Masking and Accessibility in Legacy Forms]
**Learning:** Real-time input masking for sensitive fields (card numbers, dates) significantly reduces user error. Implementing this in vanilla JS requires careful cursor position management (using selectionStart and length deltas) to prevent jumping. Linking labels via `for`/`id` remains the most critical accessibility fix for these forms.
**Action:** Use the cursor-preserving vanilla JS masking pattern for all numeric-formatted fields. Ensure every form input has a corresponding linked label.
