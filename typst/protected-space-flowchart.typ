// Protected Space Decision Flowchart
// SOP-8
// Based on Israel Home Front Command (Pikud HaOref) guidelines
// Uses Fletcher for proper flowchart arrows

#import "@preview/fletcher:0.5.7": diagram, node, edge

#let il-blue = rgb("#003893")
#let il-blue-light = rgb("#e8eef7")

// Flowchart colours
#let clr-step = rgb("#e8eef7")
#let clr-step-stroke = rgb("#003893")
#let clr-decision = rgb("#fff8e1")
#let clr-decision-stroke = rgb("#f5a623")
#let clr-yes = rgb("#16a34a")
#let clr-yes-fill = rgb("#f0fdf4")
#let clr-no = rgb("#dc2626")
#let clr-no-fill = rgb("#fef2f2")
#let clr-terminal = rgb("#003893")
#let clr-rejoin = rgb("#b0b8c4")
#let clr-warning = rgb("#dc2626")
#let clr-warning-fill = rgb("#fef2f2")

// Helpers
#let action(word) = { text(weight: "bold", fill: il-blue, size: 10pt)[#upper(word)] }
#let yes-label = rect(fill: clr-yes, radius: 10pt, inset: (x: 6pt, y: 2pt))[#text(fill: white, weight: "bold", size: 10pt)[Y]]
#let no-label = rect(fill: clr-no, radius: 10pt, inset: (x: 6pt, y: 2pt))[#text(fill: white, weight: "bold", size: 10pt)[N]]

#let page-badge = context {
  box(
    fill: rgb("#f5d000"),
    inset: (x: 0.5em, y: 0.2em),
    radius: 2pt,
  )[
    #text(font: "Atkinson Hyperlegible", size: 9pt, weight: "bold", fill: black)[
      (#counter(page).display()/#counter(page).final().first())
    ]
  ]
}

#set page(
  paper: "a4",
  margin: (top: 2.8cm, bottom: 2.2cm, left: 1.5cm, right: 1.5cm),
  header: context {
    set text(font: "Atkinson Hyperlegible", size: 7.5pt, fill: rgb("#999"))
    grid(
      columns: (auto, 1fr, auto),
      gutter: 0.4em,
      align(left)[#text(weight: "bold", fill: rgb("#666"))[SOP-8] #h(0.4em) Choosing a Protected Space],
      [],
      page-badge,
    )
    v(0.1em)
    line(length: 100%, stroke: 0.4pt + rgb("#ddd"))
  },
  footer: context {
    line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))
    v(0.15em)
    grid(
      columns: (1fr, auto),
      gutter: 0.4em,
      [
        #set text(font: "Atkinson Hyperlegible", size: 6pt, fill: rgb("#888888"))
        *SOP-8* · *v2.0* · *Rev:* 19 Mar 2026 · *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
        *DISCLAIMER:* Not an official government resource. Use at your own risk. Based on HFC (Pikud HaOref) publications as of 12 Mar 2026. Official guidance: oref.org.il.
      ],
      align(center)[
        #grid(
          columns: (auto, auto),
          gutter: 0.3em,
          align(center)[#image("../assets/image.png", width: 1.2cm)],
          align(center + horizon)[#page-badge],
        )
      ],
    )
  },
)
#set text(font: "Atkinson Hyperlegible", size: 9pt)
#set par(leading: 0.45em)

// Reflective strip area
#block(
  width: 100%,
  height: 0.7cm,
  stroke: 0.5pt + rgb("#cccccc"),
  radius: 2pt,
  inset: (x: 0.4em, y: 0.1em),
)[
  #align(center + horizon)[
    #text(size: 6pt, fill: rgb("#bbb"), tracking: 0.1em)[▲ AFFIX REFLECTIVE STRIP HERE ▲]
  ]
]

#v(0.2em)

// Title
#align(center)[
  #block(
    fill: il-blue,
    width: 100%,
    inset: (x: 1em, y: 0.5em),
    radius: 4pt,
  )[
    #text(fill: rgb("#8ab4f8"), size: 8pt, weight: "bold")[SOP-8]
    #v(0.1em)
    #text(fill: white, weight: "bold", size: 15pt)[Choosing a Protected Space]
    #v(0.1em)
    #text(fill: rgb("#8ab4f8"), size: 8.5pt)[Decision Flowchart — Home Front Command Guidelines]
  ]
]

#v(0.2em)

#text(size: 8.5pt)[When a Red Alert sounds, follow this chart. Choose the *highest-priority* option you can reach *within the time available*. Always *wait 10 minutes* before leaving.]

#v(0.2em)

// ============================================================
// MAIN DECISION FLOWCHART
// ============================================================

