// Red Alert SOP Checklist Template
// True aviation checklist format: ITEM .............. RESPONSE
// Notes in italics beneath items when needed

#let il-blue = rgb("#003893")
#let il-blue-light = rgb("#e8eef7")

#let page-badge = context {
  box(
    fill: rgb("#f5d000"),
    inset: (x: 0.5em, y: 0.2em),
    radius: 2pt,
  )[
    #text(font: "Roboto", size: 9pt, weight: "bold", fill: black)[
      (#counter(page).display()/#counter(page).final().first())
    ]
  ]
}

#let checklist(
  title: "",
  subtitle: "",
  sop-id: "",
  version: "1.0",
  sections: (),
) = {
  set page(
    paper: "a4",
    margin: (top: 1.8cm, bottom: 2.0cm, left: 1.5cm, right: 1.5cm),
    header: context {
      set text(font: "Roboto", size: 7.5pt, fill: rgb("#999"))
      grid(
        columns: (auto, 1fr, auto),
        gutter: 0.4em,
        align(left)[#text(weight: "bold", fill: rgb("#666"))[#sop-id] #h(0.4em) #title],
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
          #set text(font: "Roboto", size: 6pt, fill: rgb("#888888"))
          #if sop-id != "" [*#sop-id* · ]
          *v#version* · *Rev:* 12 Mar 2026 · *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
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
  set text(font: "Roboto", size: 9pt)
  set par(leading: 0.4em)

  // Title block with SOP ID
  align(center)[
    #block(
      fill: il-blue,
      width: 100%,
      inset: (x: 1em, y: 0.45em),
      radius: 4pt,
    )[
      #if sop-id != "" [
        #text(fill: rgb("#8ab4f8"), size: 8pt, weight: "bold")[#sop-id]
        #v(0.1em)
      ]
      #text(fill: white, weight: "bold", size: 16pt)[#title]
      #v(0.15em)
      #text(fill: rgb("#8ab4f8"), size: 9pt)[#subtitle]
    ]
  ]

  v(0.4em)

  // Sections
  for (si, section) in sections.enumerate() {
    // Section header — Israeli flag blue
    block(
      fill: il-blue-light,
      width: 100%,
      inset: (x: 0.8em, y: 0.25em),
      radius: 3pt,
    )[
      #text(weight: "bold", size: 10.5pt, fill: il-blue)[#section.name]
    ]

    v(0.15em)

    // Checklist items — aviation format
    for item in section.items {
      // ITEM .............. RESPONSE
      grid(
        columns: (auto, 1fr, auto),
        gutter: 0pt,
        text(size: 9pt)[#item.item],
        box(width: 1fr)[
          #repeat[#text(fill: rgb("#cccccc"), size: 7pt)[ .]]
        ],
        text(weight: "bold", size: 9pt)[#item.response],
      )
      // Actions beneath with arrow and pipe separators
      if "actions" in item and item.actions.len() > 0 {
        pad(left: 0.5em)[
          #text(size: 8pt, fill: rgb("#444"))[→ #item.actions.join[ #text(fill: rgb("#999"))[ | ]]]
        ]
      }
      // Note beneath in italics if present
      if "note" in item and item.note != "" {
        pad(left: 0.5em)[
          #text(size: 8pt, fill: rgb("#666"), style: "italic")[#item.note]
        ]
      }
      v(0.1em)
    }

    v(0.15em)
  }
}
