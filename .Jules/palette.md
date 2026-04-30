## 2025-05-15 - [Improving Form Usability & Accessibility]
**Learning:** In legacy JSP projects, nested interactive elements (like `<button>` inside `<a>`) are common but break accessibility and HTML semantics. Converting these to single, well-styled semantic elements improves screen reader compatibility and prevents unexpected behavior. Adding a simple password visibility toggle significantly enhances UX by reducing login/registration friction.
**Action:** Always check for nested interactive elements and replace them with single semantic ones. Use vanilla JS for simple UI enhancements in projects where modern framework-based solutions aren't available.

## 2026-04-30 - [Input Masking with Cursor Preservation]
**Learning:** Implementing real-time input masking (e.g., card numbers) in vanilla JS requires careful cursor management. By calculating the 'delta' in length after formatting and using `setSelectionRange`, you can prevent the cursor from jumping to the end, ensuring a seamless typing experience even when separators are added or removed.
**Action:** Use the `delta`-based cursor adjustment pattern for all vanilla JS input masking to maintain UX quality.
