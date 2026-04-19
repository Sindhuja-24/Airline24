## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-19 - [Consolidating Payment UX & Accessibility]
**Learning:** Standardizing payment flows across flight and hotel bookings (loading states, disabled buttons) creates a predictable user experience. Ensuring forms have correct 'action' attributes is critical when removing redundant '<a>' tags that were previously masking form submission logic.
**Action:** Always verify form 'action' and 'method' before removing navigation-wrapping anchors. Maintain consistent 2000ms simulation for 'processing' states across the app.
