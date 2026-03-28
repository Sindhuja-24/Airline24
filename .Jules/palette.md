## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-03-28 - [Feedback & Double-Submission Prevention]
**Learning:** Providing immediate visual and functional feedback during form submissions (like disabling buttons and showing "Processing..." states) is crucial in simulations or async-style operations to prevent duplicate actions and user confusion. Even in non-modern frameworks, simple JS and CSS can achieve high-quality UX.
**Action:** Always implement button disabling and state feedback for critical form submissions like payments. Use CSS transitions for smoother interaction states.
