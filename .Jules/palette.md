## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-05-25 - [Robust Input Masking in Vanilla JS]
**Learning:** Real-time input masking (e.g., for credit card numbers) can frustrate users if the cursor "jumps" to the end of the field after every keystroke. Calculating the character count difference ('delta') before and after formatting allows for precise cursor placement using `setSelectionRange`, ensuring a smooth typing experience.
**Action:** Use the `selectionStart + delta` pattern when implementing real-time input formatting to maintain natural cursor behavior.
