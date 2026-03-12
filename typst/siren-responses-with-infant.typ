// Siren Response Quick Reference — With Infant (0–18 months)
// One-page A4 card

#set page(
  paper: "a4",
  margin: (top: 1.6cm, bottom: 1.2cm, left: 1.3cm, right: 1.3cm),
)
#set text(font: "Liberation Sans", size: 7.8pt)
#set par(leading: 0.4em)

#align(center)[
  #block(
    fill: rgb("#c0392b"),
    width: 100%,
    inset: (x: 1em, y: 0.45em),
    radius: 4pt,
  )[
    #text(fill: white, weight: "bold", size: 14pt)[Siren Response — With Infant]
    #v(0.1em)
    #text(fill: rgb("#f5b7b1"), size: 8pt)[Baby 0–18 months · What to do when the Red Alert sounds]
  ]
]

#v(0.2em)

#block(
  fill: rgb("#fef9e7"),
  width: 100%,
  inset: (x: 0.6em, y: 0.3em),
  radius: 3pt,
  stroke: 0.5pt + rgb("#f0d080"),
)[
  #text(weight: "bold", size: 8pt, fill: rgb("#7d6608"))[Rule #1 in every scenario: PICK UP THE BABY FIRST.]
  #text(size: 7.5pt, fill: rgb("#7d6608"))[ Hold against your chest. Everything else is secondary. Leave the stroller behind.]
]

#v(0.25em)

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
    "Scoop up baby, go to Mamad",
    "Close blast door (partner seals if present)",
    "Sit against inner wall, hold baby close",
    "Comfort: pacifier, feed, skin contact",
    "Wait 10 minutes",
  ),
  notes: ("Keep baby supplies stashed in Mamad: nappies, wipes, pacifier, bottle"),
)

#scenario("At Home — WITHOUT Mamad",
  (
    "Pick up baby — do not put down until in shelter",
    "Shelter reachable? Go. Hold baby against chest, one arm free for doors",
    "No shelter? Stairwell centre (not top/ground floor), sit and shield baby",
    "No stairwell? Innermost room, floor, inner wall, curl over baby",
    "Wait 10 minutes",
  ),
  notes: ("Pre-position a baby carrier by the door for hands-free evacuation"),
)

#scenario("Night — Baby Sleeping, No Mamad",
  (
    "Go straight to baby's room, pick them up",
    "Do NOT get dressed first — baby then shoes/keys",
    "If both parents: one takes baby, one takes go bag + torch",
    "Shelter or stairwell or inner room — hold baby, sit down",
    "Wait 10 minutes — baby may cry, that's OK",
  ),
  notes: ("Pre-pack a blanket to grab with baby", "Room-share during escalations = faster response"),
)

#scenario("Outside / Walking",
  (
    "Take baby OUT of stroller — hold against chest",
    "LEAVE the stroller behind",
    "Enter nearest solid building — stairwell or inner room",
    "If no building: lie face down, baby under you, shield with body",
    "Wait 10 minutes",
  ),
  notes: ("Baby carrier >> stroller for siren readiness outdoors", "Know shelters on regular routes"),
)

#colbreak()

#scenario("Driving — Baby in Car Seat",
  (
    "Pull over, hazards on, engine off",
    "Unbuckle harness and lift baby out (faster than detaching seat)",
    "Exit car — hold baby against chest",
    "Enter building if reachable, or lie on ground shielding baby",
    "Wait 10 minutes",
  ),
  notes: ("Practise unbuckling the harness quickly", "Two adults: one grabs baby, one grabs nappy bag"),
)

#scenario("On a Bus",
  (
    "Hold baby securely — take OUT of stroller",
    "Exit bus when doors open — leave stroller on bus",
    "Enter nearest building",
    "If none: move away from bus, lie on ground shielding baby",
    "Wait 10 minutes",
  ),
  notes: ("Ask other passengers for help if needed"),
)

#scenario("In a Public Building (Mall, Clinic, Office)",
  (
    "Pick up baby — OUT of stroller",
    "Follow signs/staff to designated shelter",
    "No shelter? Stairwell centre. No elevator.",
    "Sit against inner wall, shield baby, away from glass",
    "Wait 10 minutes",
  ),
  notes: ("At Tipat Halav/clinic: ask staff for shelter immediately", "You can carry while breastfeeding"),
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

#v(1fr)
#line(length: 100%, stroke: 0.5pt + rgb("#ccc"))
#v(0.1em)
#grid(
  columns: (1fr, 1.8cm),
  gutter: 0.3em,
  [
    #text(size: 6pt, fill: rgb("#888"))[
      *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
      *DISCLAIMER:* Not an official government resource. Use at your own risk. Based on HFC (Pikud HaOref) publications as of 12 March 2026. Official guidance: oref.org.il. Always wait 10 min.
    ]
  ],
  align(right + bottom)[
    #image("../assets/image.png", width: 1.6cm)
  ],
)
