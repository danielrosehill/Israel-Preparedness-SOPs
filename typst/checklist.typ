// Red Alert SOP Checklist Template
// Icon-based checklist with indented sub-items
// Uses Atkinson Hyperlegible for maximum legibility

#let il-blue = rgb("#003893")
#let il-blue-light = rgb("#e8eef7")
#let il-yellow = rgb("#f5d000")
#let main-font = "Atkinson Hyperlegible"

#let page-badge = context {
  box(
    fill: il-yellow,
    inset: (x: 0.5em, y: 0.2em),
    radius: 2pt,
  )[
    #text(font: main-font, size: 9pt, weight: "bold", fill: black)[
      (#counter(page).display()/#counter(page).final().first())
    ]
  ]
}

// Icon helpers
#let icon-check = text(fill: il-blue, size: 10pt)[☐]
#let icon-phone = text(size: 10pt)[📱]
#let icon-key = text(size: 10pt)[🔑]
#let icon-bag = text(size: 10pt)[🎒]
#let icon-shoe = text(size: 10pt)[👟]
#let icon-eye = text(size: 10pt)[👁]
#let icon-radio = text(size: 10pt)[📻]
#let icon-wallet = text(size: 10pt)[💳]
#let icon-glasses = text(size: 10pt)[👓]
#let icon-clothes = text(size: 10pt)[👕]
#let icon-torch = text(size: 10pt)[🔦]
#let icon-baby = text(size: 10pt)[👶]
#let icon-ear = text(size: 10pt)[👂]
#let icon-shield = text(size: 10pt)[🛡]
#let icon-door = text(size: 10pt)[🚪]
#let icon-news = text(size: 10pt)[📰]
#let icon-route = text(size: 10pt)[🗺]
#let icon-moon = text(size: 10pt)[🌙]
#let icon-app = text(size: 10pt)[📲]
#let icon-bell = text(size: 10pt)[🔔]
#let icon-battery = text(size: 10pt)[🔋]
#let icon-gear = text(size: 10pt)[⚙]
#let icon-signal = text(size: 10pt)[📡]
#let icon-pet = text(size: 10pt)[🐾]
#let icon-med = text(size: 10pt)[💊]
#let icon-power = text(size: 10pt)[🔌]
#let icon-water = text(size: 10pt)[💧]

#let checklist(
  title: "",
  subtitle: "",
  sop-id: "",
  version: "1.0",
  sections: (),
) = {
  set page(
    paper: "a4",
    margin: (top: 2.8cm, bottom: 2.0cm, left: 1.5cm, right: 1.5cm),
    header: context {
      set text(font: main-font, size: 7.5pt, fill: rgb("#999"))
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
          #set text(font: main-font, size: 6pt, fill: rgb("#888888"))
          #if sop-id != "" [*#sop-id* · ]
          *v#version* · *Rev:* 19 Mar 2026 · *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
          *DISCLAIMER:* Not an official government resource. Use at your own risk. Based on HFC (Pikud HaOref) publications as of Mar 2026. Official guidance: oref.org.il.
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
  set text(font: main-font, size: 9pt)
  set par(leading: 0.4em)

  // Reflective strip area — affix reflective tape here
  block(
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

  v(0.3em)

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

  // Helper: render a sub-item (indented checkbox line)
  let render-subitem(label) = {
    pad(left: 1.8em)[
      #grid(
        columns: (auto, 1fr),
        gutter: 0.4em,
        text(fill: rgb("#666"), size: 8.5pt)[☐],
        text(size: 8.5pt)[#label],
      )
    ]
  }

  // Helper: render a single checklist item
  let render-item(item) = {
    // Main item line with icon
    let icon = if "icon" in item { item.icon } else { icon-check }
    grid(
      columns: (auto, 1fr),
      gutter: 0.5em,
      icon,
      text(size: 9.5pt)[#item.item],
    )
    // Render sub-items as indented checklist
    if "subitems" in item and item.subitems.len() > 0 {
      for sub in item.subitems {
        render-subitem(sub)
      }
    }
    // Legacy: render actions as pipe-separated (kept for backward compat)
    if "actions" in item and item.actions.len() > 0 {
      pad(left: 1.8em)[
        #text(size: 8pt, fill: rgb("#444"))[→ #item.actions.join[ #text(fill: rgb("#999"))[ | ]]]
      ]
    }
    if "note" in item and item.note != "" {
      pad(left: 1.8em)[
        #text(size: 8pt, fill: rgb("#666"), style: "italic")[#item.note]
      ]
    }
    v(0.15em)
  }

  // Sections
  for (si, section) in sections.enumerate() {
    if section.name == "" {
      // No header bar — just render items (e.g. instructions)
      for item in section.items {
        render-item(item)
      }
    } else {
      // Keep section header + first item together to prevent orphaned headers
      block(breakable: false)[
        #block(
          fill: il-blue-light,
          width: 100%,
          inset: (x: 0.8em, y: 0.25em),
          radius: 3pt,
        )[
          #text(weight: "bold", size: 10.5pt, fill: il-blue)[#section.name]
        ]
        #v(0.15em)
        #if section.items.len() > 0 {
          render-item(section.items.first())
        }
      ]

      // Remaining items
      for item in section.items.slice(1) {
        render-item(item)
      }
    }

    v(0.15em)
  }
}
