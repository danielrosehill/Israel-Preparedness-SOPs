// Protected Space Decision Flowchart
// SOP-PSP-08
// Based on Israel Home Front Command (Pikud HaOref) guidelines

#let page-badge = context {
  box(
    fill: rgb("#f5d000"),
    inset: (x: 0.4em, y: 0.15em),
    radius: 2pt,
  )[
    #text(font: "Roboto", size: 7.5pt, weight: "bold", fill: black)[
      #counter(page).display() / #counter(page).final().first()
    ]
  ]
}

#set page(
  paper: "a4",
  margin: (top: 1.8cm, bottom: 2.8cm, left: 1.5cm, right: 1.5cm),
  footer: context {
    v(0.4em)
    line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))
    v(0.2em)
    grid(
      columns: (1fr, auto, auto),
      gutter: 0.4em,
      [
        #set text(font: "Roboto", size: 6.5pt, fill: rgb("#888888"))
        *SOP-PSP-08* · *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
        *DISCLAIMER:* Not an official government resource. Use at your own risk. Based on HFC (Pikud HaOref) publications as of 12 Mar 2026. Official guidance: oref.org.il.
      ],
      align(center + horizon)[
        #page-badge
      ],
      align(right + bottom)[
        #image("../assets/image.png", width: 2cm)
      ],
    )
  },
)
#set text(font: "Roboto", size: 9pt)
#set par(leading: 0.45em)

// Title
#align(center)[
  #block(
    fill: rgb("#c0392b"),
    width: 100%,
    inset: (x: 1em, y: 0.5em),
    radius: 4pt,
  )[
    #text(fill: rgb("#f5b7b1"), size: 8pt, weight: "bold")[SOP-PSP-08]
    #v(0.1em)
    #text(fill: white, weight: "bold", size: 15pt)[Choosing a Protected Space]
    #v(0.1em)
    #text(fill: rgb("#f5b7b1"), size: 8.5pt)[Decision Flowchart — Home Front Command Guidelines]
  ]
]

#v(0.3em)

#text(size: 8.5pt)[When a Red Alert sounds, choose the *highest-priority* option you can reach *within the time available*. Enter and *wait 10 minutes*.]

#v(0.3em)

// Priority box helper
#let priority-box(number, name, desc, instructions, note: none) = {
  let num-color = if number == "1" { rgb("#922b21") } else if number == "2" { rgb("#b03a2e") } else if number == "3" { rgb("#cb4335") } else if number == "4" { rgb("#d4574a") } else { rgb("#666666") }

  block(
    width: 100%,
    stroke: 0.75pt + rgb("#d4a8a8"),
    radius: 4pt,
    clip: true,
  )[
    #grid(
      columns: (2em, 1fr),
      align(center + top)[
        #block(
          fill: num-color,
          width: 100%,
          inset: (y: 0.4em),
        )[
          #text(fill: white, weight: "bold", size: 13pt)[#number]
        ]
      ],
      block(inset: (x: 0.5em, y: 0.3em))[
        #text(weight: "bold", size: 9.5pt, fill: rgb("#922b21"))[#name]
        #h(0.4em)
        #text(size: 7.5pt, fill: rgb("#666"))[#desc]
        #v(0.1em)
        #set text(size: 8pt)
        #for inst in instructions [
          • #inst #linebreak()
        ]
        #if note != none [
          #text(size: 7.5pt, fill: rgb("#555"), style: "italic")[#note]
        ]
      ],
    )
  ]
  v(0.2em)
}

#priority-box("1", "Mamad / Mamak / Mamam",
  "Residential, floor, or institutional protected room",
  (
    "Close door tightly, turn handle 90°",
    "Close external steel window AND internal glass window",
    "If double-wing glass: remove wings in advance, store outside room",
  ),
  note: "Preferred choice. If your building has one, always use it.",
)

#priority-box("2", "Shelter",
  "Communal building shelter or public shelter",
  (
    "Building shelter — reachable within time to shelter, or via windowless inner stairwell",
    "Public shelter — must be reachable within time to shelter",
  ),
  note: "Best option if no Mamad/Mamak/Mamam in your building.",
)

#priority-box("3", "Inner Stairwell",
  "Stairwell without windows or exterior walls",
  (
    "Stay in the CENTER — not top floor, not bottom/entrance floor",
    "3+ floor building: stay where at least 2 floors are above you",
    "3-story building: middle floor staircase only",
    "Stay ON the staircase, not in the hallway; keep clear of obstacles",
  ),
  note: "Poured concrete structural core — proven to save lives.",
)

#priority-box("4", "Inner Room",
  "Innermost space, maximum walls, minimum windows",
  (
    "Sit close to an inner wall, BELOW window line, NOT facing the door",
    "Close all doors and windows; an inner corridor also works",
    "No ceramics, porcelain, or glass that may shatter",
  ),
)

#priority-box("5", "Last Resort — Open Ground",
  "No building or structure reachable in time",
  (
    "Lie flat on the ground and protect your head with your hands",
  ),
  note: "Also applies if in a caravan/prefab and cannot reach shelter in time.",
)

#v(0.15em)

// Invalid spaces
#block(
  fill: rgb("#fdf2f2"),
  width: 100%,
  inset: (x: 0.7em, y: 0.3em),
  radius: 3pt,
  stroke: 0.75pt + rgb("#e6b0aa"),
)[
  #text(weight: "bold", size: 8.5pt, fill: rgb("#922b21"))[NOT valid protected spaces:]
  #h(0.3em)
  #text(size: 8pt)[Kitchen · Bathroom · Toilet · Building entrance lobby · Caravans/prefab · Areas with ceramics, porcelain, or glass]
]
