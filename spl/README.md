<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=135&section=header&text=%F0%9F%94%8E%20SPL%20Engineering%20Workspace&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20DNS%20Tunneling%20%7C%20Detection%20v1.0&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="SPL Engineering Workspace" />

<div align="center">

![Status](https://img.shields.io/badge/Status-Complete-2EA44F?style=flat-square)
![Detection](https://img.shields.io/badge/Detection-v1.0_Frozen-14B8A6?style=flat-square)

[🏠 Scenario Home](../README.md) · [🛠️ Detection Engineering](../detection-engineering/DETECTION-ENGINEERING.md) · [✅ Validation](../detection-engineering/detection-engineering-validation.md)

</div>

## Production SPL lifecycle

Scenario 04 preserves the four categories required by the project standard:

```text
baseline.spl
hunting.spl
detection.spl
validation.spl
```

| File | Purpose |
|---|---|
| [`baseline.spl`](baseline.spl) | Clean victim DNS profile with the controlled tunnel namespace excluded |
| [`hunting.spl`](hunting.spl) | Threshold-free parent/child and first-label behavior hunt |
| [`detection.spl`](detection.spl) | Frozen Detection v1.0 + analyst/AI evidence contract |
| [`validation.spl`](validation.spl) | Same frozen v1.0 logic retained for reusable validation |
| [`scheduled-alert.md`](scheduled-alert.md) | Exact scheduled-alert configuration and timing rationale |

## Detection v1.0

```text
unique_child_labels >= 5
AND long_label_count >= 5
AND max_first_label_length > 16
```

These values came from the current Scenario 04 baseline and controlled testing. They were not copied from another scenario.

## Engineering history and supporting searches

[`history/candidate-0.1.spl`](history/candidate-0.1.spl) is retained as a clearly marked development artifact. It is not the production rule.

[`supporting/`](supporting/) contains the useful searches that explain how the final rule was reached:

- live resolver field discovery/validation;
- ingestion timing and event-detail timing;
- longest normal qnames;
- busiest normal minute;
- first-label and parent-domain hunts;
- character-mix exploration;
- controlled-positive summary;
- raw-event drilldown;
- AI return validation.

These searches document method without turning every intermediate SPL version into a production artifact.

> [!IMPORTANT]
> `detection.spl` and `validation.spl` must retain the same frozen behavior during the official exercise.

<div align="center">

[🏠 Scenario Home](../README.md) · [⬆ Back to top](#top)

</div>
