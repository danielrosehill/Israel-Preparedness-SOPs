// Daytime Readiness Posture — General
#import "checklist.typ": *

#checklist(
  title: "Daytime Readiness Posture",
  subtitle: "Red Alert SOP — For buildings WITHOUT a Mamad / Mamak",
  sop-id: "SOP-1",
  sections: (
    (
      name: "",
      items: (
        (
          item: [_Best done as a pair: one person reads aloud, the other verifies. Alternate periodically._],
          icon: text(size: 10pt)[👥],
        ),
      ),
    ),
    (
      name: "Personal Readiness",
      items: (
        (
          item: [Fully dressed with *closed-toe shoes* on],
          icon: icon-shoe,
          note: "Not sandals, slippers, or barefoot — you may need to sprint",
        ),
        (
          item: [*Personal needs* tended to — showered, fed, rested when possible],
          icon: icon-check,
          note: "Take care of these when you can — you want to be ready to move at any moment",
        ),
        (
          item: [*Glasses* / contacts (if needed)],
          icon: icon-glasses,
        ),
      ),
    ),
    (
      name: "On Your Person",
      items: (
        (
          item: [*Phone* — located and charging or charged],
          icon: icon-phone,
          subitems: (
            [Turned on and charged _(or charging if low)_],
            [Location services turned on],
            [Verify Home Front Command app has location access],
            [Red Alert app installed, configured for your area, notifications enabled],
          ),
        ),
        (
          item: [Red Alert *browser extension* active],
          icon: icon-app,
          note: "Set to correct alert area; computer not on mute; tested recently",
        ),
        (
          item: [*Keys*],
          icon: icon-key,
          subitems: (
            [Front door key in door _(not locked inside)_],
            [Second pair on person],
          ),
        ),
        (
          item: [*Wallet* on person],
          icon: icon-wallet,
          note: "No need for Teudat Zehut for shelter entry",
        ),
      ),
    ),
    (
      name: "Go Bag & Exit",
      items: (
        (
          item: [*Go bag* packed and positioned by front door],
          icon: icon-bag,
          subitems: (
            [Headlight / torch],
            [Medications],
            [Charged power bank],
            [Phone charger],
            [AM/FM radio],
            [Umbrella _(winter / rainy season)_],
          ),
          note: "Verify contents — don't just check the bag is there",
        ),
        (
          item: [Hallway and *exit route* clear],
          icon: icon-door,
          note: "No furniture, shoes, or items blocking path to front door",
        ),
        (
          item: [*Front door* can be opened quickly],
          icon: icon-door,
          note: "Not double-locked or chain-latched",
        ),
      ),
    ),
    (
      name: "Situational Awareness",
      items: (
        (
          item: [Verify nearest *3 shelters* — locations and routes known],
          icon: icon-route,
          note: "Walk the route periodically; know backup if primary is locked",
        ),
        (
          item: [*News / situation* scan],
          icon: icon-news,
          subitems: (
            [Every ~3 hours _(wartime routine)_],
            [Every ~1 hour _(heightened alert)_],
          ),
          note: "Adjust posture if escalation detected",
        ),
      ),
    ),
  ),
)
