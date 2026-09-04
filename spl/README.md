<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=190&section=header&text=%F0%9F%94%8E%20DNS%20Tunneling%20SPL%20Workspace&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Baseline%20%E2%86%92%20Hunt%20%E2%86%92%20Detect%20%E2%86%92%20Validate%20%E2%86%92%20Alert&descSize=15&descAlignY=61&descColor=14B8A6" width="100%" alt="🔎 DNS Tunneling SPL Workspace" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Baseline%20%E2%86%92%20Threshold-Free%20Hunt%20%E2%86%92%20Detection%20v1.0%20%E2%86%92%20Validation%20%E2%86%92%20Scheduled%20Alert;Production%20logic%20stays%20separate%20from%20development%20history%20and%20supporting%20searches" alt="🔎 DNS Tunneling SPL Workspace workflow" />

![Status](https://img.shields.io/badge/SPL-Complete-2EA44F?style=flat-square) ![Detection](https://img.shields.io/badge/Detection-v1.0_Frozen-14B8A6?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Detection Engineering](../detection-engineering/README.md) · [📊 Dashboard](../dashboard/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 04 — Production SPL Lifecycle

```mermaid
flowchart LR
    A["📊 baseline.spl"] --> B["🔎 hunting.spl"]
    B --> C["🧠 detection.spl<br/>v1.0"]
    C --> D["✅ validation.spl"]
    D --> E["🚨 scheduled-alert.md"]
    B -. provenance .-> F["🧪 history/<br/>candidate-0.1.spl"]
    B -. supporting analysis .-> G["🗂️ supporting/"]
```

| Artifact | Purpose |
|---|---|
| [`baseline.spl`](baseline.spl) | clean victim DNS profile with Scenario 04 namespace excluded |
| [`hunting.spl`](hunting.spl) | threshold-free parent/child + first-label behavior hunt |
| [`detection.spl`](detection.spl) | frozen Detection v1.0 and analyst/AI evidence contract |
| [`validation.spl`](validation.spl) | reusable validation using the same frozen logic |
| [`scheduled-alert.md`](scheduled-alert.md) | exact production schedule and timing rationale |
| [`history/candidate-0.1.spl`](history/candidate-0.1.spl) | clearly marked development artifact |
| [`supporting/`](supporting/) | resolver fields, ingestion timing, baseline, drilldown and AI-return engineering searches |

## 🧠 Detection v1.0

```text
unique_child_labels >= 5
AND long_label_count >= 5
AND max_first_label_length > 16
```

These values came from Scenario 04 baseline and controlled testing; they were not copied from another scenario.

> **Production boundary:** the official SOC and IR searches are kept separately under `soc/spl/` and `ir/spl/` so building the detector is never confused with investigating the incident.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧠 Detection Workspace](../detection-engineering/README.md) · [📊 Dashboard](../dashboard/README.md)

<br/>

**Readable SPL is part of the evidence chain.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
