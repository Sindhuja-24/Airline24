## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-13 - [Enhancing Hotel Payment Experience]
**Learning:** Real-time input masking for sensitive data like card numbers and expiry dates significantly reduces entry errors and improves user confidence. In legacy environments, simple ID-based selectors in verification scripts are more reliable than text-based locators when handling special characters like currency symbols.
**Action:** Implement vanilla JS input masking for formatted fields and ensure all form labels are explicitly linked to inputs via 'for' and 'id' attributes.
