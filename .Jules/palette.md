## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-05-11 - [Input Masking and Submission Feedback]
**Learning:** Real-time input masking for credit cards (4-4-4-4) and expiry dates (MM/YY) provides immediate validation feedback and improves data entry accuracy. In environments without modern form libraries, a compact vanilla JS helper using `selectionStart` and `selectionEnd` effectively maintains cursor position during formatting. Providing a "Processing..." state on submission prevents double-clicks and gives clear system status.
**Action:** Implement real-time masking for payment fields and loading states for submit buttons in all booking/payment flows to enhance perceived performance and reliability.
