## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-06-01 - [Accessible Search Forms and Navigation Fixes]
**Learning:** Legacy JSP applications often lack proper form labels, relying instead on placeholders which are not accessible. Implementing a CSS-based `.sr-only` class allows adding semantic labels without disrupting the visual design. Providing immediate visual feedback (e.g., "Searching...") on form submission is a high-impact micro-UX win that prevents double-submissions.
**Action:** Always include a `.sr-only` utility in global styles for accessible-but-hidden labels. Ensure all primary action buttons have a clear loading state.
