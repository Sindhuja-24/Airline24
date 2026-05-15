## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2025-05-15 - [Restoring Icons and Adding Explicit Action Feedback]
**Learning:** Legacy applications often have "incomplete" UI patterns where filters exist without an explicit action button. Adding a dedicated "Search" button with a loading state (disabled + text change) clarifies the user's intent and provides immediate feedback. Additionally, verifying library-specific attributes (like `data-lucide` for Lucide icons) is crucial when icons fail to render due to incorrect class usage in CDN-based integrations.
**Action:** Check for "passive" filter sets and add explicit action buttons to improve task clarity. Verify icon library implementation details (like attributes vs. classes) when icons fail to render.
