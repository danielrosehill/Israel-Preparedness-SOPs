# Changelog

## v3.0 — Icons, Legibility & New SOPs (19 Mar 2026)

### New SOPs
- **SOP-16** — Daytime Readiness Posture (Families with Children)
- **SOP-17** — HFC App Configuration (Android) — permissions, notifications, battery, DND override

### Design Overhaul
- **Font**: Switched from Roboto to **Atkinson Hyperlegible** across all 17 SOPs for maximum legibility
- **Icons**: Emoji icons (📱🔑🎒👟💳👓🚪📰🗺 etc.) replace "CHECKED"/"VERIFIED" text
- **Sub-checklists**: Indented ☐ checkbox lines replace pipe-separated action lists
- **Reflective strip area**: Dashed box at top of every page for affixing reflective tape
- **PNG output**: All SOPs now also available as PNG images (`output/png/`)

### Content Updates
- **SOP-1 (Daytime Posture)**: Added "Personal Readiness" section (dressed, personal needs tended to, glasses). Phone now "located and charging or charged". Go bag adds umbrella (winter) and AM/FM radio. Pair-check instruction added.
- **SOP-2 (Nighttime Posture)**: Phone explicitly allows DND/silent/regular but NOT off or airplane mode. Alert app override verification added. Personal needs section added. Umbrella in go bag. Pair-check instruction.
- **SOP-16 (Daytime Families)**: Same structure as SOP-1 plus Children section (dependents location, baby carrier, children's shoes) and infant supplies sub-checklist.
- **SOP-13 (Go Bag)**: Added umbrella for winter/rainy season.
- All SOPs: Revision date updated to 19 Mar 2026.

### Infrastructure
- `build.sh` updated for SOP-16 and SOP-17 in individual, combined, and master PDFs
- Template (`checklist.typ`) supports empty section names for instruction text without header bar

---

## v2.0 — Flowcharts & Clarity Pass (18 Mar 2026)

### Fletcher Flowcharts
- **SOP-8** (Protected Space): Proper Y/N decision tree for choosing where to shelter
- **SOP-6** (Siren Response): Location-based flowchart (Indoors / Vehicle / Outside) with detailed scenario cards
- **SOP-7** (Siren Response — Infant): Infant-specific shelter decision flowchart

### Clarity Improvements
- Baby-specific items marked "(if applicable)" in general posture SOPs
- Explained jargon: Mamam, double-wing glass windows, kitchen/bathroom prohibition
- Clarified terse notes across SOP-1 through SOP-11

### Downloads
- Complete collection: `red-alert-sops-complete.pdf` (all 15 SOPs)
- By category: readiness-postures, siren-responses, preparedness combined PDFs
- Individual SOPs: all 15 available separately
