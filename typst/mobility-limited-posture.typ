// Readiness Posture — Elderly / Mobility Limited
#import "checklist.typ": checklist

#checklist(
  title: "Readiness — Elderly / Mobility Limited",
  subtitle: "Red Alert SOP — For buildings WITHOUT a Mamad / Mamak",
  sop-id: "SOP-5",
  sections: (
    (
      name: "Protected Space Setup",
      items: (
        (item: [*Protected space* pre-selected and practised], response: "VERIFIED", note: "Identified from every room; practised reaching it"),
        (item: [*Bed or sofa* repositioned against inner wall], response: "CHECKED", note: "Below window line, not facing door — for those who cannot move quickly"),
        (item: [No *shelves or heavy objects* above bed/sofa], response: "CHECKED", note: ""),
        (item: [Routes to protected space *cleared*], response: "VERIFIED", note: "Rugs, plant pots, chairs, cables — anything that could trip or block a wheelchair"),
        (item: [*Grab rails* or support along the route], response: "CHECKED", note: "Wall-mounted rails, furniture positioned for support, walker accessible"),
      ),
    ),
    (
      name: "Equipment & Supplies",
      items: (
        (item: [*Wheelchair / walker / mobility aid* within reach], response: "CHECKED", note: "Charged if electric; not folded away in a closet"),
        (item: [*Phone* within arm's reach at all times], response: "CHECKED", actions: ("charged", "volume ON", "Red Alert app active"), note: ""),
        (item: [*Medications* in protected space or go bag], response: "CHECKED", note: "Especially time-critical: insulin, inhalers, heart medication"),
        (item: [*Chair* positioned in stairwell (if applicable)], response: "CHECKED", note: "For sitting during the 10-minute wait"),
        (item: [*Torch* within reach], response: "CHECKED", note: "Especially important if mobility is limited in the dark"),
      ),
    ),
    (
      name: "Support Network",
      items: (
        (item: [*Buddy system* arranged with a neighbour], response: "CHECKED", note: "Someone who will check on you or help you move when the siren sounds"),
        (item: [*Neighbour* has a key or knows how to reach you], response: "CHECKED", note: ""),
        (item: [*Emergency contacts* saved and accessible], response: "CHECKED", note: "Family, neighbour buddy, building committee"),
        (item: [*Family members* know the plan], response: "CHECKED", note: "Who helps whom, who grabs what, designated roles during a siren"),
      ),
    ),
  ),
)
