// Nighttime Readiness Posture Checklist
#import "checklist.typ": *

#checklist(
  title: "Nighttime Readiness Posture",
  subtitle: "Red Alert SOP — For buildings WITHOUT a Mamad / Mamak",
  sop-id: "SOP-2",
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
      name: "Before Bed Setup",
      items: (
        (
          item: [*Personal needs* tended to — showered, teeth brushed, fed],
          icon: icon-check,
          note: "Take care of these before bed — you want to be ready to move the moment you wake",
        ),
        (
          item: [*News / situation* scan],
          icon: icon-news,
          note: "Check current threat level — assess if it is safe to sleep at home tonight",
        ),
        (
          item: [*Phone*],
          icon: icon-phone,
          subitems: (
            [Charging or charged],
            [*Not* off and *not* in airplane mode],
            [DND / silent / regular — all OK _(alert apps override DND)_],
            [Location services on],
            [Verify Red Alert app has notification + override permissions],
          ),
        ),
        (
          item: [*Clothes* laid out by bed],
          icon: icon-clothes,
          note: "Full outfit ready to throw on in seconds — shirt, pants, underwear",
        ),
        (
          item: [*Closed-toe shoes* by bed],
          icon: icon-shoe,
          note: "Ready to step into immediately; not across the room",
        ),
        (
          item: [*Torch* within arm's reach],
          icon: icon-torch,
          note: "On nightstand — not buried in go bag",
        ),
        (
          item: [*Glasses* by bed (if needed)],
          icon: icon-glasses,
          note: "Same spot every night — grab without thinking",
        ),
        (
          item: [*Keys* accessible and in known location],
          icon: icon-key,
          note: "By bed or on hook by front door — not buried in a coat pocket",
        ),
      ),
    ),
    (
      name: "Go Bag & Exit Route",
      items: (
        (
          item: [*Go bag* packed and positioned by door],
          icon: icon-bag,
          subitems: (
            [Headlight / torch],
            [Medications],
            [Charged power bank],
            [Phone charger],
            [AM/FM radio],
            [Umbrella _(winter / rainy season)_],
          ),
        ),
        (
          item: [*Power bank* on charge],
          icon: icon-power,
          note: "Near go bag or by front door",
        ),
        (
          item: [Hallway and *exit route* clear],
          icon: icon-door,
          note: "Can navigate in the dark without tripping",
        ),
        (
          item: [*Front door* can be opened quickly],
          icon: icon-door,
          note: "Not double-locked; key at hand if needed",
        ),
      ),
    ),
    (
      name: "Sleep Conditions",
      items: (
        (
          item: [*No earplugs* — hearing must be clear],
          icon: icon-ear,
          note: "You must be able to hear the siren and phone alert",
        ),
        (
          item: [Route to nearest *shelter* — walkable in dark],
          icon: icon-route,
          note: "Have you walked it at night? Know alternate if primary is locked?",
        ),
      ),
    ),
  ),
)
