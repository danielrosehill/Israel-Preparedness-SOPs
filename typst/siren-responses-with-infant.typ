// Siren Response Quick Reference — With Infant (0–18 months)
// SOP-7

#import "@preview/fletcher:0.5.7": diagram, node, edge

#let il-blue = rgb("#003893")

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
#let clr-warning = rgb("#dc2626")

#let action(word) = { text(weight: "bold", fill: il-blue, size: 9pt)[#upper(word)] }
#let yes-label = rect(fill: clr-yes, radius: 10pt, inset: (x: 5pt, y: 1.5pt))[#text(fill: white, weight: "bold", size: 9pt)[Y]]
#let no-label = rect(fill: clr-no, radius: 10pt, inset: (x: 5pt, y: 1.5pt))[#text(fill: white, weight: "bold", size: 9pt)[N]]

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
  margin: (top: 2.6cm, bottom: 2.2cm, left: 1.3cm, right: 1.3cm),
  header: context {
    set text(font: "Atkinson Hyperlegible", size: 7.5pt, fill: rgb("#999"))
    grid(
      columns: (auto, 1fr, auto),
      gutter: 0.4em,
      align(left)[#text(weight: "bold", fill: rgb("#666"))[SOP-7] #h(0.4em) Siren Response — With Infant],
      [],
      page-badge,
    )
    v(0.1em)
    line(length: 100%, stroke: 0.4pt + rgb("#ddd"))
  },
  footer: context {
    line(length: 100%, stroke: 0.5pt + rgb("#ccc"))
    v(0.15em)
    grid(
      columns: (1fr, auto),
      gutter: 0.4em,
      [
        #set text(font: "Atkinson Hyperlegible", size: 6pt, fill: rgb("#888"))
        *SOP-7* · *v2.0* · *Rev:* 19 Mar 2026 · *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
        *DISCLAIMER:* Not an official government resource. Use at your own risk. Based on HFC (Pikud HaOref) publications as of 12 Mar 2026. Official guidance: oref.org.il. Always wait 10 min.
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
#set text(font: "Atkinson Hyperlegible", size: 7.8pt)
#set par(leading: 0.4em)

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

#align(center)[
  #block(
    fill: il-blue,
    width: 100%,
    inset: (x: 1em, y: 0.45em),
    radius: 4pt,
  )[
    #text(fill: rgb("#8ab4f8"), size: 8pt, weight: "bold")[SOP-7]
    #v(0.1em)
    #text(fill: white, weight: "bold", size: 14pt)[Siren Response — With Infant]
    #v(0.1em)
    #text(fill: rgb("#8ab4f8"), size: 8pt)[Baby 0–18 months · What to do when the Red Alert sounds]
  ]
]

#v(0.15em)

// Rule #1 box
#block(
  fill: rgb("#fef9e7"),
  width: 100%,
  inset: (x: 0.6em, y: 0.3em),
  radius: 3pt,
  stroke: 0.5pt + rgb("#f0d080"),
)[
  #text(weight: "bold", size: 8pt, fill: rgb("#7d6608"))[Rule \#1 in every scenario: PICK UP THE BABY FIRST.]
  #text(size: 7.5pt, fill: rgb("#7d6608"))[ Hold against your chest. Everything else is secondary. Leave the stroller behind.]
]

#v(0.15em)

// ============================================================
// MAIN DECISION FLOWCHART: At home with infant
// ============================================================

#align(center)[
#diagram(
  spacing: (6mm, 3.5mm),
  node-stroke: 1pt,
  edge-stroke: 1.2pt,

  // START
  node((0, 0), align(center)[
    *Red Alert sounds* \
    #action[PICK UP] baby first
  ],
    shape: rect, fill: clr-step, stroke: 1.5pt + clr-step-stroke,
    width: 48mm, inset: 5pt, corner-radius: 5pt),

  edge((0, 0), (0, 1), "->"),

  // Q1: Mamad?
  node((0, 1), align(center)[
    Do you have a *Mamad*?
  ],
    shape: rect, fill: clr-decision, stroke: 1.5pt + clr-decision-stroke,
    width: 40mm, inset: 4pt, corner-radius: 5pt),

  // YES → Mamad
  edge((0, 1), (1.2, 1), "->",
    label: yes-label,
    label-side: center),

  node((1.2, 1), align(center)[
    #action[GO] to Mamad with baby \
    Close blast door \
    Sit, hold baby close \
    Comfort: pacifier, feed, skin
    #v(1pt)
    *Wait 10 minutes*
    #v(2pt)
    #line(length: 100%, stroke: 1pt + clr-terminal)
  ],
    shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
    width: 46mm, inset: 5pt, corner-radius: 5pt),

  // NO → shelter?
  edge((0, 1), (0, 2), "->",
    label: no-label,
    label-side: center),

  node((0, 2), align(center)[
    Can you reach a *shelter* \
    while carrying the baby?
  ],
    shape: rect, fill: clr-decision, stroke: 1.5pt + clr-decision-stroke,
    width: 48mm, inset: 4pt, corner-radius: 5pt),

  // YES → shelter
  edge((0, 2), (1.2, 2), "->",
    label: yes-label,
    label-side: center),

  node((1.2, 2), align(center)[
    #action[GO] — baby against chest \
    One arm for baby, one for doors \
    Use baby carrier if by door
    #v(1pt)
    *Wait 10 minutes*
    #v(2pt)
    #line(length: 100%, stroke: 1pt + clr-terminal)
  ],
    shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
    width: 46mm, inset: 5pt, corner-radius: 5pt),

  // NO → stairwell?
  edge((0, 2), (0, 3), "->",
    label: no-label,
    label-side: center),

  node((0, 3), align(center)[
    Inner *stairwell* available?
  ],
    shape: rect, fill: clr-decision, stroke: 1.5pt + clr-decision-stroke,
    width: 40mm, inset: 4pt, corner-radius: 5pt),

  edge((0, 3), (1.2, 3), "->",
    label: yes-label,
    label-side: center),

  node((1.2, 3), align(center)[
    Centre of stairwell, sit down \
    Shield baby with your body
    #v(1pt)
    *Wait 10 minutes*
    #v(2pt)
    #line(length: 100%, stroke: 1pt + clr-terminal)
  ],
    shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
    width: 46mm, inset: 5pt, corner-radius: 5pt),

  // NO → inner room
  edge((0, 3), (0, 4), "->",
    label: no-label,
    label-side: center),

  node((0, 4), align(center)[
    *Innermost room*, floor, \
    inner wall, curl over baby
    #v(1pt)
    *Wait 10 minutes*
    #v(2pt)
    #line(length: 100%, stroke: 1pt + clr-terminal)
  ],
    shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
    width: 48mm, inset: 5pt, corner-radius: 5pt),
)
]

