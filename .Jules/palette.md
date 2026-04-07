## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-07 - [Real-time Input Masking & Loading Feedback]
**Learning:** In legacy environments lacking form validation libraries, vanilla JS masking for credit cards and dates significantly improves data entry accuracy and "feel". Adding explicit loading states to buttons (disabled + text change) is crucial in these projects to prevent double-submissions and provide immediate visual confirmation of actions.
**Action:** Implement real-time masking for sensitive/formatted inputs and always include loading states for submit buttons using standard CSS utility classes like `.opacity-75` and `.cursor-not-allowed`.
