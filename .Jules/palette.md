## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-05-26 - [Timezone-Aware Date Validation and Form Feedback]
**Learning:** Using `new Date().toISOString()` for setting date minimums can lead to timezone-related bugs where users in certain regions are blocked from same-day actions. `toLocaleDateString('en-CA')` is a more reliable way to get the local `YYYY-MM-DD` date in vanilla JavaScript. Additionally, providing visual feedback via a "Searching..." state on submit buttons prevents double-submissions and confirms user intent in legacy apps.
**Action:** Use `toLocaleDateString('en-CA')` for local date formatting. Always implement loading states and screen-reader-only labels (`.sr-only`) when improving legacy forms that lack semantic labeling.
