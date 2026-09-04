<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=190&section=header&text=Realistic%20Exercise%20and%20Information%20Separation&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20-%20Frozen%20Engineering%20-%20Hidden%20Ground%20Truth%20-%20Independent%20Defender%20Decisions&descSize=15&descAlignY=61" width="100%" alt="🎭 Realistic Exercise & Information Separation" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=A78BFA&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Freeze%20%E2%86%92%20Execute%20%E2%86%92%20Hide%20Ground%20Truth%20%E2%86%92%20SOC%20%E2%86%92%20IR%20%E2%86%92%20Lock%20Decisions%20%E2%86%92%20Reveal%20%E2%86%92%20Compare" alt="🎭 Realistic Exercise & Information Separation workflow" />

![Separation](https://img.shields.io/badge/Information_Separation-Preserved-A78BFA?style=flat-square) ![Reveal](https://img.shields.io/badge/Final_Reveal-Complete-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎬 Execution](../SCENARIO-04-EXECUTION.md) · [🎭 Final Comparison](final-comparison.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🎭 Scenario 04 — Exercise Control

The exercise was designed so each role could only claim what its evidence supported **at that stage**. Sonia's exact operator timing, synthetic source message, generated qname list and authoritative BIND ground truth stayed hidden until SOC and IR decisions were complete.

## 🔐 Information-Separation Model

```mermaid
%%{init: {
  "theme": "base",
  "themeVariables": {
    "background": "#030712",
    "primaryTextColor": "#ffffff",
    "lineColor": "#f8fafc",
    "fontSize": "32px"
  },
  "flowchart": {
    "nodeSpacing": 60,
    "rankSpacing": 72,
    "curve": "basis",
    "padding": 22
  }
}}%%

flowchart LR

    %% =====================================================
    %% DETECTION / DEFENDER PATH
    %% =====================================================
    A["🧠 DETECTION<br/>ENGINEERING"]

    C["🔎 SOC<br/>EVIDENCE"]

    D["🛡️ IR<br/>EVIDENCE"]


    %% =====================================================
    %% OPERATOR GROUND TRUTH
    %% =====================================================
    B["🎯 OPERATOR<br/>GROUND TRUTH"]

    X["🔒 REVEAL ONLY<br/>AFTER DECISIONS"]


    %% =====================================================
    %% FINAL COMPARISON
    %% =====================================================
    E["🎭 FINAL<br/>COMPARISON"]


    %% =====================================================
    %% DEFENDER EVIDENCE FLOW
    %% =====================================================
    A ==> C ==> D ==> E


    %% =====================================================
    %% DETECTION ENGINEERING ALSO FEEDS COMPARISON
    %% =====================================================
    A ==> E


    %% =====================================================
    %% PROTECTED GROUND-TRUTH PATH
    %% =====================================================
    B -.-> X
    X -.-> E


    %% =====================================================
    %% PREMIUM GLOSSY COLORS
    %% =====================================================

    classDef detection fill:#4c1d95,stroke:#e879f9,stroke-width:7px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef soc fill:#075985,stroke:#22d3ee,stroke-width:7px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef ir fill:#172554,stroke:#60a5fa,stroke-width:7px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef truth fill:#713f12,stroke:#fbbf24,stroke-width:7px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef gate fill:#450a0a,stroke:#fb7185,stroke-width:7px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef final fill:#14532d,stroke:#86efac,stroke-width:8px,color:#ffffff,font-size:35px,font-weight:bold;


    %% =====================================================
    %% APPLY STYLES
    %% =====================================================
    class A detection;
    class C soc;
    class D ir;
    class B truth;
    class X gate;
    class E final;


    %% =====================================================
    %% CONNECTOR COLORS
    %% =====================================================
    linkStyle 0 stroke:#22d3ee,stroke-width:6px;
    linkStyle 1 stroke:#60a5fa,stroke-width:6px;
    linkStyle 2 stroke:#86efac,stroke-width:6px;
    linkStyle 3 stroke:#e879f9,stroke-width:6px;
    linkStyle 4 stroke:#fbbf24,stroke-width:5px,stroke-dasharray:10 7;
    linkStyle 5 stroke:#fb7185,stroke-width:5px,stroke-dasharray:10 7;
```

## ✅ Exercise Gates

| Gate | Result |
|---|---|
| Detection Engineering frozen before official execution | ✅ |
| one finite operator session completed | ✅ |
| operator ground truth kept private from defenders | ✅ |
| SOC disposition locked before reveal | ✅ |
| IR validation/response completed independently | ✅ |
| human-approved RPZ response verified | ✅ |
| safe reset verified | ✅ |
| ground truth compared only after defender decisions | ✅ |

## 🗂️ Files

- [`REALISTIC-EXERCISE-PROTOCOL.md`](REALISTIC-EXERCISE-PROTOCOL.md) — exercise rules and information boundary
- [`final-comparison.md`](final-comparison.md) — operator ↔ authoritative DNS ↔ resolver ↔ detection ↔ AI ↔ SOC ↔ IR comparison

> **Why this matters:** the strongest learning comes from comparing what each role could prove before the reveal with what the final ground truth later showed.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎭 Final Comparison](final-comparison.md) · [🧾 Evidence](../evidence/README.md)

<br/>

**Lock the decisions first. Reveal the ground truth second.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
