## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2025-05-16 - [Vanilla JS Input Masking with Cursor Preservation]
**Learning:** Implementing real-time input masking (e.g., card numbers) in vanilla JS requires careful handling of the cursor position. A robust pattern involves calculating the number of non-separator characters before the cursor and re-mapping the cursor to the same relative position after formatting. This prevents the cursor from jumping to the end of the field.
**Action:** Use the cursor-position-preserving loop when implementing input masking for credit cards or dates in this project's JSP forms.
