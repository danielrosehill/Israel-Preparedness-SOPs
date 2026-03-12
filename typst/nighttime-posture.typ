// Nighttime Readiness Posture Checklist
#import "checklist.typ": checklist

#checklist(
  title: "Nighttime Readiness Posture",
  subtitle: "Red Alert SOP — For buildings WITHOUT a Mamad / Mamak",
  sop-id: "SOP-2",
  sections: (
    (
      name: "Before Bed Setup",
      items: (
        (item: [*News / situation* scan], response: "CHECKED", note: "Check current threat level — assess if it is safe to sleep at home tonight"),
        (item: [*Phone*], response: "CHECKED", actions: ("charging", "volume ON", "location ON"), note: "Red Alert app active; Do Not Disturb OFF or alerts whitelisted"),
        (item: [*Clothes* laid out by bed], response: "CHECKED", note: "Full outfit ready to throw on in seconds — shirt, pants, underwear"),
        (item: [*Closed-toe shoes* by bed], response: "CHECKED", note: "Ready to step into immediately; not across the room"),
        (item: [*Torch* within arm's reach], response: "CHECKED", note: "On nightstand — not buried in go bag"),
        (item: [*Glasses* by bed (if needed)], response: "CHECKED", note: "Same spot every night — grab without thinking"),
        (item: [*Keys* accessible and in known location], response: "CHECKED", note: "By bed or on hook by front door — not buried in a coat pocket"),
      ),
    ),
    (
      name: "Go Bag & Exit Route",
      items: (
        (item: [*Baby carrier* by front door], response: "CHECKED", note: "Wrap or structured carrier — you may need both hands free"),
        (item: [*Go bag* packed and positioned by door], response: "CHECKED", note: ""),
        (item: [*Infant supplies* in go bag], response: "CHECKED", actions: ("pacifier", "bottle/formula", "nappies", "wipes", "muslin/blanket"), note: ""),
        (item: [*Medications* in go bag], response: "CHECKED", note: ""),
        (item: [*Power bank* on charge], response: "CHECKED", note: "Near go bag or by front door"),
        (item: [Hallway and *exit route* clear], response: "VERIFIED", note: "Can navigate in the dark without tripping"),
        (item: [*Front door* can be opened quickly], response: "VERIFIED", note: "Not double-locked; key at hand if needed"),
      ),
    ),
    (
      name: "Sleep Conditions",
      items: (
        (item: [*No earplugs* — hearing must be clear], response: "CHECKED", note: "You must be able to hear the siren and phone alert"),
        (item: [*Protected space* priority order], response: "VERIFIED", note: "Mamad > Shelter > Inner stairwell > Inner room (see decision flowchart)"),
        (item: [Route to nearest *shelter* — walkable in dark], response: "VERIFIED", note: "Have you walked it at night? Know alternate if primary is locked?"),
      ),
    ),
  ),
)
