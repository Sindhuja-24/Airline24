## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-23 - [Real-time Input Masking in Vanilla JS]
**Learning:** Implementing real-time input masking (e.g., for credit cards or dates) in vanilla JS requires careful handling of the cursor position (`selectionStart`) to prevent it from jumping to the end of the input when characters or separators are added. A robust approach involves calculating the difference in length before and after formatting to adjust the cursor position.
**Action:** Use a standardized `fmt` helper function for input masking that tracks and restores cursor position to ensure a smooth user experience.
