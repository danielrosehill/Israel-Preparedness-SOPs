// Cover page and Table of Contents for the combined SOP document
// This is compiled separately and prepended to the concatenated PDF

#set page(
  paper: "a4",
  margin: (top: 1.8cm, bottom: 2.8cm, left: 2cm, right: 2cm),
  footer: context {
    v(0.4em)
    line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))
    v(0.2em)
    grid(
      columns: (1fr, auto),
      gutter: 0.4em,
      [
        #set text(font: "Roboto", size: 6.5pt, fill: rgb("#888888"))
        *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
        *DISCLAIMER:* Not an official government resource. Use at your own risk. Based on HFC (Pikud HaOref) publications as of 12 Mar 2026. Official guidance: oref.org.il.
      ],
      align(right + bottom)[
        #image("../assets/image.png", width: 2.5cm)
      ],
    )
  },
)
#set text(font: "Roboto", size: 10pt)

#v(0.8cm)

#align(center)[
  #block(
    fill: rgb("#c0392b"),
    width: 100%,
    inset: (x: 1.5em, y: 1em),
    radius: 6pt,
  )[
    #text(fill: white, weight: "bold", size: 24pt)[Red Alert SOPs]
    #v(0.2em)
    #text(fill: rgb("#f5b7b1"), size: 12pt)[Standard Operating Procedures for Rocket & Missile Alerts]
    #v(0.15em)
    #text(fill: rgb("#f5b7b1"), size: 10pt)[Based on Israel Home Front Command (Pikud HaOref) Guidelines]
  ]
]

#v(0.6cm)

#align(center)[
  #image("../assets/image.png", width: 4cm)
]

#v(0.6cm)

// Table of Contents
#text(weight: "bold", size: 14pt, fill: rgb("#922b21"))[Table of Contents]
#v(0.3em)
#line(length: 100%, stroke: 0.75pt + rgb("#d4a8a8"))
#v(0.25em)

#let toc-entry(id, title, desc) = {
  grid(
    columns: (auto, 1fr),
    gutter: 0.3em,
    [
      #box(
        fill: rgb("#f5d000"),
        inset: (x: 0.4em, y: 0.15em),
        radius: 2pt,
      )[
        #text(size: 7.5pt, weight: "bold")[#id]
      ]
    ],
    [
      #text(weight: "bold", size: 9.5pt)[#title]
      #h(0.3em)
      #text(size: 7.5pt, fill: rgb("#666"))[— #desc]
    ],
  )
  v(0.25em)
}

#toc-entry("SOP-DAY-01", "Daytime Readiness Posture", "Daily readiness checklist for buildings without a Mamad/Mamak")
#toc-entry("SOP-NGT-02", "Nighttime Readiness Posture", "Before-bed setup and sleep-ready checklist")
#toc-entry("SOP-ESC-03", "Escalation Readiness", "72-hour preparation when the security situation deteriorates")
#toc-entry("SOP-SHL-04", "Shelter Check", "Find and verify your nearest shelters before you need them")
#toc-entry("SOP-MOB-05", "Readiness — Elderly / Mobility Limited", "Adapted readiness posture for mobility-limited individuals")
#toc-entry("SOP-SIR-06", "Siren Response — Quick Reference", "What to do when the siren sounds — all scenarios (adults)")
#toc-entry("SOP-INF-07", "Siren Response — With Infant", "Siren response procedures with a baby 0–18 months")
#toc-entry("SOP-PSP-08", "Choosing a Protected Space", "Priority decision flowchart for selecting shelter")

#v(0.4em)
#line(length: 100%, stroke: 0.75pt + rgb("#d4a8a8"))
#v(0.2em)
#text(size: 8pt, fill: rgb("#888"))[
  *Version:* 12 March 2026 · *Total SOPs:* 8 \
  Each SOP is designed to be printed individually. This combined document collects all SOPs for reference.
]
