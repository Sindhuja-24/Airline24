## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2025-05-15 - [Lucide Icon Initialization and Loading States in JSP]
**Learning:** In legacy JSP environments using Lucide CDNs, icons often fail to render because `lucide.createIcons()` is not called automatically. Adding explicit initialization (safely wrapped in a check) restores the UI. Furthermore, implementing loading states using a shared CSS class (`.btn-loading`) instead of inline JS styles keeps the code maintainable and provides better visual feedback during transitions.
**Action:** When using third-party icon libraries in static JSP pages, ensure explicit initialization. Prefer CSS-based state management (e.g., adding/removing a class) over direct style manipulation in JavaScript for micro-UX enhancements.
