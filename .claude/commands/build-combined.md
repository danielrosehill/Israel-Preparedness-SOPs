Regenerate only the combined/concatenated PDFs from the existing individual PDFs — without recompiling from Typst sources.

Steps:
1. Verify individual PDFs already exist in output/readiness-postures/, output/siren-responses/, output/preparedness/
2. Run only the PDF concatenation steps from build.sh:
   - Readiness Postures combined (6 PDFs)
   - Siren Responses combined (2 PDFs)
   - Preparedness combined (7 PDFs)
   - Master combined (cover + all 15)
3. First compile the cover page: `typst compile --root . typst/combined-cover.typ output/cover.pdf`
4. Use `pdfunite` (preferred) or `gs` to concatenate
5. Clean up output/cover.pdf after master is built
6. Copy master to legacy path: `cp output/combined/red-alert-sops-complete.pdf output/red-alert-sops-complete.pdf`
7. Report page counts for each combined PDF
