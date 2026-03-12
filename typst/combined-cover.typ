// Cover page and Table of Contents for the combined SOP document

#let il-blue = rgb("#003893")

#set page(
  paper: "a4",
  margin: (top: 1.8cm, bottom: 2.8cm, left: 2cm, right: 2cm),
  footer: context {
    line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))
    v(0.15em)
    grid(
      columns: (1fr, auto),
      gutter: 0.4em,
      [
        #set text(font: "Roboto", size: 6pt, fill: rgb("#888888"))
        *v1.0* · *Rev:* 12 Mar 2026 · *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
        *DISCLAIMER:* Not an official government resource. Use at your own risk. Based on HFC (Pikud HaOref) publications as of 12 Mar 2026. Official guidance: oref.org.il.
      ],
      align(center)[
        #image("../assets/image.png", width: 1.5cm)
      ],
    )
  },
)
#set text(font: "Roboto", size: 10pt)

#v(0.8cm)

#align(center)[
  #block(
    fill: il-blue,
    width: 100%,
    inset: (x: 1.5em, y: 1em),
    radius: 6pt,
  )[
    #text(fill: white, weight: "bold", size: 24pt)[Red Alert SOPs]
    #v(0.2em)
    #text(fill: rgb("#8ab4f8"), size: 12pt)[Standard Operating Procedures for Rocket & Missile Alerts]
    #v(0.15em)
    #text(fill: rgb("#8ab4f8"), size: 10pt)[Based on Israel Home Front Command (Pikud HaOref) Guidelines]
  ]
]

#v(0.6cm)

#align(center)[
  #image("../assets/image.png", width: 4cm)
]

#v(0.6cm)

// Table of Contents
#text(weight: "bold", size: 14pt, fill: il-blue)[Table of Contents]
#v(0.3em)
#line(length: 100%, stroke: 0.75pt + rgb("#9bb0d0"))
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

#toc-entry("SOP-1", "Daytime Readiness Posture", "Daily readiness checklist for buildings without a Mamad/Mamak")
#toc-entry("SOP-2", "Nighttime Readiness Posture", "Before-bed setup and sleep-ready checklist")
#toc-entry("SOP-3", "Escalation Readiness", "72-hour preparation when the security situation deteriorates")
#toc-entry("SOP-4", "Shelter Check", "Find and verify your nearest shelters before you need them")
#toc-entry("SOP-5", "Readiness — Elderly / Mobility Limited", "Adapted readiness posture for mobility-limited individuals")
#toc-entry("SOP-6", "Siren Response — Quick Reference", "What to do when the siren sounds — all scenarios (adults)")
#toc-entry("SOP-7", "Siren Response — With Infant", "Siren response procedures with a baby 0–18 months")
#toc-entry("SOP-8", "Choosing a Protected Space", "Priority decision flowchart for selecting shelter")
#toc-entry("SOP-9", "Emergency Supplies Kit", "72-hour supply kit based on HFC guidelines")
#toc-entry("SOP-10", "Family Emergency Plan", "Family coordination, roles, drills, and communication plan")
#toc-entry("SOP-11", "Home Preparation", "Securing your home, protected space, and escape routes")
#toc-entry("SOP-12", "Emergency Contacts & Communication", "Essential numbers, alert channels, information discipline")

#v(0.4em)
#line(length: 100%, stroke: 0.75pt + rgb("#9bb0d0"))
#v(0.2em)
#text(size: 8pt, fill: rgb("#888"))[
  *v1.0* · *Rev:* 12 March 2026 · *Total SOPs:* 12 \
  Each SOP is designed to be printed individually. This combined document collects all SOPs for reference.
]
