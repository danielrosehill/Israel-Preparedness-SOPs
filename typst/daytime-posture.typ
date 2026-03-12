// Daytime Readiness Posture Checklist
#import "checklist.typ": checklist

#checklist(
  title: "Daytime Readiness Posture",
  subtitle: "Red Alert SOP — For buildings WITHOUT a Mamad / Mamak",
  sop-id: "SOP-1",
  sections: (
    (
      name: "On Your Person",
      items: (
        (item: [*Phone*], response: "CHECKED", actions: ("volume ON", "location services ON", "Red Alert app installed"), note: "Configured for your area, notifications enabled"),
        (item: [Red Alert *browser extension* active], response: "CHECKED", note: "Set to correct alert area; computer not on mute; tested recently"),
        (item: [*Keys* on person], response: "CHECKED", note: "Front door key accessible — do not leave locked inside"),
        (item: [*Wallet* and *ID* (Teudat Zehut)], response: "CHECKED", note: ""),
        (item: [*Closed-toe shoes* suitable for running], response: "CHECKED", note: "Not sandals, slippers, or barefoot — you may need to sprint"),
        (item: [*Glasses* / contacts (if needed)], response: "CHECKED", note: ""),
      ),
    ),
    (
      name: "Go Bag & Exit Route",
      items: (
        (item: [*Baby carrier* by front door], response: "CHECKED", note: "Wrap or structured carrier — hands-free evacuation is far faster than a stroller"),
        (item: [*Go bag* packed and positioned by door], response: "CHECKED", note: ""),
        (item: [Daily *bag check* completed], response: "CHECKED", actions: ("medications", "charged torch", "water bottle", "phone charger", "copy of ID"), note: ""),
        (item: [Hallway and *exit route* clear], response: "VERIFIED", note: "No furniture, shoes, or items blocking path to front door"),
        (item: [*Front door* can be opened quickly], response: "VERIFIED", note: "Not double-locked or chain-latched"),
      ),
    ),
    (
      name: "Situational Awareness",
      items: (
        (item: [Nearest *3 shelters* — locations and routes], response: "VERIFIED", note: "Walked the route recently; know backup if primary is locked"),
        (item: [*Time to shelter* for your area], response: "VERIFIED", note: "Check HFC Alerts tab for your locality"),
        (item: [*Protected space* priority order], response: "VERIFIED", note: "Mamad > Shelter > Inner stairwell > Inner room (see decision flowchart)"),
        (item: [*Children / dependents* — current location], response: "CHECKED", note: "Ready to move them or confirm they are in a protected space"),
        (item: [*News / situation* scan], response: "CHECKED", note: "Every ~3 hours; adjust posture if escalation detected"),
      ),
    ),
  ),
)
