#!/usr/bin/env bash
# Build static docs site from SOP PDFs and PNGs
set -euo pipefail
cd "$(dirname "$0")/.."

DOCS=docs
SOPS_DIR="$DOCS/sops"
DL_DIR="$DOCS/downloads"

mkdir -p "$SOPS_DIR" "$DL_DIR"

# Copy PDFs and PNGs to downloads
cp output/readiness-postures/*.pdf "$DL_DIR/"
cp output/siren-responses/*.pdf "$DL_DIR/"
cp output/preparedness/*.pdf "$DL_DIR/"
cp output/combined/*.pdf "$DL_DIR/"
cp output/png/*.png "$DL_DIR/"

# SOP definitions: id|file|title|category|description
SOPS=(
  "SOP-1|daytime-posture|Daytime Readiness Posture|Readiness Postures|Comprehensive checklist for daytime readiness — personal state, phone, keys, go bag, situational awareness."
  "SOP-2|nighttime-posture|Nighttime Readiness Posture|Readiness Postures|Before-bed setup checklist — phone modes, clothes, torch, exit route, sleep conditions."
  "SOP-3|escalation-readiness|Escalation Readiness|Readiness Postures|Heightened alert posture — additional measures when threat level rises."
  "SOP-4|shelter-check|Shelter Check|Readiness Postures|Periodic shelter inspection — door, ventilation, supplies, accessibility."
  "SOP-5|mobility-limited-posture|Mobility-Limited Posture|Readiness Postures|Readiness adaptations for people with mobility limitations."
  "SOP-6|siren-responses|Siren Response — Quick Reference|Siren Responses|Flowchart and scenario cards for what to do when the Red Alert sounds."
  "SOP-7|siren-responses-with-infant|Siren Response — With Infant|Siren Responses|Infant-specific siren response flowchart and scenario cards (0–18 months)."
  "SOP-8|protected-space-flowchart|Choosing a Protected Space|Readiness Postures|Decision flowchart — Mamad > Shelter > Stairwell > Inner Room > Last Resort."
  "SOP-9|emergency-supplies|Emergency Supplies|Preparedness|72-hour supply checklist — water, food, medical, documents."
  "SOP-10|family-emergency-plan|Family Emergency Plan|Preparedness|Communication plan, meeting points, roles, and responsibilities."
  "SOP-11|home-preparation|Home Preparation|Preparedness|Physical home hardening — windows, furniture, utilities."
  "SOP-12|emergency-contacts|Emergency Contacts & Communication|Preparedness|Essential numbers (100–110), alert channels, information discipline."
  "SOP-13|go-bag|Go-Bag Packing & Maintenance|Preparedness|Portable emergency bag contents and maintenance schedule."
  "SOP-14|accessibility-equipment|Accessibility Equipment|Preparedness|Assistive devices and accessibility preparedness checklist."
  "SOP-15|pet-emergency|Pet Emergency|Preparedness|Pet evacuation and shelter preparedness checklist."
  "SOP-16|daytime-posture-families|Daytime Posture — Families|Readiness Postures|Daytime readiness with children's section — carrier, shoes, infant supplies."
  "SOP-17|hfc-app-config|HFC App Configuration|Preparedness|Home Front Command app setup for Android — permissions, notifications, DND override."
)

# Determine number of PNG pages per SOP (exact match, not prefix)
get_pages() {
  local file="$1"
  local count=0
  local n=1
  while [[ -f "$DL_DIR/${file}-${n}.png" ]]; do
    count=$((count + 1))
    n=$((n + 1))
  done
  echo "$count"
}

# ============================================================
# INDEX PAGE
# ============================================================
cat > "$DOCS/index.html" << 'HEADER'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Red Alert SOPs — Israel Emergency Preparedness</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Atkinson+Hyperlegible:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
<header>
  <h1>Red Alert SOPs</h1>
  <p>Standard Operating Procedures for Red Alert readiness in Israel</p>
</header>
<nav>
  <a href="#readiness">Readiness Postures</a>
  <a href="#siren">Siren Responses</a>
  <a href="#preparedness">Preparedness</a>
  <a href="#downloads">Downloads</a>
</nav>
<main>

<div class="banner">
  Not an official government resource. Based on Home Front Command (Pikud HaOref) publications. Official guidance: <a href="https://www.oref.org.il" style="color:inherit">oref.org.il</a>
</div>
HEADER

# Group by category
prev_cat=""
for entry in "${SOPS[@]}"; do
  IFS='|' read -r id file title cat desc <<< "$entry"

  if [[ "$cat" != "$prev_cat" ]]; then
    # Close previous grid
    if [[ -n "$prev_cat" ]]; then
      echo '</div>' >> "$DOCS/index.html"
    fi

    # Category anchor
    anchor=$(echo "$cat" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
    if [[ "$cat" == "Readiness Postures" ]]; then anchor="readiness"; fi
    if [[ "$cat" == "Siren Responses" ]]; then anchor="siren"; fi
    if [[ "$cat" == "Preparedness" ]]; then anchor="preparedness"; fi

    echo "<h2 class=\"category\" id=\"$anchor\">$cat</h2>" >> "$DOCS/index.html"
    echo '<div class="card-grid">' >> "$DOCS/index.html"
    prev_cat="$cat"
  fi

  cat >> "$DOCS/index.html" << EOF
<div class="card">
  <span class="sop-id">$id</span>
  <h3>$title</h3>
  <p>$desc</p>
  <div class="card-links">
    <a href="sops/${file}.html">View</a>
    <a href="downloads/${file}.pdf" download>PDF</a>
  </div>
</div>
EOF
done

# Close last grid
echo '</div>' >> "$DOCS/index.html"

# Downloads section
cat >> "$DOCS/index.html" << 'DLSECTION'

<h2 class="category" id="downloads">Combined Downloads</h2>
<div class="download-section" style="margin-top:1rem">
  <a href="downloads/red-alert-sops-complete.pdf" class="btn btn-primary" download>Complete Collection (PDF)</a>
  <a href="downloads/readiness-postures-combined.pdf" class="btn btn-secondary" download>Readiness Postures</a>
  <a href="downloads/siren-responses-combined.pdf" class="btn btn-secondary" download>Siren Responses</a>
  <a href="downloads/preparedness-combined.pdf" class="btn btn-secondary" download>Preparedness</a>
</div>

</main>
<footer>
  Created by Daniel Rosehill + Claude · Share freely with attribution<br>
  Based on HFC (Pikud HaOref) publications as of March 2026
</footer>
</body>
</html>
DLSECTION

# ============================================================
# INDIVIDUAL SOP PAGES
# ============================================================
for entry in "${SOPS[@]}"; do
  IFS='|' read -r id file title cat desc <<< "$entry"
  pages=$(get_pages "$file")

  cat > "$SOPS_DIR/${file}.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$id — $title</title>
  <link rel="stylesheet" href="../style.css">
  <link href="https://fonts.googleapis.com/css2?family=Atkinson+Hyperlegible:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
<header>
  <h1>$title</h1>
  <p>$id — $cat</p>
</header>
<nav>
  <a href="../index.html">All SOPs</a>
  <a href="../downloads/${file}.pdf" download>Download PDF</a>
</nav>
<main>

<div class="sop-header">
  <span class="sop-id">$id</span>
  <h2>$title</h2>
  <p style="color:#666;font-size:0.9rem;margin-top:0.3rem">$desc</p>
</div>

<div class="download-section">
  <a href="../downloads/${file}.pdf" class="btn btn-primary" download>Download PDF</a>
</div>
EOF

  # Add PNG previews
  for ((p=1; p<=pages; p++)); do
    cat >> "$SOPS_DIR/${file}.html" << EOF
<div class="sop-preview">
  <img src="../downloads/${file}-${p}.png" alt="$title — Page $p" loading="lazy">
</div>
EOF
  done

  cat >> "$SOPS_DIR/${file}.html" << 'EOF'

</main>
<footer>
  Created by Daniel Rosehill + Claude · Share freely with attribution<br>
  Based on HFC (Pikud HaOref) publications as of March 2026
</footer>
</body>
</html>
EOF

  echo "  Built: sops/${file}.html ($pages pages)"
done

echo ""
echo "Docs site built in docs/"
