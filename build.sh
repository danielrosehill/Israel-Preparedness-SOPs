#!/usr/bin/env bash
# Build all Red Alert SOP PDFs and create a concatenated master PDF
set -euo pipefail
cd "$(dirname "$0")"

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
)

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
echo "=== Creating concatenated PDF ==="

# Ordered by SOP ID for logical reading
pdf_order=(
  output/cover.pdf
  output/readiness-postures/daytime-posture.pdf
  output/readiness-postures/nighttime-posture.pdf
  output/readiness-postures/escalation-readiness.pdf
  output/readiness-postures/shelter-check.pdf
  output/readiness-postures/mobility-limited-posture.pdf
  output/siren-responses/siren-responses.pdf
  output/siren-responses/siren-responses-with-infant.pdf
  output/readiness-postures/protected-space-flowchart.pdf
)

output_combined="output/red-alert-sops-complete.pdf"

# Use pdfunite (poppler-utils) if available, else ghostscript
if command -v pdfunite &>/dev/null; then
  pdfunite "${pdf_order[@]}" "$output_combined"
elif command -v gs &>/dev/null; then
  gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="$output_combined" "${pdf_order[@]}"
else
  echo "ERROR: Need pdfunite (poppler-utils) or gs (ghostscript) to concatenate PDFs"
  exit 1
fi

# Clean up intermediate cover
rm -f output/cover.pdf

echo "  -> $output_combined"
echo ""
echo "Done. $(pdfinfo "$output_combined" 2>/dev/null | grep Pages || echo '')"
