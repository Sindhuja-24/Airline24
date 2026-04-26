## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-26 - [Dynamic Form Accessibility in JSTL]
**Learning:** When using JSTL loops (`<c:forEach>`) to generate form fields, accessibility is often overlooked. Explicitly linking labels to inputs using the loop index (e.g., `for="field_${i}"`) is essential for maintaining a high accessibility standard in dynamic forms.
**Action:** Always use the loop variable to generate unique IDs and matching `for` attributes in dynamic JSP forms.
