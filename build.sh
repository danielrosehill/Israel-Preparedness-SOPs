#!/usr/bin/env bash
# Build all Red Alert SOP PDFs and create concatenated PDFs (by type + master)
set -euo pipefail
cd "$(dirname "$0")"

# PDF concatenation helper
concat_pdfs() {
  local output="$1"; shift
  if command -v pdfunite &>/dev/null; then
    pdfunite "$@" "$output"
  elif command -v gs &>/dev/null; then
    gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="$output" "$@"
  else
    echo "ERROR: Need pdfunite (poppler-utils) or gs (ghostscript) to concatenate PDFs"
    exit 1
  fi
}

echo "=== Building individual PDFs ==="

typst_files=(
  typst/daytime-posture.typ:output/readiness-postures/daytime-posture.pdf
  typst/nighttime-posture.typ:output/readiness-postures/nighttime-posture.pdf
  typst/escalation-readiness.typ:output/readiness-postures/escalation-readiness.pdf
  typst/shelter-check.typ:output/readiness-postures/shelter-check.pdf
  typst/mobility-limited-posture.typ:output/readiness-postures/mobility-limited-posture.pdf
  typst/protected-space-flowchart.typ:output/readiness-postures/protected-space-flowchart.pdf
  typst/siren-responses.typ:output/siren-responses/siren-responses.pdf
  typst/siren-responses-with-infant.typ:output/siren-responses/siren-responses-with-infant.pdf
  typst/emergency-supplies.typ:output/preparedness/emergency-supplies.pdf
  typst/family-emergency-plan.typ:output/preparedness/family-emergency-plan.pdf
  typst/home-preparation.typ:output/preparedness/home-preparation.pdf
  typst/emergency-contacts.typ:output/preparedness/emergency-contacts.pdf
  typst/go-bag.typ:output/preparedness/go-bag.pdf
  typst/accessibility-equipment.typ:output/preparedness/accessibility-equipment.pdf
  typst/pet-emergency.typ:output/preparedness/pet-emergency.pdf
  typst/daytime-posture-families.typ:output/readiness-postures/daytime-posture-families.pdf
  typst/hfc-app-config.typ:output/preparedness/hfc-app-config.pdf
)

# Ensure output directories exist
mkdir -p output/readiness-postures output/siren-responses output/preparedness output/combined

for entry in "${typst_files[@]}"; do
  src="${entry%%:*}"
  dst="${entry##*:}"
  echo "  $src -> $dst"
  typst compile --root . "$src" "$dst"
done

echo ""
echo "=== Building cover page ==="
typst compile --root . typst/combined-cover.typ output/cover.pdf
echo "  -> output/cover.pdf"

echo ""
echo "=== Creating combined PDFs by type ==="

# Readiness Postures combined
concat_pdfs output/combined/readiness-postures-combined.pdf \
  output/readiness-postures/daytime-posture.pdf \
  output/readiness-postures/nighttime-posture.pdf \
  output/readiness-postures/escalation-readiness.pdf \
  output/readiness-postures/shelter-check.pdf \
  output/readiness-postures/mobility-limited-posture.pdf \
  output/readiness-postures/protected-space-flowchart.pdf \
  output/readiness-postures/daytime-posture-families.pdf
echo "  -> output/combined/readiness-postures-combined.pdf"

# Siren Responses combined
concat_pdfs output/combined/siren-responses-combined.pdf \
  output/siren-responses/siren-responses.pdf \
  output/siren-responses/siren-responses-with-infant.pdf
echo "  -> output/combined/siren-responses-combined.pdf"

# Preparedness combined
concat_pdfs output/combined/preparedness-combined.pdf \
  output/preparedness/emergency-supplies.pdf \
  output/preparedness/family-emergency-plan.pdf \
  output/preparedness/home-preparation.pdf \
  output/preparedness/emergency-contacts.pdf \
  output/preparedness/go-bag.pdf \
  output/preparedness/accessibility-equipment.pdf \
  output/preparedness/pet-emergency.pdf \
  output/preparedness/hfc-app-config.pdf
echo "  -> output/combined/preparedness-combined.pdf"

echo ""
echo "=== Creating master combined PDF ==="

concat_pdfs output/combined/red-alert-sops-complete.pdf \
  output/cover.pdf \
  output/readiness-postures/daytime-posture.pdf \
  output/readiness-postures/nighttime-posture.pdf \
  output/readiness-postures/escalation-readiness.pdf \
  output/readiness-postures/shelter-check.pdf \
  output/readiness-postures/mobility-limited-posture.pdf \
  output/siren-responses/siren-responses.pdf \
  output/siren-responses/siren-responses-with-infant.pdf \
  output/readiness-postures/protected-space-flowchart.pdf \
  output/preparedness/emergency-supplies.pdf \
  output/preparedness/family-emergency-plan.pdf \
  output/preparedness/home-preparation.pdf \
  output/preparedness/emergency-contacts.pdf \
  output/preparedness/go-bag.pdf \
  output/preparedness/accessibility-equipment.pdf \
  output/preparedness/pet-emergency.pdf \
  output/readiness-postures/daytime-posture-families.pdf \
  output/preparedness/hfc-app-config.pdf

# Clean up intermediate cover
rm -f output/cover.pdf

# Also keep legacy path
cp output/combined/red-alert-sops-complete.pdf output/red-alert-sops-complete.pdf

echo "  -> output/combined/red-alert-sops-complete.pdf"
echo ""
echo "Done. $(pdfinfo output/combined/red-alert-sops-complete.pdf 2>/dev/null | grep Pages || echo '')"
