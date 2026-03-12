// Emergency Supplies Kit
#import "checklist.typ": checklist

#checklist(
  title: "Emergency Supplies Kit",
  subtitle: "72-hour supply kit — based on HFC guidelines",
  sop-id: "SOP-9",
  version: "1.0",
  sections: (
    (
      name: "Water & Food",
      items: (
        (item: [*Water* — 3L per person per day × 3 days], response: "CHECKED", actions: ("sealed bottles", "stored in protected space or by go bag"), note: "Replace every 3 months"),
        (item: [*Infant water* — extra for formula prep], response: "CHECKED", note: "Bottled water suitable for babies"),
        (item: [*Non-perishable food* for 72 hours], response: "CHECKED", actions: ("canned goods", "crackers", "dried fruit", "energy bars"), note: "No cooking required"),
        (item: [*Baby food* / formula for 72 hours], response: "CHECKED", actions: ("pre-measured formula", "pouches", "age-appropriate snacks"), note: ""),
        (item: [*Pet food* for 72 hours (if applicable)], response: "CHECKED", note: ""),
        (item: [Manual *can opener* + disposable plates/cutlery], response: "CHECKED", note: ""),
      ),
    ),
    (
      name: "Power, Light & Communication",
      items: (
        (item: [*Power banks* fully charged], response: "CHECKED", note: "Enough to charge all phones for 72 hours"),
        (item: [Battery-powered or hand-crank *radio*], response: "CHECKED", note: "For updates if internet/cell goes down; test batteries"),
        (item: [*Torches* with fresh batteries], response: "CHECKED", actions: ("one per room", "one in go bag"), note: ""),
        (item: [Spare *batteries*], response: "CHECKED", actions: ("AA", "AAA", "torch", "radio", "medical devices"), note: ""),
        (item: [*Emergency lighting*], response: "CHECKED", note: "Battery or solar-powered lantern"),
      ),
    ),
    (
      name: "Medical & Hygiene",
      items: (
        (item: [*Medications* — 72-hour supply], response: "CHECKED", actions: ("prescriptions", "inhalers", "insulin", "EpiPens"), note: "Include printed prescriptions"),
        (item: [*First aid kit*], response: "CHECKED", actions: ("bandages", "antiseptic", "painkillers", "gauze", "scissors", "tape"), note: ""),
        (item: [*Hygiene kit*], response: "CHECKED", actions: ("toilet paper", "wet wipes", "nappies", "sanitiser", "soap"), note: ""),
        (item: [*Medical status sheet* from family doctor], response: "CHECKED", note: "Conditions, medications, allergies, what help is needed"),
      ),
    ),
    (
      name: "Documents & Valuables",
      items: (
        (item: [Photocopies of essential *documents* in sealed bag], response: "CHECKED", actions: ("ID / Teudat Zehut", "passport", "driver's licence", "insurance", "medical records"), note: ""),
        (item: [*Cash*], response: "CHECKED", note: "ATMs and card readers may go offline"),
        (item: [*Emergency contacts* list — printed], response: "CHECKED", note: "Do NOT rely on phone contacts alone"),
      ),
    ),
    (
      name: "Comfort & Children",
      items: (
        (item: [*Blankets* or sleeping bags], response: "CHECKED", note: "For sheltering; nights can be cold"),
        (item: [*Change of clothes* for each family member], response: "CHECKED", note: "Include warm layer"),
        (item: [*Activities for children*], response: "CHECKED", actions: ("games", "colouring books", "stationery", "comfort item"), note: "Shelter waits are long for kids"),
        (item: [*Fire extinguisher* + smoke detector], response: "CHECKED", note: ""),
      ),
    ),
    (
      name: "Storage & Maintenance",
      items: (
        (item: [All supplies in a *single bag* or container], response: "CHECKED", note: "Can be grabbed and carried; place near exit or in protected space"),
        (item: [Items needing to stay dry in *sealed plastic bags*], response: "CHECKED", note: ""),
        (item: [All household members know *location and contents*], response: "VERIFIED", note: "Everyone must know how to use each item"),
        (item: [*Maintenance schedule* set], response: "CHECKED", actions: ("water + food every 3 months", "batteries + electronics every 6 months"), note: "Appoint one person responsible for inspections"),
      ),
    ),
  ),
)
