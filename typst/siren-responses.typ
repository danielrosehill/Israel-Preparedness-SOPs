// Siren Response Quick Reference — All Scenarios (Adults)
// SOP-6

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
      align(left)[#text(weight: "bold", fill: rgb("#666"))[SOP-6] #h(0.4em) Siren Response — Quick Reference],
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
        *SOP-6* · *v2.0* · *Rev:* 19 Mar 2026 · *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
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
    #text(fill: rgb("#8ab4f8"), size: 8pt, weight: "bold")[SOP-6]
    #v(0.1em)
    #text(fill: white, weight: "bold", size: 14pt)[Siren Response — Quick Reference]
    #v(0.1em)
    #text(fill: rgb("#8ab4f8"), size: 8pt)[What to do when the Red Alert sounds — by scenario]
  ]
]

#v(0.15em)

// ============================================================
// MAIN DECISION FLOWCHART: Where are you?
// ============================================================

#align(center)[
#diagram(
  spacing: (6mm, 3.5mm),
  node-stroke: 1pt,
  edge-stroke: 1.2pt,

  // START
  node((0, 0), align(center)[
    *Red Alert sounds* \
    Where are you?
  ],
    shape: rect, fill: clr-step, stroke: 1.5pt + clr-step-stroke,
    width: 44mm, inset: 5pt, corner-radius: 5pt),

  // Branch left: Indoors
  edge((0, 0), (-1.2, 1), "->"),
  node((-1.2, 1), align(center)[*Indoors?*],
    shape: rect, fill: clr-decision, stroke: 1.5pt + clr-decision-stroke,
    width: 30mm, inset: 4pt, corner-radius: 5pt),

  // Branch centre: In a vehicle
  edge((0, 0), (0, 1), "->"),
  node((0, 1), align(center)[*In a vehicle?*],
    shape: rect, fill: clr-decision, stroke: 1.5pt + clr-decision-stroke,
    width: 30mm, inset: 4pt, corner-radius: 5pt),

  // Branch right: Outside
  edge((0, 0), (1.2, 1), "->"),
  node((1.2, 1), align(center)[*Outside on foot?*],
    shape: rect, fill: clr-decision, stroke: 1.5pt + clr-decision-stroke,
    width: 30mm, inset: 4pt, corner-radius: 5pt),

  // INDOORS → protected space
  edge((-1.2, 1), (-1.2, 2), "->"),
  node((-1.2, 2), align(center)[
    #action[GO] to protected space \
    (see SOP-8 priority order) \
    Sit against inner wall \
    #v(1pt)
    *Wait 10 minutes*
    #v(2pt)
    #line(length: 100%, stroke: 1pt + clr-terminal)
  ],
    shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
    width: 44mm, inset: 5pt, corner-radius: 5pt),

  // VEHICLE → exit
  edge((0, 1), (0, 2), "->"),
  node((0, 2), align(center)[
    #action[STOP] vehicle, hazards on \
    #action[EXIT] — no protection inside \
    Enter nearest building, or \
    lie face down, protect head \
    #v(1pt)
    *Wait 10 minutes*
    #v(2pt)
    #line(length: 100%, stroke: 1pt + clr-terminal)
  ],
    shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
    width: 44mm, inset: 5pt, corner-radius: 5pt),

  // OUTSIDE → building or ground
  edge((1.2, 1), (1.2, 2), "->"),
  node((1.2, 2), align(center)[
    #action[ENTER] nearest solid building \
    Go to stairwell or inner room \
    If no building: lie face down, \
    protect head, away from vehicles \
    #v(1pt)
    *Wait 10 minutes*
    #v(2pt)
    #line(length: 100%, stroke: 1pt + clr-terminal)
  ],
    shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
    width: 44mm, inset: 5pt, corner-radius: 5pt),
)
]

#v(0.25em)

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

#scenario("🏠", "At Home — WITH Mamad",
  (
    [Pick up baby/children, go to *Mamad*],
    [*Close* blast door, turn handle 90°],
    [Verify *steel + glass* windows sealed],
    [Sit against *inner wall*, below window line],
    [*Wait 10 minutes*],
  ),
)

#scenario("🏠", "At Home — WITHOUT Mamad",
  (
    [Can you reach *shelter* in time? If yes — grab keys, go bag, GO],
    [If no — inner *stairwell* (centre, not top/ground floor)],
    [If no stairwell — *innermost room*, max walls, min windows],
    [Sit against *inner wall*, below window line, not facing door],
    [*Wait 10 minutes*],
  ),
  notes: ("Never use kitchen/bathroom/toilet — ceramics and porcelain shatter", "Never shelter in entrance lobby"),
)

#scenario("🚗", "Driving",
  (
    [*Pull over*, hazard lights, engine off],
    [*EXIT* the vehicle — it offers no protection],
    [Enter nearest *building* if reachable],
    [If not — *lie face down* away from car, protect head],
    [*Wait 10 minutes*],
  ),
  notes: ("Do not stop on a bridge or in a tunnel",),
)

#scenario("🚌", "On a Bus",
  (
    [Driver should *stop* and open doors],
    [*Exit* the bus — it offers no protection],
    [Enter nearest *building* if reachable],
    [If not — move away from bus, *lie on ground*, protect head],
    [*Wait 10 minutes*],
  ),
)

#scenario("🚶", "Outside / On Foot",
  (
    [Enter the nearest *solid building* immediately],
    [Go to *stairwell* centre or inner room],
    [If no building — *lie face down*, protect head],
    [Stay away from *vehicles, glass, trees*],
    [*Wait 10 minutes*],
  ),
)

#colbreak()

#scenario("🏢", "In a Public Building (Mall, Office, School)",
  (
    [Go to designated *shelter* — follow signs/staff],
    [If none visible — inner *stairwell* (centre)],
    [Do *NOT* use elevators],
    [Do *NOT* go outside — building is safer],
    [*Wait 10 minutes*],
  ),
  notes: ("Stay away from glass panels, atriums, skylights",),
)

#scenario("🛗", "In an Elevator",
  (
    [Press *nearest floor* button],
    [*Exit* as soon as doors open],
    [Go to nearest *protected space*],
    [If stuck — sit on floor, *centre* of elevator, protect head],
    [*Wait 10 minutes* / wait for rescue],
  ),
  notes: ("NEVER enter an elevator during an alert",),
)

#scenario("⚠️", "In a Prefab / Caravan / Wooden Structure",
  (
    [*LEAVE* the structure immediately — no protection],
    [Enter nearest *solid building*],
    [If none reachable — *lie on ground*, protect head],
    [*Wait 10 minutes*],
  ),
)

#scenario("👨‍👧‍👦", "With Young Children",
  (
    [*Pick up* / gather children immediately],
    [Move to *protected space* (standard priority order)],
    [*Shield* children with your body against inner wall],
    [Keep them *calm* — steady voice, simple words],
    [*Wait 10 minutes*],
  ),
  notes: ("Practice the route as a drill", "Keep a comfort item in the Mamad/go bag"),
)

#scenario("♿", "Mobility Limitations",
  (
    [Move to *pre-designated* protected space],
    [Wheelchair: *lock wheels* against inner wall, below window line],
    [Use walls, railings, *mobility aids* — steady over fast],
    [If stuck — get as *low* as possible, shield head],
    [*Wait 10 minutes* / call for help],
  ),
  notes: ("Pre-clear all routes", "Arrange a buddy system with a neighbour"),
)

]
