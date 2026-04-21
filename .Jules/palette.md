## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-21 - [Robust Vanilla JS Input Masking]
**Learning:** Real-time input masking in vanilla JS (e.g., for credit cards or dates) often causes the cursor to jump to the end of the field. A robust way to prevent this without complex backspace-detection logic is to calculate the 'delta' in length between the raw and formatted values and adjust the `selectionStart` accordingly.
**Action:** Use the `formatted.length - original.length` delta to adjust `setSelectionRange` after every input event to ensure a smooth, non-jumping cursor experience.
