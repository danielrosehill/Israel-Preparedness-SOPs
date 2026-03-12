// Emergency Contacts & Communication
// SOP-12

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

#set page(
  paper: "a4",
  margin: (top: 1.6cm, bottom: 2.2cm, left: 1.5cm, right: 1.5cm),
  header: context {
    set text(font: "Roboto", size: 7.5pt, fill: rgb("#999"))
    grid(
      columns: (auto, 1fr, auto),
      gutter: 0.4em,
      align(left)[#text(weight: "bold", fill: rgb("#666"))[SOP-12] #h(0.4em) Emergency Contacts & Communication],
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
        #set text(font: "Roboto", size: 6pt, fill: rgb("#888"))
        *SOP-12* · *v1.0* · *Rev:* 12 Mar 2026 · *By:* Daniel Rosehill + Claude Opus · Share freely with attribution \
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
#set text(font: "Roboto", size: 8.5pt)
#set par(leading: 0.4em)

// Title
#align(center)[
  #block(
    fill: il-blue,
    width: 100%,
    inset: (x: 1em, y: 0.5em),
    radius: 4pt,
  )[
    #text(fill: rgb("#8ab4f8"), size: 8pt, weight: "bold")[SOP-12]
    #v(0.1em)
    #text(fill: white, weight: "bold", size: 15pt)[Emergency Contacts & Communication]
    #v(0.1em)
    #text(fill: rgb("#8ab4f8"), size: 8.5pt)[Essential numbers, alert channels, and information discipline]
  ]
]

#v(0.3em)

// Emergency Numbers Section
#block(
  fill: il-blue-light,
  width: 100%,
  inset: (x: 0.8em, y: 0.35em),
  radius: 3pt,
)[
  #text(weight: "bold", size: 10.5pt, fill: il-blue)[📞 Emergency Call Centres]
]

#v(0.2em)

#let phone-entry(number, name, desc, sms: none) = {
  grid(
    columns: (3em, auto, 1fr),
    gutter: 0.3em,
    align(right)[
      #box(
        fill: rgb("#f5d000"),
        inset: (x: 0.3em, y: 0.1em),
        radius: 2pt,
      )[#text(weight: "bold", size: 9pt)[#number]]
    ],
    text(weight: "bold", size: 8.5pt)[#name],
    [
      #text(size: 7.5pt, fill: rgb("#666"))[#desc]
      #if sms != none [
        #h(0.3em) #text(size: 7pt, fill: rgb("#888"))[SMS: #sms]
      ]
    ],
  )
  v(0.1em)
}

#phone-entry("100", "Israel Police", "Unexploded ordnance, security incidents, terror events", sms: "052-2020100")
#phone-entry("101", "Magen David Adom", "Injuries, first aid, medical emergencies", sms: "052-7000101")
#phone-entry("102", "Fire & Rescue", "Fires, trapped persons, structural collapse", sms: "050-5960735")
#phone-entry("103", "Electric Corp.", "Power outages, electrical hazards", sms: "055-7000103")
#phone-entry("104", "Home Front Command", "Guidelines, alerts, emergency information", sms: "052-9104104")
#phone-entry("106–109", "Municipality", "Local information, municipal assistance")
#phone-entry("110", "Police Info", "Road blocks, police information hotline")

#v(0.2em)

// Support & Welfare
#block(
  fill: il-blue-light,
  width: 100%,
  inset: (x: 0.8em, y: 0.35em),
  radius: 3pt,
)[
  #text(weight: "bold", size: 10.5pt, fill: il-blue)[🤝 Help & Support Centres]
]

#v(0.2em)

#phone-entry("118", "Welfare Ministry", "Information and assistance centre")
#phone-entry("1201", "ERAN", "Emotional first aid hotline")
#phone-entry("*8840", "Senior Citizens", "Ministry of Social Equality call centre")
#phone-entry("*9696", "National Insurance", "Counselling for elderly and families")

#grid(
  columns: (1fr, 1fr),
  gutter: 0.6em,
  [
    #text(size: 7.5pt, weight: "bold")[NATAL (trauma):] #text(size: 7.5pt)[1-800-363-363] \
    #text(size: 7.5pt, weight: "bold")[Youth Listens:] #text(size: 7.5pt)[03-6919765]
  ],
  [
    #text(size: 7.5pt, weight: "bold")[Immigration (EN):] #text(size: 7.5pt)[04-7702651] \
    #text(size: 7.5pt, weight: "bold")[Immigration (RU):] #text(size: 7.5pt)[04-7702648]
  ],
)

#v(0.3em)

// Alert Channels
#block(
  fill: il-blue-light,
  width: 100%,
  inset: (x: 0.8em, y: 0.35em),
  radius: 3pt,
)[
  #text(weight: "bold", size: 10.5pt, fill: il-blue)[📱 How to Receive Alerts]
]

#v(0.2em)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.6em,
  [
    #text(weight: "bold", size: 8pt)[Personal (Mobile)]
    #v(0.08em)
    #text(size: 7.5pt)[
      • *Home Front Command app* — location-based alerts + up to 10 custom areas \
      • App recognises your location and sends alert automatically \
      • *National Emergency Portal* on computer (must stay open)
    ]
  ],
  [
    #text(weight: "bold", size: 8pt)[Public & Media]
    #v(0.08em)
    #text(size: 7.5pt)[
      • *Sirens* — rising/falling alarm throughout the country \
      • *TV:* Kan 11, Keshet 12, Reshet 13, Ch. 14, Ch. 9, Ch. 140 \
      • *Radio:* National and regional stations \
      • *Websites:* Ynet, Mako, Reshet, Israel Hayom, Walla
    ]
  ],
)

#v(0.3em)

// Information Discipline
#block(
  fill: rgb("#fdf2f2"),
  width: 100%,
  inset: (x: 0.7em, y: 0.3em),
  radius: 3pt,
  stroke: 0.75pt + rgb("#e6b0aa"),
)[
  #text(weight: "bold", size: 9pt, fill: rgb("#922b21"))[⛔ Information Discipline — Do NOT Spread Unverified Information]
  #v(0.1em)
  #text(size: 7.5pt)[
    *Before sharing anything online, ask:* \
    1. Was it from a *reliable, official source*? (IDF, Police, Fire, HFC, municipality) \
    2. Could it *hurt someone*? \
    3. Could it actually be *useful*? \
    #v(0.05em)
    Even *positive* unverified rumours are harmful — they create false hope and undermine trust. \
    Rumours increase panic, impair coping, and can cause people to ignore real warnings.
  ]
]

#v(0.3em)

// Personal Phone List
#block(
  fill: rgb("#f0f7f0"),
  width: 100%,
  inset: (x: 0.7em, y: 0.3em),
  radius: 3pt,
  stroke: 0.75pt + rgb("#a8d5a8"),
)[
  #text(weight: "bold", size: 9pt, fill: rgb("#1a5c1a"))[📋 Your Personal Emergency Phone List]
  #v(0.1em)
  #text(size: 7.5pt)[
    *Do NOT rely on your phone's digital contacts.* Write a physical list and keep copies: \
    • In a *visible location* at home (on fridge, by front door) \
    • With your *emergency supplies* bag \
    • One copy per *family member* \
    Include: family, neighbours (+ their skills: medic, plumber, electrician), doctor, insurance, building committee
  ]
]
