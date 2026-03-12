// Red Alert SOP Checklist Template
// Renders a single-page A4 checklist from parameters

#let checklist(
  title: "",
  subtitle: "",
  sections: (),
) = {
  set page(
    paper: "a4",
    margin: (top: 1.8cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm),
  )
  set text(font: "Liberation Sans", size: 9.5pt)
  set par(leading: 0.5em)

  // Title block
  align(center)[
    #block(
      fill: rgb("#c0392b"),
      width: 100%,
      inset: (x: 1em, y: 0.6em),
      radius: 4pt,
    )[
      #text(fill: white, weight: "bold", size: 16pt)[#title]
      #v(0.15em)
      #text(fill: rgb("#f5b7b1"), size: 9pt)[#subtitle]
    ]
  ]

  v(0.5em)

  // Sections
  for section in sections {
    // Section header
    block(
      fill: rgb("#f9e4e4"),
      width: 100%,
      inset: (x: 0.8em, y: 0.35em),
      radius: 3pt,
    )[
      #text(weight: "bold", size: 10.5pt, fill: rgb("#922b21"))[#section.name]
    ]

    v(0.25em)

    // Checklist items
    for item in section.items {
      grid(
        columns: (1.4em, 1fr),
        gutter: 0.3em,
        // Checkbox
        align(center + horizon)[
          #box(
            width: 0.9em,
            height: 0.9em,
            stroke: 1pt + rgb("#922b21"),
            radius: 2pt,
          )
        ],
        // Content
        [
          #text(weight: "bold", size: 9.5pt)[#item.item]
          #if item.detail != "" [
            #linebreak()
            #text(size: 8pt, fill: rgb("#555555"))[#item.detail]
          ]
        ],
      )
      v(0.2em)
    }

    v(0.3em)
  }

  // Footer
  v(1fr)
  line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))
  v(0.2em)

  grid(
    columns: (1fr, 2.2cm),
    gutter: 0.4em,
    [
      #text(size: 7pt, fill: rgb("#888888"))[
        *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
        *DISCLAIMER:* This is NOT an official government resource. Use at your own risk. Guidance based on Home Front Command (Pikud HaOref) publications as of 12 March 2026. For official guidance visit oref.org.il.
      ]
    ],
    align(right + bottom)[
      #image("../assets/image.png", width: 2cm)
    ],
  )
}
