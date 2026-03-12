// Siren Response Quick Reference — All Scenarios (Adults)
// SOP-SIR-06

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
  margin: (top: 1.6cm, bottom: 2.8cm, left: 1.3cm, right: 1.3cm),
  footer: context {
    v(0.4em)
    line(length: 100%, stroke: 0.5pt + rgb("#ccc"))
    v(0.2em)
    grid(
      columns: (1fr, auto, auto),
      gutter: 0.4em,
      [
        #set text(font: "Roboto", size: 6pt, fill: rgb("#888"))
        *SOP-SIR-06* · *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
        *DISCLAIMER:* Not an official government resource. Use at your own risk. Based on HFC (Pikud HaOref) publications as of 12 Mar 2026. Official guidance: oref.org.il. Always wait 10 min.
      ],
      align(center + horizon)[
        #page-badge
      ],
      align(right + bottom)[
        #image("../assets/image.png", width: 1.6cm)
      ],
    )
  },
)
#set text(font: "Roboto", size: 7.8pt)
#set par(leading: 0.4em)

#align(center)[
  #block(
    fill: rgb("#c0392b"),
    width: 100%,
    inset: (x: 1em, y: 0.45em),
    radius: 4pt,
  )[
    #text(fill: rgb("#f5b7b1"), size: 8pt, weight: "bold")[SOP-SIR-06]
    #v(0.1em)
    #text(fill: white, weight: "bold", size: 14pt)[Siren Response — Quick Reference]
    #v(0.1em)
    #text(fill: rgb("#f5b7b1"), size: 8pt)[What to do when the Red Alert sounds — by scenario]
  ]
]

#v(0.3em)

#let scenario(name, steps, notes: ()) = {
  block(
    width: 100%,
    stroke: 0.6pt + rgb("#d4a8a8"),
    radius: 3pt,
    inset: (x: 0.5em, y: 0.3em),
  )[
    #text(weight: "bold", size: 8.5pt, fill: rgb("#922b21"))[#name]
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

#scenario("At Home — WITH Mamad",
  (
    "Pick up baby/children, go to Mamad",
    "Close blast door, turn handle 90°",
    "Verify steel + glass windows sealed",
    "Sit against inner wall, below window line",
    "Wait 10 minutes",
  ),
)

#scenario("At Home — WITHOUT Mamad",
  (
    "Can you reach shelter in time? If yes — grab keys, go bag, GO",
    "If no — inner stairwell (centre, not top/ground floor)",
    "If no stairwell — innermost room, max walls, min windows",
    "Sit against inner wall, below window line, not facing door",
    "Wait 10 minutes",
  ),
  notes: ("Never use kitchen/bathroom/toilet", "Never shelter in entrance lobby"),
)

#scenario("Driving",
  (
    "Pull over, hazard lights, engine off",
    "EXIT the vehicle — it offers no protection",
    "Enter nearest building if reachable",
    "If not — lie face down away from car, protect head",
    "Wait 10 minutes",
  ),
  notes: ("Do not stop on a bridge or in a tunnel"),
)

#scenario("On a Bus",
  (
    "Driver should stop and open doors",
    "Exit the bus — it offers no protection",
    "Enter nearest building if reachable",
    "If not — move away from bus, lie on ground, protect head",
    "Wait 10 minutes",
  ),
)

#scenario("Outside / On Foot",
  (
    "Enter the nearest solid building immediately",
    "Go to stairwell centre or inner room",
    "If no building — lie face down, protect head",
    "Stay away from vehicles, glass, trees",
    "Wait 10 minutes",
  ),
)

#colbreak()

#scenario("In a Public Building (Mall, Office, School)",
  (
    "Go to designated shelter — follow signs/staff",
    "If none visible — inner stairwell (centre)",
    "Do NOT use elevators",
    "Do NOT go outside — building is safer",
    "Wait 10 minutes",
  ),
  notes: ("Stay away from glass panels, atriums, skylights"),
)

#scenario("In an Elevator",
  (
    "Press nearest floor button",
    "Exit as soon as doors open",
    "Go to nearest protected space",
    "If stuck — sit on floor, centre of elevator, protect head",
    "Wait 10 minutes / wait for rescue",
  ),
  notes: ("NEVER enter an elevator during an alert"),
)

#scenario("In a Prefab / Caravan / Wooden Structure",
  (
    "LEAVE the structure immediately — no protection",
    "Enter nearest solid building",
    "If none reachable — lie on ground, protect head",
    "Wait 10 minutes",
  ),
)

#scenario("With Young Children",
  (
    "Pick up / gather children immediately",
    "Move to protected space (standard priority order)",
    "Shield children with your body against inner wall",
    "Keep them calm — steady voice, simple words",
    "Wait 10 minutes",
  ),
  notes: ("Practice the route as a drill", "Keep a comfort item in the Mamad/go bag"),
)

#scenario("Mobility Limitations",
  (
    "Move to pre-designated protected space",
    "Wheelchair: lock wheels against inner wall, below window line",
    "Use walls, railings, mobility aids — steady over fast",
    "If stuck — get as low as possible, shield head",
    "Wait 10 minutes / call for help",
  ),
  notes: ("Pre-clear all routes", "Arrange a buddy system with a neighbour"),
)

]
