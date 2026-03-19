# Red Alert SOPs

Standard Operating Procedures for Red Alert (rocket/missile/hostile aerial vehicle) readiness in Israel, built with Typst and compiled to PDF.

## Build

```bash
# Build all PDFs (individual + combined)
./build.sh

# Compile a single SOP
typst compile --root . typst/<filename>.typ output/<category>/<filename>.pdf
```

**Dependencies**: `typst`, `pdfunite` (poppler-utils) OR `ghostscript`

## Project Structure

```
typst/
  checklist.typ              # Shared template module (Israeli blue theme, aviation checklist format)
  combined-cover.typ         # Cover/TOC page for master PDF
  *.typ                      # Individual SOP source files (15 total, SOP-1 through SOP-15)
data/                        # YAML source reference (not imported by Typst — content is hardcoded in .typ)
assets/image.png             # Israeli flag + solidarity graphic (used in headers/footers)
hfc-reference/               # Archived Home Front Command HTML pages (source material)
output/                      # Built PDFs (git-tracked)
  readiness-postures/        # SOP-1 to SOP-5, SOP-8
  siren-responses/           # SOP-6, SOP-7
  preparedness/              # SOP-9 to SOP-15
  combined/                  # Concatenated PDFs by category + master
build.sh                     # Build orchestrator
```

## SOP ID Map

| ID | File | Category |
|---|---|---|
| SOP-1 | daytime-posture.typ | readiness-postures |
| SOP-2 | nighttime-posture.typ | readiness-postures |
| SOP-3 | escalation-readiness.typ | readiness-postures |
| SOP-4 | shelter-check.typ | readiness-postures |
| SOP-5 | mobility-limited-posture.typ | readiness-postures |
| SOP-6 | siren-responses.typ | siren-responses |
| SOP-7 | siren-responses-with-infant.typ | siren-responses |
| SOP-8 | protected-space-flowchart.typ | readiness-postures |
| SOP-9 | emergency-supplies.typ | preparedness |
| SOP-10 | family-emergency-plan.typ | preparedness |
| SOP-11 | home-preparation.typ | preparedness |
| SOP-12 | emergency-contacts.typ | preparedness |
| SOP-13 | go-bag.typ | preparedness |
| SOP-14 | accessibility-equipment.typ | preparedness |
| SOP-15 | pet-emergency.typ | preparedness |
| SOP-16 | daytime-posture-families.typ | readiness-postures |
| SOP-17 | hfc-app-config.typ | preparedness |

## Template System

- **`checklist.typ`** exports `checklist(title, subtitle, sop-id, version, sections)` — used by 11 of 15 SOPs
- **Custom-layout SOPs** (SOP-6, SOP-7, SOP-8, SOP-12) define their own page/header/footer
- **Color palette**: Israeli blue `#003893`, light blue `#e8eef7`, yellow accent `#f5d000`
- **Typography**: Roboto, 9pt base, aviation-style dotted leaders
- **Page**: A4, page badge counter with Israeli flag

## Conventions

- SOP IDs are sequential (SOP-1 through SOP-17) — next new SOP is SOP-18
- File names use kebab-case matching the SOP topic
- Content is hardcoded in `.typ` files (YAML in `data/` is reference only, not imported)
- All SOPs include the standard disclaimer about not being official government resources
- Version numbers start at 1.0
- Items use aviation checklist format: `ITEM .............. RESPONSE`
- After any content or layout change, rebuild with `./build.sh` and commit the updated PDFs
