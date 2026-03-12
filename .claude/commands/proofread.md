Proofread one or more SOPs for accuracy, clarity, and consistency.

If the user specifies SOP(s) by ID (e.g. "SOP-6") or filename, proofread only those. Otherwise, proofread all 15 SOPs.

For each SOP, read the corresponding `.typ` file in typst/ and check for:

1. **Spelling and grammar** — typos, awkward phrasing, missing words
2. **Factual accuracy** — cross-reference against Home Front Command guidance in hfc-reference/ where applicable. Flag anything that contradicts official HFC recommendations.
3. **Consistency** — item formatting matches aviation checklist conventions, terminology is consistent across SOPs (e.g. "Mamad" not "mamad", "Red Alert" not "red alert"), version numbers are present
4. **Completeness** — no truncated items, missing sections, or placeholder text
5. **Typst syntax** — unclosed brackets, missing commas in arrays, broken imports

Present findings grouped by SOP with severity levels:
- **Error**: Factual inaccuracy, broken Typst syntax, or missing critical content
- **Warning**: Inconsistent terminology, unclear phrasing, or formatting issues
- **Suggestion**: Minor wording improvements or style enhancements

Do NOT make edits — only report findings and wait for the user to decide which to fix.
