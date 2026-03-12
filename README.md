# Red Alert SOPs

Standard Operating Procedures for Red Alert (rocket/missile/hostile aerial vehicle) readiness in Israel.

> **IMPORTANT: This is NOT an official government resource. Use at your own risk.** These SOPs are based on Home Front Command (Pikud HaOref) guidelines but are not endorsed or verified by any official body. For official guidance, visit [oref.org.il](https://www.oref.org.il).

> **These SOPs were written specifically for people living in buildings WITHOUT a Mamad (residential protected room) or Mamak (floor protected room).** If your building has a Mamad or Mamak, your primary action is simply to enter it when a siren sounds. These SOPs address the more complex and stressful situation of needing to reach an external shelter or choose an alternative protected space under extreme time pressure. The siren response cards cover both with-Mamad and without-Mamad scenarios for completeness.

## What's Inside

### Readiness Postures (Checklists)

- **Daytime Readiness Posture** — What to have on your person, go bag, exit route, and situational awareness during the day.
- **Nighttime Readiness Posture** — Before-bed preparation so you can wake, dress, and reach a shelter in under 90 seconds in the dark.
- **Choosing a Protected Space** — Priority order for selecting a protected space (Mamad > Shelter > Stairwell > Inner room > Ground).
- **Shelter Check** — How to find, verify, and time your route to your nearest shelters. Do this BEFORE you need it.
- **Escalation Readiness** — 72-hour preparation checklist for when the geopolitical situation deteriorates: water, food, power, medical, documents, household supplies.
- **Elderly / Mobility Limited** — Readiness posture for individuals with mobility limitations or families caring for them: protected space setup, equipment, and buddy system.

### Siren Response Cards (What To Do NOW)

- **Siren Response — Quick Reference** — One-page card covering 10 scenarios: at home (with/without Mamad), driving, on a bus, outside on foot, in a public building, in an elevator, in a prefab/caravan, with young children, and with mobility limitations.
- **Siren Response — With Infant** — One-page card for parents with a baby (0–18 months): home with/without Mamad, night with sleeping baby, outside with stroller, driving with car seat, on a bus, and in public buildings. Includes go-bag additions for infants.

## Structure

```
data/
  readiness-postures/
    daytime-posture.yaml
    nighttime-posture.yaml
    protected-space-decision.yaml
    shelter-check.yaml
    escalation-readiness.yaml
    mobility-limited-posture.yaml
  siren-responses/
    siren-response-home-with-mamad.yaml
    siren-response-home-without-mamad.yaml
    siren-response-driving.yaml
    siren-response-bus.yaml
    siren-response-outside.yaml
    siren-response-public-building.yaml
    siren-response-elevator.yaml
    siren-response-prefab.yaml
    siren-response-with-children.yaml
    siren-response-mobility-limited.yaml
  siren-responses-with-infant/
    siren-response-infant-home-with-mamad.yaml
    siren-response-infant-home-without-mamad.yaml
    siren-response-infant-driving.yaml
    siren-response-infant-bus.yaml
    siren-response-infant-outside.yaml
    siren-response-infant-night.yaml
    siren-response-infant-public-building.yaml
typst/
  checklist.typ
  disclaimer.typ
  daytime-posture.typ
  nighttime-posture.typ
  protected-space-flowchart.typ
  shelter-check.typ
  escalation-readiness.typ
  mobility-limited-posture.typ
  siren-responses.typ
  siren-responses-with-infant.typ
assets/
  image.png                          # ביחד ננצח | עם ישראל חי
output/
  readiness-postures/                # Generated PDFs (A4)
  siren-responses/
```

## Building the PDFs

Requires [Typst](https://typst.app/) installed. Must use `--root .` from the repo root so Typst can access `assets/`:

```bash
# From the repo root
for f in daytime-posture nighttime-posture protected-space-flowchart \
         shelter-check escalation-readiness mobility-limited-posture; do
  typst compile --root . "typst/$f.typ" "output/readiness-postures/$f.pdf"
done

for f in siren-responses siren-responses-with-infant; do
  typst compile --root . "typst/$f.typ" "output/siren-responses/$f.pdf"
done
```

## Authors

By **Daniel Rosehill** and **Claude Opus**. Share freely with attribution.

## Disclaimer

**This is NOT an official government resource.** These SOPs are a personal preparedness aid created from publicly available Home Front Command guidance and personal experience living in a building without a Mamad during wartime. Guidance is based on HFC (Pikud HaOref) publications as of **12 March 2026**. They are not endorsed, verified, or maintained by any government body. Use at your own risk. Always follow instructions from Pikud HaOref and local emergency services. For official guidance, visit [oref.org.il](https://www.oref.org.il).

ביחד ננצח | עם ישראל חי
