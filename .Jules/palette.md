## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-05-30 - [Consistent Navigation & Form Feedback]
**Learning:** Hardcoded navigation menus in legacy apps often have incorrect 'active' states across different pages. Fixing these small details significantly improves user orientation. Providing immediate visual feedback (e.g., "Sending..." state) and disabling submit buttons on form submission prevents duplicate actions and clarifies system status.
**Action:** Always verify the 'active' class in navigation menus and implement submission loading states for all forms to improve perceived performance and reliability.
