<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=190&section=header&text=%F0%9F%A7%A0%20DNS%20Tunneling%20Detection%20Engineering&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Abdul-Rehman%20%C2%B7%20Detection%20v1.0%20Frozen%20Before%20Official%20Execution&descSize=15&descAlignY=61&descColor=14B8A6" width="100%" alt="🧠 DNS Tunneling Detection Engineering" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Validate%20Telemetry%20%E2%86%92%20Measure%20Ingest%20%E2%86%92%20Baseline%20%E2%86%92%20Engineer%20Labels%20%E2%86%92%20Hunt;Build%20Dashboard%20%E2%86%92%20Positive%20Test%20%E2%86%92%20Benign%20Challenge%20%E2%86%92%20Freeze%20v1.0%20%E2%86%92%20Alert;Detection%20creates%20the%20lead.%20Analysts%20decide%20what%20the%20evidence%20means." alt="🧠 DNS Tunneling Detection Engineering workflow" />

![Owner](https://img.shields.io/badge/Detection_Engineer-Abdul--Rehman-14B8A6?style=flat-square) ![Detection](https://img.shields.io/badge/Detection-v1.0_Frozen-2EA44F?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square) ![AI](https://img.shields.io/badge/AI-dns__tunneling__v1-A855F7?style=flat-square)

[🏠 Scenario Home](../README.md) · [📊 Dashboard](../dashboard/README.md) · [🔎 SPL](../spl/README.md) · [🤖 AI](../ai/README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧠 Scenario 04 Detection Engineering Workspace

Abdul-Rehman's engineering record starts with **live Unbound telemetry** and ends only after the baseline, feature hunt, Dashboard Studio investigation surface, controlled positive, benign lookalike challenge, frozen Detection v1.0, scheduled alert, raw-event drilldown and `dns_tunneling_v1` AI evidence contract all passed validation.

## 🚦 Engineering Snapshot

| Field | Final state |
|---|---|
| Engineer | [Abdul-Rehman](https://github.com/abdul4rehman215) |
| Primary telemetry | Unbound resolver query/reply evidence |
| MITRE | `T1071.004 — Application Layer Protocol: DNS` |
| `T1572` | **Not claimed** |
| Detection window | 1 minute |
| Unique child labels | `>= 5` |
| Long-label count | `>= 5` |
| Maximum first-label length | `> 16` |
| Positive challenge | ✅ Passed |
| Benign long-label lookalike | ✅ Did not trigger |
| Dashboard | ✅ Validated |
| Scheduled alert | ✅ Triggered |
| AI evidence contract | ✅ Validated |
| Production state | **Detection v1.0 frozen** |

## 🔁 Engineering Lifecycle

```mermaid
%%{init: {
  "theme": "base",
  "themeVariables": {
    "background": "#030712",
    "primaryTextColor": "#ffffff",
    "lineColor": "#f8fafc",
    "fontSize": "30px"
  },
  "flowchart": {
    "nodeSpacing": 46,
    "rankSpacing": 58,
    "curve": "basis",
    "padding": 20
  }
}}%%

flowchart LR

    %% =====================================================
    %% 1 · DATA FOUNDATION
    %% =====================================================
    subgraph P1[" "]
        direction TB

        H1["📡 1 · DATA FOUNDATION"]

        A["📡 Validate<br/>Resolver Fields"]

        B["⏱️ Measure<br/>Ingestion"]

        C["📊 Clean<br/>Baseline"]

        H1 ==> A ==> B ==> C
    end


    %% =====================================================
    %% 2 · DETECTION DESIGN
    %% =====================================================
    subgraph P2[" "]
        direction TB

        H2["🧬 2 · DETECTION DESIGN"]

        D["🧬 Engineer<br/>Label Features"]

        E["🔎 Threshold-Free<br/>Hunting"]

        F["📊 Dashboard<br/>Studio"]

        H2 ==> D ==> E ==> F
    end


    %% =====================================================
    %% 3 · VALIDATION
    %% =====================================================
    subgraph P3[" "]
        direction TB

        H3["✅ 3 · VALIDATION"]

        G["✅ Positive<br/>Validation"]

        H["🧪 Benign<br/>Challenge"]

        I["🧊 Freeze<br/>Detection v1.0"]

        H3 ==> G ==> H ==> I
    end


    %% =====================================================
    %% 4 · SOC DELIVERY
    %% =====================================================
    subgraph P4[" "]
        direction TB

        H4["🛡️ 4 · SOC DELIVERY"]

        J["🚨 Scheduled<br/>Alert"]

        K["🤖 AI<br/>Evidence Contract"]

        L["🔎 SOC<br/>Investigation"]

        H4 ==> J ==> K ==> L
    end


    %% =====================================================
    %% KEEP COLUMNS PARALLEL
    %% =====================================================
    P1 ==> P2
    P2 ==> P3
    P3 ==> P4


    %% =====================================================
    %% HEADERS
    %% =====================================================
    classDef h1 fill:#075985,stroke:#67e8f9,stroke-width:7px,color:#ffffff,font-size:34px,font-weight:bold;
    classDef h2 fill:#0f766e,stroke:#5eead4,stroke-width:7px,color:#ffffff,font-size:34px,font-weight:bold;
    classDef h3 fill:#713f12,stroke:#fde047,stroke-width:7px,color:#ffffff,font-size:34px,font-weight:bold;
    classDef h4 fill:#4c1d95,stroke:#e879f9,stroke-width:7px,color:#ffffff,font-size:34px,font-weight:bold;

    class H1 h1;
    class H2 h2;
    class H3 h3;
    class H4 h4;


    %% =====================================================
    %% NODE COLORS
    %% =====================================================
    classDef data fill:#172554,stroke:#60a5fa,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;
    classDef design fill:#083344,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;
    classDef validate fill:#14532d,stroke:#4ade80,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;
    classDef freeze fill:#7c2d12,stroke:#fb923c,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;
    classDef alert fill:#7f1d1d,stroke:#fb7185,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;
    classDef ai fill:#581c87,stroke:#f0abfc,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;
    classDef soc fill:#065f46,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:31px,font-weight:bold;

    class A,B,C data;
    class D,E,F design;
    class G,H validate;
    class I freeze;
    class J alert;
    class K ai;
    class L soc;


    %% =====================================================
    %% PREMIUM PANELS
    %% =====================================================
    style P1 fill:#06131d,stroke:#22d3ee,stroke-width:4px
    style P2 fill:#071611,stroke:#2dd4bf,stroke-width:4px
    style P3 fill:#181007,stroke:#fbbf24,stroke-width:4px
    style P4 fill:#150821,stroke:#d946ef,stroke-width:4px


    %% =====================================================
    %% CONNECTORS
    %% =====================================================
    linkStyle default stroke:#f8fafc,stroke-width:6px;
```

## 🖼️ Engineering Evidence Highlights

<table>
<tr>
<td width="33%"><img src="../screenshots/detection-engineering/01-resolver-field-validation.png" alt="Resolver field validation"><br/><sub><b>Telemetry:</b> resolver fields and event semantics validated.</sub></td>
<td width="33%"><img src="../screenshots/detection-engineering/04-tunneling-feature-hunt.png" alt="Feature hunt"><br/><sub><b>Feature hunt:</b> parent/child and first-label structure explored before thresholds.</sub></td>
<td width="33%"><img src="../screenshots/detection-engineering/05-dns-tunneling-investigation-dashboard.png" alt="Dashboard"><br/><sub><b>Analyst surface:</b> Dashboard Studio built before the final alert was frozen.</sub></td>
</tr>
<tr>
<td width="33%"><img src="../screenshots/detection-engineering/07-controlled-positive-detection.png" alt="Controlled positive"><br/><sub><b>Positive:</b> intended tunneling-like structure triggered.</sub></td>
<td width="33%"><img src="../screenshots/detection-engineering/08-benign-lookalike-no-detection.png" alt="Benign lookalike"><br/><sub><b>False-positive challenge:</b> one repeated long label did not trigger v1.0.</sub></td>
<td width="33%"><img src="../screenshots/detection-engineering/10-scheduled-alert-triggered.png" alt="Scheduled alert"><br/><sub><b>Operationalization:</b> the production scheduled alert executed successfully.</sub></td>
</tr>
</table>

## 🗂️ Start Here

| Artifact | Purpose |
|---|---|
| [`DETECTION-ENGINEERING.md`](DETECTION-ENGINEERING.md) | flagship 599-line engineering case study |
| [`detection-engineering-validation.md`](detection-engineering-validation.md) | acceptance matrix and proof |
| [`FREEZE-RECORD.md`](FREEZE-RECORD.md) | frozen v1.0 thresholds and change-control boundary |
| [`TROUBLESHOOTING-AND-LESSONS.md`](TROUBLESHOOTING-AND-LESSONS.md) | reusable engineering lessons |
| [`commands/README.md`](commands/README.md) | controlled validation command map |
| [`../spl/README.md`](../spl/README.md) | production SPL lifecycle |
| [`../dashboard/README.md`](../dashboard/README.md) | investigation dashboard |
| [`../ai/README.md`](../ai/README.md) | AI evidence contract |

> **Engineering principle:** do not detect “long DNS.” Detect a measured combination of fresh child-label structure, concentration and short-window behavior that survives a benign challenge.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 Engineering Story](DETECTION-ENGINEERING.md) · [📊 Dashboard](../dashboard/README.md) · [🔎 SPL](../spl/README.md)

<br/>

**Measure first. Challenge the hypothesis. Freeze only what survives.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
