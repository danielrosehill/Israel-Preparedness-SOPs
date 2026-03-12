// Family Emergency Plan
#import "checklist.typ": checklist

#checklist(
  title: "Family Emergency Plan",
  subtitle: "Family coordination and role assignment — based on HFC guidelines",
  sop-id: "SOP-10",
  version: "1.0",
  sections: (
    (
      name: "Family Conversation",
      items: (
        (item: [*Family meeting* held to discuss emergency plan], response: "DONE", note: "Include all household members; explain dangers in age-appropriate terms"),
        (item: [Emergency types *explained*], response: "DONE", actions: ("missile attack / siren", "earthquake", "fire", "hazardous materials"), note: "Explain how to identify each: siren = missiles, shaking = earthquake, smoke = fire"),
        (item: [*Protected space* location known by all], response: "VERIFIED", note: ""),
        (item: [*Time to shelter* for your area known by all], response: "VERIFIED", note: "Check HFC Alerts tab at oref.org.il"),
      ),
    ),
    (
      name: "Roles & Responsibilities",
      items: (
        (item: [*Roles assigned* by age and ability], response: "DONE", note: "Everyone gets a role, regardless of ability"),
        (item: [Who grabs the *baby / children*], response: "ASSIGNED", note: ""),
        (item: [Who grabs the *go bag*], response: "ASSIGNED", note: ""),
        (item: [Who *closes doors and windows*], response: "ASSIGNED", note: ""),
        (item: [Who checks on *elderly / mobility-limited* members], response: "ASSIGNED", note: ""),
        (item: [Who handles *pets*], response: "ASSIGNED", note: ""),
      ),
    ),
    (
      name: "Critical Knowledge — All Members",
      items: (
        (item: [*Gas shutoff* — location and method known], response: "VERIFIED", note: "All family members must know when and how to shut off"),
        (item: [*Electricity shutoff* — location and method known], response: "VERIFIED", note: "Main breaker location"),
        (item: [*Weak points* in home identified], response: "CHECKED", actions: ("windows / glass", "heavy objects", "porcelain / ceramics", "elevators"), note: "These are NOT safe during emergencies"),
        (item: [*Emergency equipment* location known by all], response: "VERIFIED", note: "Where the bag is, what's in it, how to use each item"),
      ),
    ),
    (
      name: "Meeting Places & Communication",
      items: (
        (item: [*Meeting place #1* — near home], response: "SET", note: "All family members know the exact spot and can find it independently"),
        (item: [*Meeting place #2* — remote/backup], response: "SET", note: "Public park, landmark, or building further away"),
        (item: [*Emergency contacts list* — printed, visible], response: "CHECKED", note: "Physical copy in prominent location + copies for each family member"),
        (item: [Key *phone numbers* memorised or written], response: "CHECKED", actions: ("100 Police", "101 MDA", "102 Fire", "104 HFC"), note: "Do NOT rely on digital contacts"),
        (item: [Each member knows *who to call* and *what to say*], response: "VERIFIED", note: "Callback number, what's happening, address, who's in the house"),
      ),
    ),
    (
      name: "Order of Actions (Memorise)",
      items: (
        (item: [*1. NOTIFY* — alert rescue services or an adult], response: "MEMORISED", note: "As early as possible"),
        (item: [*2. SHUT OFF* — gas and electricity], response: "MEMORISED", note: "Prevent fire spread and ignition"),
        (item: [*3. DISTANCE* — move to protected space], response: "MEMORISED", note: "Based on the type of emergency"),
        (item: [*4. CLOSE* — add barriers between you and the threat], response: "MEMORISED", note: "Close windows and doors"),
        (item: [*5. ACT* — move to safe location], response: "MEMORISED", note: "E.g., under table during earthquake"),
        (item: [*6. LISTEN* — follow instructions from security forces / media], response: "MEMORISED", note: ""),
      ),
    ),
    (
      name: "Drills & Review",
      items: (
        (item: [*Practice drill* completed — entering protected space in time], response: "DONE", note: "Timed; all family members participated"),
        (item: [*Role assignments* reviewed and updated], response: "DONE", note: "Check if new members added or abilities changed"),
        (item: [*Supplies* checked and updated], response: "DONE", note: "Water bottles, batteries, food expiry dates"),
        (item: [*Communication plan* reviewed], response: "DONE", note: "Each member knows who to contact"),
        (item: [Next *review date* scheduled], response: "SET", note: "Hold periodic meetings as threats or household composition change"),
      ),
    ),
  ),
)
