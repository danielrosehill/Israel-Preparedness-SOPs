// Red Alert SOP Checklist Template
// Aviation-style checklist with dot leaders: ITEM .......... ACTION
// Roboto for maximum readability

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

#let checklist(
  title: "",
  subtitle: "",
  sop-id: "",
  sections: (),
) = {
  set page(
    paper: "a4",
    margin: (top: 2.2cm, bottom: 2.8cm, left: 1.5cm, right: 1.5cm),
    header: context {
      if counter(page).get().first() > 1 [
        #set text(font: "Roboto", size: 7.5pt, fill: rgb("#999"))
        #grid(
          columns: (auto, 1fr, auto),
          gutter: 0.4em,
          align(left)[#text(weight: "bold", fill: rgb("#666"))[#sop-id] #h(0.4em) #title],
          [],
          page-badge,
        )
        #v(0.1em)
        #line(length: 100%, stroke: 0.4pt + rgb("#ddd"))
      ]
    },
    footer: context {
      v(0.4em)
      line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))
      v(0.2em)
      grid(
        columns: (1fr, auto, auto),
        gutter: 0.5em,
        [
          #set text(font: "Roboto", size: 6.5pt, fill: rgb("#888888"))
          #if sop-id != "" [*#sop-id* · ]
          *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
          *DISCLAIMER:* Not an official government resource. Use at your own risk. Based on HFC (Pikud HaOref) publications as of 12 Mar 2026. Official guidance: oref.org.il.
        ],
        align(center + horizon)[
          #page-badge
        ],
        align(right + bottom)[
          #image("../assets/image.png", width: 1.8cm)
        ],
      )
    },
  )
  set text(font: "Roboto", size: 9.5pt)
  set par(leading: 0.5em)

  // Title block with SOP ID
  align(center)[
    #block(
      fill: rgb("#c0392b"),
      width: 100%,
      inset: (x: 1em, y: 0.6em),
      radius: 4pt,
    )[
      #if sop-id != "" [
        #text(fill: rgb("#f5b7b1"), size: 8pt, weight: "bold")[#sop-id]
        #v(0.1em)
      ]
      #text(fill: white, weight: "bold", size: 16pt)[#title]
      #v(0.15em)
      #text(fill: rgb("#f5b7b1"), size: 9pt)[#subtitle]
    ]
  ]

  v(0.5em)

  // Sections
  for (si, section) in sections.enumerate() {
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

    // Checklist items — aviation style with dot leaders
    for item in section.items {
      if item.detail != "" {
        // Aviation-style: ITEM ............ RESPONSE
        grid(
          columns: (1.4em, 1fr),
          gutter: 0.3em,
          align(center + horizon)[
            #box(
              width: 0.9em,
              height: 0.9em,
              stroke: 1pt + rgb("#922b21"),
              radius: 2pt,
            )
          ],
          [
            #grid(
              columns: (auto, 1fr, auto),
              gutter: 0pt,
              text(weight: "bold", size: 9.5pt)[#item.item],
              align(bottom)[
                #box(width: 1fr)[
                  #repeat[#text(fill: rgb("#cccccc"), size: 7pt)[ .]]
                ]
              ],
              text(size: 8pt, fill: rgb("#555555"))[#item.detail],
            )
          ],
        )
      } else {
        // No detail — just the item
        grid(
          columns: (1.4em, 1fr),
          gutter: 0.3em,
          align(center + horizon)[
            #box(
              width: 0.9em,
              height: 0.9em,
              stroke: 1pt + rgb("#922b21"),
              radius: 2pt,
            )
          ],
          text(weight: "bold", size: 9.5pt)[#item.item],
        )
      }
      v(0.2em)
    }

    v(0.3em)
  }
}
