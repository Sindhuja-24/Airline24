## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2025-05-16 - [Cursor-Preserving Input Masking]
**Learning:** A robust vanilla JS implementation for input masking (e.g., credit card spaces, date slashes) involves calculating the length difference ('delta') between the value before and after formatting. This allows adjusting `selectionStart` to prevent the cursor from jumping to the end of the input, especially when separators are automatically added or removed during backspacing.
**Action:** Use a helper function that takes an input element and a formatting function, then applies the formatting while preserving the cursor position using the calculated delta.
