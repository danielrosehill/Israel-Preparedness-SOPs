// Go-Bag Packing & Maintenance
#import "checklist.typ": checklist

#checklist(
  title: "Go-Bag Packing & Maintenance",
  subtitle: "Portable emergency bag — grab and go in seconds",
  sop-id: "SOP-13",
  version: "1.0",
  sections: (
    (
      name: "Essentials (Always in Bag)",
      items: (
        (item: [*Water* — 1.5L per person minimum], response: "PACKED", note: "Sealed bottles; replace every 3 months"),
        (item: [*Non-perishable snacks*], response: "PACKED", actions: ("energy bars", "dried fruit", "crackers"), note: "Replace every 3 months"),
        (item: [*Phone charger* + power bank (charged)], response: "PACKED", note: ""),
        (item: [*Torch* with fresh batteries], response: "PACKED", note: ""),
        (item: [*Cash*], response: "PACKED", note: "ATMs may be offline"),
        (item: [*Umbrella* (winter / rainy season)], response: "PACKED", note: "Compact folding umbrella — shelters may be outdoors or a walk away"),
        (item: [*Keys* — spare set], response: "PACKED", note: "House + car"),
      ),
    ),
    (
      name: "Medical",
      items: (
        (item: [*Medications* — 72-hour supply], response: "PACKED", actions: ("prescriptions", "inhalers", "insulin", "EpiPens"), note: "Include printed prescriptions"),
        (item: [*First aid basics*], response: "PACKED", actions: ("bandages", "antiseptic wipes", "painkillers", "plasters"), note: ""),
        (item: [*Medical status sheet*], response: "PACKED", note: "Conditions, medications, allergies — from family doctor"),
      ),
    ),
    (
      name: "Documents (Sealed Plastic Bag)",
      items: (
        (item: [*ID / Teudat Zehut* — photocopy], response: "PACKED", note: ""),
        (item: [*Passport* — photocopy], response: "PACKED", note: ""),
        (item: [*Insurance* documents — photocopy], response: "PACKED", note: ""),
        (item: [*Emergency contacts* list — printed], response: "PACKED", note: "Family, neighbours, doctor, insurance — do NOT rely on phone"),
        (item: [*Medical records* / vaccination booklet — photocopy], response: "PACKED", note: "Especially for children"),
      ),
    ),
    (
      name: "Infant Additions (If Applicable)",
      items: (
        (item: [*Baby carrier*], response: "PACKED", note: "Wrap or structured — by front door, not buried in bag"),
        (item: [*Nappies + wipes*], response: "PACKED", note: "Enough for 24 hours minimum"),
        (item: [*Bottle / formula*], response: "PACKED", actions: ("pre-measured formula", "sealed water for prep"), note: ""),
        (item: [*Pacifier + comfort item*], response: "PACKED", note: ""),
        (item: [*Muslin / blanket*], response: "PACKED", note: ""),
        (item: [*Change of baby clothes*], response: "PACKED", note: ""),
      ),
    ),
    (
      name: "Comfort & Clothing",
      items: (
        (item: [*Change of clothes* per person], response: "PACKED", note: "Include warm layer"),
        (item: [*Blanket* or emergency foil blanket], response: "PACKED", note: ""),
        (item: [*Wet wipes + sanitiser*], response: "PACKED", note: ""),
        (item: [*Toilet paper* (small roll)], response: "PACKED", note: ""),
        (item: [*Activities for children*], response: "PACKED", actions: ("colouring book", "crayons", "small game"), note: "Shelter waits are long for kids"),
      ),
    ),
    (
      name: "Bag Position & Maintenance",
      items: (
        (item: [Bag positioned *by front door* or in protected space], response: "VERIFIED", note: "Grab in under 5 seconds on the way out"),
        (item: [All household members know *location and contents*], response: "VERIFIED", note: "Everyone must know how to use each item"),
        (item: [Items needing dry storage in *sealed plastic bags*], response: "CHECKED", note: "Documents, spare clothes, electronics"),
        (item: [*Water + food* replaced], response: "CHECKED", note: "Every 3 months — write next date on bag"),
        (item: [*Batteries + electronics* checked], response: "CHECKED", note: "Every 6 months"),
        (item: [*Maintenance owner* assigned], response: "SET", note: "One person responsible for quarterly/biannual checks"),
      ),
    ),
  ),
)
