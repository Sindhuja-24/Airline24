## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2025-05-20 - [Semantic Forms & Submission Feedback]
**Learning:** Legacy JSP pages often use loose inputs without a wrapping `<form>` element, relying on individual element IDs. Wrapping them in a semantic `<form>` and adding a submission feedback state (e.g., 'Searching...') significantly improves accessibility and the overall user experience by enabling standard browser features like "Enter" to submit.
**Action:** Ensure all input groups are wrapped in semantic `<form>` elements and provide immediate visual feedback (e.g., loading text and disabled state) upon submission to prevent multiple requests and clarify the system state.
