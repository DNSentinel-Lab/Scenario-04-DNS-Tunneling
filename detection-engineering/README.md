<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=145&section=header&text=%F0%9F%9B%A0%EF%B8%8F%20Detection%20Engineering&fontSize=30&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20DNS%20Tunneling%20%7C%20Complete%20%2F%20SOC-Ready&descSize=14&descAlignY=69&descColor=20E3B2" width="100%" alt="Scenario 04 Detection Engineering" />

<div align="center">

![Owner](https://img.shields.io/badge/Detection_Engineer-Abdul--Rehman-14B8A6?style=flat-square)
![Detection](https://img.shields.io/badge/Detection-v1.0_Frozen-2EA44F?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)
![AI](https://img.shields.io/badge/AI-dns__tunneling__v1-7B2CBF?style=flat-square)

[🏠 Scenario Home](../README.md) · [📋 Runbook](../SCENARIO-RUNBOOK.md) · [🔎 Evidence](../evidence/README.md) · [📸 Screenshots](../screenshots/README.md)

</div>

## Engineering record

This workspace documents Abdul-Rehman's completed Scenario 04 Detection Engineering lifecycle. The work began with live Unbound data and ended only after the final rule, Dashboard Studio view, scheduled alert, raw-event drilldown and Scenario 04 AI evidence contract had all been validated.

### Start here

| Document | Purpose |
|---|---|
| [`DETECTION-ENGINEERING.md`](DETECTION-ENGINEERING.md) | Full technical work story — question → observation → decision → validation → lesson |
| [`detection-engineering-validation.md`](detection-engineering-validation.md) | Acceptance matrix and proof for positive, benign, scheduled, raw-event and AI gates |
| [`FREEZE-RECORD.md`](FREEZE-RECORD.md) | Frozen v1.0 thresholds, alert timing, MITRE, AI profile and change-control boundary |
| [`TROUBLESHOOTING-AND-LESSONS.md`](TROUBLESHOOTING-AND-LESSONS.md) | Curated reusable engineering lessons; minor navigation/copy-paste issues omitted |
| [`commands/`](commands/) | Safe pre-flight and Detection Engineering validation helper scripts |

### Final engineering chain

```text
trusted resolver telemetry
→ ingestion timing
→ clean baseline
→ label/parent features
→ threshold-free hunting
→ Dashboard Studio
→ controlled positive
→ benign challenge
→ Detection v1.0
→ scheduled alert
→ analyst evidence + raw drilldown
→ AI evidence contract
→ freeze
```

> **Boundary:** this workspace remains the frozen pre-exercise engineering record. Official operator, SOC and IR evidence is intentionally kept in the separate [`attacker/`](../attacker/), [`soc/`](../soc/) and [`ir/`](../ir/) workspaces so the engineering history is not rewritten after execution.

<div align="center">

[🏠 Scenario Home](../README.md) · [⬆ Back to top](#top)

</div>
