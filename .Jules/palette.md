## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-05-17 - [Micro-UX with Input Masking & Feedback]
**Learning:** Real-time input masking for sensitive data like credit cards significantly reduces errors and improves perceived performance. Implementing this in vanilla JS requires careful cursor management (tracking `selectionStart`) to prevent jumping. Providing a "Processing..." state on submission prevents duplicate transactions and manages user expectations during simulated or real network delays.
**Action:** Implement "sticky separator" masking for payment fields and provide explicit button loading states for all destructive or financial actions.
