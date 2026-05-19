## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2024-05-19 - [Seamless Input Masking in Vanilla JS]
**Learning:** Implementing real-time input masking for payment fields (Card Number, Expiry Date) significantly improves data entry accuracy and professional feel. A generic masking function that calculates the "delta" in length to adjust `setSelectionRange` is essential to prevent the cursor from jumping to the end of the input when separators are automatically added.
**Action:** Use a cursor-aware masking helper for any formatted inputs to maintain a smooth typing experience.
