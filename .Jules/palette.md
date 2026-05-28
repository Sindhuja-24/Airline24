## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2025-05-28 - [Accessible Forms in JSTL Loops]
**Learning:** When using JSTL loops (`<c:forEach>`) to generate form fields, accessibility is often overlooked, leading to duplicate IDs or missing labels. Using the loop index (e.g., `id="firstName_${i}"`) ensures unique associations between labels and inputs, which is crucial for screen readers and touch target usability.
**Action:** Use the JSTL loop variable to generate unique `id` and `for` attributes for all form elements generated within a loop.
