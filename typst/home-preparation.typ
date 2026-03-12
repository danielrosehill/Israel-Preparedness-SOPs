// Home Preparation for Emergencies
#import "checklist.typ": checklist

#checklist(
  title: "Home Preparation",
  subtitle: "Securing your home and protected space — based on HFC guidelines",
  sop-id: "SOP-11",
  version: "1.0",
  sections: (
    (
      name: "Protected Space (Mamad) — Inspection",
      items: (
        (item: [*Blast door* opens and closes easily], response: "VERIFIED", note: "Handle turns 90° upward; double lock functions"),
        (item: [No *light penetration* when door is sealed], response: "VERIFIED", note: "Indicates proper seal"),
        (item: [Door *rubber insulation* present and not dried out], response: "VERIFIED", note: "Replace if cracked or brittle"),
        (item: [*Steel outer window* opens and closes easily], response: "VERIFIED", note: ""),
        (item: [*Glass inner window* functions correctly], response: "VERIFIED", note: "Single-wing: double lock works. Double-wing: remove only during emergency times"),
        (item: [*Ventilation pipes* — rubber insulation intact], response: "VERIFIED", note: "Steel cover screws tighten fully"),
      ),
    ),
    (
      name: "Protected Space — Contents",
      items: (
        (item: [No *flammable, hazardous, or toxic* materials stored], response: "VERIFIED", note: ""),
        (item: [No *glass, ceramic, or porcelain* items that could shatter], response: "VERIFIED", actions: ("no mirrors", "no vases", "no ceramic decorations"), note: ""),
        (item: [*Shelves and heavy items* fixed to walls], response: "VERIFIED", note: "Nothing that can fall during impact"),
        (item: [*Gas tanks* are 3+ metres from protected room walls], response: "VERIFIED", note: "Report violations to gas company and local authority"),
        (item: [*Emergency supplies* stored inside or nearby], response: "CHECKED", note: "See Emergency Supplies Kit SOP-9"),
        (item: [Room is *ventilated* (if used as bedroom)], response: "CHECKED", note: "Mamad must not be used as kitchen, bathroom, or washroom"),
      ),
    ),
    (
      name: "Secure Furniture & Objects",
      items: (
        (item: [*Bookcases and shelves* secured to walls], response: "DONE", note: "Use wall anchors or anti-tip brackets"),
        (item: [*Heavy appliances* locked in place], response: "DONE", actions: ("washing machine", "refrigerator", "oven"), note: "Lock wheels or secure with straps"),
        (item: [Heavy objects placed in *low positions*], response: "DONE", note: "Nothing heavy or fragile in high positions"),
        (item: [No *heavy objects near windows*], response: "VERIFIED", note: ""),
        (item: [*Danger areas* in home identified and treated], response: "DONE", note: "Glass panels, tall unsecured furniture, hanging heavy items"),
      ),
    ),
    (
      name: "Hazardous Materials",
      items: (
        (item: [*Paint, solvents, cleaning supplies* in closed vessels], response: "CHECKED", note: "Stored away from heat sources"),
        (item: [*Flammable materials* stored safely], response: "CHECKED", note: "Not in or near protected space"),
        (item: [*Gas supply* checked], response: "VERIFIED", actions: ("private home: spare tank full", "shared building: tank > half full"), note: "Verify integrity and capacity regularly"),
      ),
    ),
    (
      name: "Infrastructure & Escape Routes",
      items: (
        (item: [*Electrical connections* integrity checked], response: "VERIFIED", note: ""),
        (item: [*Gas connections* integrity checked], response: "VERIFIED", note: ""),
        (item: [All family members know *gas + electricity shutoff* locations], response: "VERIFIED", note: "And know when and how to shut off"),
        (item: [*Evacuation route* planned], response: "DONE", actions: ("primary exit", "secondary exit (back door / porch / emergency stairs)"), note: ""),
        (item: [Evacuation routes *clear of obstacles*], response: "VERIFIED", note: "No furniture, portable objects, or flammable materials blocking paths"),
        (item: [All family members know *all routes*], response: "VERIFIED", note: ""),
      ),
    ),
  ),
)
