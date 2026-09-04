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
%%{init: {
  "theme": "base",
  "themeVariables": {
    "background": "#030712",
    "primaryTextColor": "#ffffff",
    "lineColor": "#f8fafc",
    "fontSize": "31px"
  },
  "flowchart": {
    "nodeSpacing": 54,
    "rankSpacing": 66,
    "curve": "basis",
    "padding": 22
  }
}}%%

flowchart LR

    %% =====================================================
    %% MAIN DETECTION ENGINEERING PIPELINE
    %% =====================================================
    A["📊 BASELINE<br/>baseline.spl"]

    B["🔎 HUNTING<br/>hunting.spl"]

    C["🧠 DETECTION<br/>detection.spl<br/>v1.0"]

    D["✅ VALIDATION<br/>validation.spl"]

    E["🚨 SCHEDULED ALERT<br/>scheduled-alert.md"]

    A ==> B ==> C ==> D ==> E


    %% =====================================================
    %% SUPPORTING ENGINEERING ARTIFACTS
    %% =====================================================
    F["🧪 PROVENANCE ARCHIVE<br/>history/<br/>candidate-0.1.spl"]

    G["🗂️ SUPPORTING ANALYSIS<br/>supporting/"]

    B -.-> F
    B -.-> G


    %% =====================================================
    %% PREMIUM GLOSSY NODE STYLES
    %% =====================================================

    classDef baseline fill:#172554,stroke:#60a5fa,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef hunt fill:#075985,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef detect fill:#4c1d95,stroke:#e879f9,stroke-width:7px,color:#ffffff,font-size:33px,font-weight:bold;

    classDef validate fill:#14532d,stroke:#4ade80,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef alert fill:#7f1d1d,stroke:#fb7185,stroke-width:7px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef history fill:#713f12,stroke:#fbbf24,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    classDef support fill:#134e4a,stroke:#5eead4,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;


    %% =====================================================
    %% APPLY STYLES
    %% =====================================================
    class A baseline;
    class B hunt;
    class C detect;
    class D validate;
    class E alert;
    class F history;
    class G support;


    %% =====================================================
    %% BRIGHT MAIN PIPELINE
    %% =====================================================
    linkStyle 0 stroke:#60a5fa,stroke-width:6px;
    linkStyle 1 stroke:#c084fc,stroke-width:6px;
    linkStyle 2 stroke:#4ade80,stroke-width:6px;
    linkStyle 3 stroke:#fb7185,stroke-width:6px;


    %% =====================================================
    %% DASHED SUPPORTING PATHS
    %% =====================================================
    linkStyle 4 stroke:#fbbf24,stroke-width:5px,stroke-dasharray:10 7;
    linkStyle 5 stroke:#5eead4,stroke-width:5px,stroke-dasharray:10 7;
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
