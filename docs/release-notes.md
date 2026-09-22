# Release notes

## 2026.09.22-04 — Internal testing

- Added configurable fixed-location Alert and Critical lightning-report zones.
- Added independent clearing times for both zones.
- Added a resizable home-screen widget with explicit active, clear, and stale
  data states.
- Added optional state-transition notifications through protected Firebase
  Cloud Messaging delivery.
- Added one-time current-location lookup while keeping the saved monitoring
  location fixed and editable.
- Added clear product and safety boundaries for reported GLM lightning data.

## Current testing focus

- Sustained real-storm collector reliability, latency, data-gap behavior, and
  operating cost.
- Natural Alert, Critical, Clear, Stale, and Recovered transitions on physical
  Android devices.
- Widget behavior, notification delivery, and data-freshness handling under
  normal background restrictions.
