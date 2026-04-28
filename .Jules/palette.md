## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2025-05-16 - [Robust Input Masking & Dependency Constraints]
**Learning:** Adding external CDN dependencies (like Lucide) to pages that don't already use them can be seen as a violation of project boundaries. Stick to high-quality emojis with ARIA labels for lightweight, dependency-free iconography. Robust input masking in vanilla JS requires a "delta-based" approach for cursor positioning to prevent jumping and to handle backspaces over separators smoothly. Always provide a semantic `<form action="...">` fallback for navigation, even when using JS for submission feedback.
**Action:** Use delta-based cursor logic for input masking. Avoid new CDNs unless standard. Ensure form actions are present as fallbacks.
