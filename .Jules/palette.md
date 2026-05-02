## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-05-02 - [Form Accessibility and Feedback]
**Learning:** Flight search forms in this application frequently use placeholders as the sole labeling mechanism, which is an accessibility anti-pattern. Adding ARIA labels provides the necessary context for screen readers without altering the visual design. Furthermore, providing a "Searching..." state on the submit button prevents double-submissions and clarifies the application's response to user action.
**Action:** Prioritize adding ARIA labels to inputs that rely only on placeholders and implement button loading states for all search/submission forms to enhance both accessibility and perceived performance.