#diagram(
  spacing: (8mm, 4mm),
  node-stroke: 1pt,
  edge-stroke: 1.5pt,

  // START
  node((0, 0), align(center)[
    *Red Alert sounds* \
    #action[GO] to protected space
  ],
    shape: rect, fill: clr-step, stroke: 1.5pt + clr-step-stroke,
    width: 56mm, inset: 6pt, corner-radius: 6pt),

  edge((0, 0), (0, 1), "->"),

  // Q1: Mamad?
  node((0, 1), align(center)[
    Do you have a *Mamad*, \
    *Mamak*, or *Mamam*?
  ],
    shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
    width: 56mm, inset: 6pt, corner-radius: 6pt),

  // YES → Mamad
  edge((0, 1), (1.3, 1), "->",
    label: yes-label,
    label-side: center),

  node((1.3, 1), align(center)[
    #text(weight: "bold", fill: il-blue)[Priority 1: MAMAD] \
    #action[CLOSE] blast door (handle 90°) \
    Close steel + glass windows \
    Sit against inner wall
    #v(2pt)
    #line(length: 100%, stroke: 1.5pt + clr-terminal)
  ],
    shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
    width: 52mm, inset: 6pt, corner-radius: 6pt),

  // NO → next question
  edge((0, 1), (0, 2), "->",
    label: no-label,
    label-side: center),

  // Q2: Shelter reachable?
  node((0, 2), align(center)[
    Can you reach a *shelter* \
    within the time available?
  ],
    shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
    width: 56mm, inset: 6pt, corner-radius: 6pt),

  // YES → Shelter
  edge((0, 2), (1.3, 2), "->",
    label: yes-label,
    label-side: center),

  node((1.3, 2), align(center)[
    #text(weight: "bold", fill: il-blue)[Priority 2: SHELTER] \
    Building shelter or public shelter \
    #action[ENTER] and close the door
    #v(2pt)
    #line(length: 100%, stroke: 1.5pt + clr-terminal)
  ],
    shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
    width: 52mm, inset: 6pt, corner-radius: 6pt),

  // NO → next question
  edge((0, 2), (0, 3), "->",
    label: no-label,
    label-side: center),

  // Q3: Inner stairwell?
  node((0, 3), align(center)[
    Does your building have an \
    *inner stairwell* without \
    windows or exterior walls?
  ],
    shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
    width: 56mm, inset: 6pt, corner-radius: 6pt),

  // YES → Stairwell
  edge((0, 3), (1.3, 3), "->",
    label: yes-label,
    label-side: center),

  node((1.3, 3), align(center)[
    #text(weight: "bold", fill: il-blue)[Priority 3: STAIRWELL] \
    Stay in the *centre* — not \
    top floor, not ground floor \
    Stay on staircase, not hallway
    #v(2pt)
    #line(length: 100%, stroke: 1.5pt + clr-terminal)
  ],
    shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
    width: 52mm, inset: 6pt, corner-radius: 6pt),

  // NO → next question
  edge((0, 3), (0, 4), "->",
    label: no-label,
    label-side: center),

  // Q4: Inner room?
  node((0, 4), align(center)[
    Is there an *inner room* \
    with maximum walls \
    and minimum windows?
  ],
    shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
    width: 56mm, inset: 6pt, corner-radius: 6pt),

  // YES → Inner room
  edge((0, 4), (1.3, 4), "->",
    label: yes-label,
    label-side: center),

  node((1.3, 4), align(center)[
    #text(weight: "bold", fill: il-blue)[Priority 4: INNER ROOM] \
    Sit against inner wall, \
    below window line, not \
    facing door. Close all doors.
    #v(2pt)
    #line(length: 100%, stroke: 1.5pt + clr-terminal)
  ],
    shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
    width: 52mm, inset: 6pt, corner-radius: 6pt),

  // NO → last resort
  edge((0, 4), (0, 5), "->",
    label: no-label,
    label-side: center),

  // Last resort
  node((0, 5), align(center)[
    #text(weight: "bold", fill: clr-warning)[Priority 5: LAST RESORT] \
    *Lie flat* on the ground. \
    Protect your head with \
    your hands.
    #v(2pt)
    #line(length: 100%, stroke: 1.5pt + clr-terminal)
  ],
    shape: rect, fill: clr-no-fill, stroke: 1.5pt + clr-no,
    width: 56mm, inset: 6pt, corner-radius: 6pt),
)

#v(0.3em)

// Stairwell detail box
#block(
  fill: il-blue-light,
  width: 100%,
  inset: (x: 0.7em, y: 0.3em),
  radius: 3pt,
  stroke: 0.5pt + rgb("#9bb0d0"),
)[
  #text(weight: "bold", size: 8.5pt, fill: il-blue)[Stairwell positioning:]
  #text(size: 8pt)[
    3+ floors: at least *2 floors above you*. 3-storey building: *middle floor only*. Stay *on the staircase*, not in the hallway. Poured concrete structural core — proven to save lives.
  ]
]

#v(0.15em)

// Mamad detail box
#block(
  fill: il-blue-light,
  width: 100%,
  inset: (x: 0.7em, y: 0.3em),
  radius: 3pt,
  stroke: 0.5pt + rgb("#9bb0d0"),
)[
  #text(weight: "bold", size: 8.5pt, fill: il-blue)[Mamad sealing:]
  #text(size: 8pt)[
    Close blast door tightly (handle 90°). Close external *steel* window and internal *glass* window. If glass window has two wings: *remove both wings* during escalation periods and store outside room (they cannot seal properly when closed).
  ]
]

#v(0.15em)

// Invalid spaces
#block(
  fill: clr-warning-fill,
  width: 100%,
  inset: (x: 0.7em, y: 0.3em),
  radius: 3pt,
  stroke: 0.75pt + rgb("#e6b0aa"),
)[
  #text(weight: "bold", size: 8.5pt, fill: rgb("#922b21"))[NOT valid protected spaces:]
  #h(0.3em)
  #text(size: 8pt)[Kitchen · Bathroom · Toilet · Building entrance lobby · Caravans / prefab structures · Areas with ceramics, porcelain, or glass that could shatter]
]
