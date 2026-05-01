## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2025-05-16 - [Enhancing Payment UX with Input Masking and Emojis]
**Learning:** Real-time input masking for credit cards and expiry dates improves data entry accuracy, but vanilla JS implementations must manage cursor position (via selectionStart delta) to prevent jumping. Emojis (💳, 📅) are more resilient than CDN-based icon libraries in legacy JSP environments. Removing redundant `<a>` tags wrapping buttons improves semantics but requires verifying form `action` and `method` to preserve navigation.
**Action:** Use delta-based cursor management for masking. Prioritize emojis with `aria-hidden="true"` for decorative input icons. Always ensure forms have explicit submission actions when removing legacy navigation links.
