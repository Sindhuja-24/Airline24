## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2024-05-24 - [Accessible Dynamic Forms in JSTL]
**Learning:** In legacy JSP forms using `<c:forEach>`, developers often omit `id` and `for` attributes because they must be unique. Using the loop index `${i}` to generate unique IDs (e.g., `id="firstName_${i}"`) is an essential pattern here to maintain WCAG compliance for label-input associations.
**Action:** Always utilize loop variables in JSTL to generate unique IDs for form controls. Combine this with a 'Processing...' loading state on the form's submit event to provide immediate feedback in an otherwise static environment.
