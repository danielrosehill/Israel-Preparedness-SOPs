Create a new SOP. The user will describe the topic — e.g. "earthquake response" or "chemical attack shelter-in-place".

Steps:

1. **Determine the next SOP ID** by checking existing .typ files in typst/ for the highest SOP-N number, then increment by 1.

2. **Determine the category** (readiness-postures, siren-responses, or preparedness) based on the topic. Ask the user if ambiguous.

3. **Choose the template approach**:
   - For checklist-style SOPs (most common): import and use `checklist.typ`
   - For scenario-based SOPs (like siren responses): use custom two-column layout following SOP-6/SOP-7 patterns
   - For flowchart/decision SOPs: follow SOP-8's priority-box pattern

4. **Draft the content** based on the user's description. Use Home Front Command references in hfc-reference/ as source material where relevant. Follow these conventions:
   - Aviation checklist format for items: `ITEM .............. RESPONSE`
   - Israeli blue color scheme (#003893, #e8eef7, #f5d000)
   - Include version: "1.0"
   - Use emoji icons for section headers consistent with existing SOPs
   - Include standard disclaimer text

5. **Create the .typ file** at `typst/<kebab-case-name>.typ`

6. **Create a matching YAML data file** at `data/<category>/<kebab-case-name>.yaml` with the structured content

7. **Update build.sh** — add the new SOP to the `typst_files` array and the appropriate combined PDF concatenation command

8. **Update the combined cover** in `typst/combined-cover.typ` with a new TOC entry

9. **Update README.md** — add the new SOP to the appropriate table

10. **Run `./build.sh`** to verify compilation succeeds

11. Report the new SOP ID, filename, and page count.