#v(0.2em)

// ============================================================
// DETAILED SCENARIOS (two-column reference)
// ============================================================

#let scenario(icon, name, steps, notes: ()) = {
  block(
    width: 100%,
    stroke: 0.6pt + rgb("#9bb0d0"),
    radius: 3pt,
    inset: (x: 0.5em, y: 0.3em),
  )[
    #text(size: 9pt)[#icon] #h(0.2em) #text(weight: "bold", size: 8.5pt, fill: il-blue)[#name]
    #v(0.08em)
    #for (i, s) in steps.enumerate() [
      #text(weight: "bold", fill: rgb("#444"))[#str(i + 1).] #s #linebreak()
    ]
    #if type(notes) == str [
      #text(size: 7pt, fill: rgb("#666"), style: "italic")[#notes]
    ] else if notes.len() > 0 [
      #text(size: 7pt, fill: rgb("#666"), style: "italic")[#notes.join(" · ")]
    ]
  ]
  v(0.18em)
}

#columns(2, gutter: 0.8em)[

#scenario("🌙", "Night — Baby Sleeping, No Mamad",
  (
    [Go straight to baby's room, *pick them up*],
    [Do *NOT* get dressed first — baby then shoes/keys],
    [If both parents: one takes *baby*, one takes go bag + torch],
    [Shelter or stairwell or inner room — *hold baby*, sit down],
    [*Wait 10 minutes* — baby may cry, that's OK],
  ),
  notes: ("Pre-pack a blanket to grab with baby", "Room-share during escalations for faster response"),
)

#scenario("🚶", "Outside / Walking with Stroller",
  (
    [Take baby *OUT of stroller* — hold against chest],
    [*LEAVE* the stroller behind],
    [Enter nearest *solid building* — stairwell or inner room],
    [If no building: *lie face down*, baby under you, shield with body],
    [*Wait 10 minutes*],
  ),
  notes: ("Baby carrier is better than stroller for siren readiness outdoors", "Know shelters on regular routes"),
)

#scenario("🚗", "Driving — Baby in Car Seat",
  (
    [*Pull over*, hazards on, engine off],
    [*Unbuckle* harness and lift baby out (faster than detaching seat)],
    [*Exit car* — hold baby against chest],
    [Enter *building* if reachable, or lie on ground shielding baby],
    [*Wait 10 minutes*],
  ),
  notes: ("Practise unbuckling the harness quickly", "Two adults: one grabs baby, one grabs nappy bag"),
)

#colbreak()

#scenario("🚌", "On a Bus",
  (
    [Hold baby securely — take *OUT of stroller*],
    [*Exit bus* when doors open — leave stroller on bus],
    [Enter nearest *building*],
    [If none: move away from bus, *lie on ground* shielding baby],
    [*Wait 10 minutes*],
  ),
  notes: ("Ask other passengers for help if needed",),
)

#scenario("🏢", "In a Public Building (Mall, Clinic, Office)",
  (
    [*Pick up* baby — OUT of stroller],
    [Follow signs/staff to designated *shelter*],
    [No shelter? *Stairwell* centre. No elevator.],
    [Sit against *inner wall*, shield baby, away from glass],
    [*Wait 10 minutes*],
  ),
  notes: ("At Tipat Halav (baby clinic): ask staff for shelter immediately", "You can carry while breastfeeding"),
)

#v(0.3em)

#block(
  fill: rgb("#f5eef8"),
  width: 100%,
  inset: (x: 0.5em, y: 0.3em),
  radius: 3pt,
  stroke: 0.5pt + rgb("#c9a5e0"),
)[
  #text(weight: "bold", size: 8pt, fill: rgb("#6c3483"))[Go Bag — Infant Additions]
  #v(0.08em)
  #text(size: 7.5pt)[
    Nappies + wipes · Pacifier · Bottle or formula (pre-measured) · Muslin/blanket · Change of clothes · Snack (if weaning) · Baby carrier (wrap or structured) · Any medication
  ]
]

]
