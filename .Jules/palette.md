## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2025-05-18 - [Search Form Accessibility & Feedback]
**Learning:** Legacy JSP forms often rely on placeholders for labeling, which is insufficient for screen readers. Using `sr-only` labels provides necessary context without altering the visual design. Additionally, adding simple vanilla JS constraints (like `min` date) and loading states significantly improves the user's perception of control and feedback.
**Action:** Implement `sr-only` utility classes for accessible labeling in legacy designs. Use `DOMContentLoaded` listeners to apply dynamic constraints and submission feedback (disabling buttons, updating text) to enhance legacy form interactions.
