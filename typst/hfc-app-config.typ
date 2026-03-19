// Home Front Command App Configuration Checklist — Android
#import "checklist.typ": *

#checklist(
  title: "HFC App Configuration",
  subtitle: "Home Front Command (Pikud HaOref) App Setup — Android",
  sop-id: "SOP-17",
  sections: (
    (
      name: "Installation",
      items: (
        (
          item: [*Home Front Command app* installed],
          icon: icon-app,
          note: "Search \"פיקוד העורף\" or \"Home Front Command\" in Google Play Store",
        ),
        (
          item: [App *up to date*],
          icon: icon-gear,
          note: "Check Play Store for pending updates",
        ),
      ),
    ),
    (
      name: "Permissions",
      items: (
        (
          item: [*GPS / Location* permission granted],
          icon: icon-signal,
          note: "Settings → Apps → HFC → Permissions → Location → Allow all the time",
        ),
        (
          item: [*Notifications* set up and tested],
          icon: icon-bell,
          subitems: (
            [Notifications enabled for the app],
            [Alert sound is audible _(test it)_],
            [Notifications not silenced or grouped],
          ),
        ),
        (
          item: [*Battery permissions* correctly set],
          icon: icon-battery,
          subitems: (
            [Battery optimization *disabled* for this app],
            [Allowed to run in background],
          ),
          note: "Settings → Apps → HFC → Battery → Unrestricted",
        ),
        (
          item: [*Data permissions* set],
          icon: icon-signal,
          subitems: (
            [Allow background data use],
            [Not restricted by data saver],
          ),
          note: "Settings → Apps → HFC → Mobile data & Wi-Fi → Allow background data",
        ),
        (
          item: [*\"Remove permissions if unused\"* disabled],
          icon: icon-gear,
          note: "Settings → Apps → HFC → Permissions → uncheck \"Remove permissions if app isn't used\"",
        ),
      ),
    ),
    (
      name: "Configuration",
      items: (
        (
          item: [*Alert area* set to your location],
          icon: icon-route,
          note: "Open app → Settings → select your city/area",
        ),
        (
          item: [*Alert types* all enabled],
          icon: icon-bell,
          note: "Rockets, hostile aircraft, earthquakes, tsunamis, hazardous materials — enable all",
        ),
        (
          item: [*DND / Do Not Disturb override* verified],
          icon: icon-phone,
          subitems: (
            [App can override Do Not Disturb],
            [App can display over other apps],
          ),
          note: "Critical: alerts must sound even when phone is in DND or silent mode",
        ),
      ),
    ),
    (
      name: "Verification",
      items: (
        (
          item: [*Test alert* received successfully],
          icon: icon-shield,
          note: "Wait for next HFC test or ask someone nearby to trigger their alert and verify you hear yours",
        ),
        (
          item: [Alert audible with phone *face-down*],
          icon: icon-phone,
          note: "Place phone face-down and verify alert is still clearly audible",
        ),
        (
          item: [Alert works in *DND mode*],
          icon: icon-moon,
          note: "Enable DND, have someone trigger a test — verify alert breaks through",
        ),
      ),
    ),
  ),
)
