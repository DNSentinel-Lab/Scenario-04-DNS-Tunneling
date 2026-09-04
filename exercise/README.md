<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,12,18,24,30&height=190&section=header&text=%F0%9F%8E%AD%20Realistic%20Exercise%20%26%20Information%20Separation&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Frozen%20Engineering%20%C2%B7%20Hidden%20Ground%20Truth%20%C2%B7%20Independent%20Defender%20Decisions&descSize=15&descAlignY=61&descColor=A78BFA" width="100%" alt="🎭 Realistic Exercise & Information Separation" />

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
flowchart TB
    A["🧠 Frozen Detection Engineering"] --> C["🔎 SOC Investigation"]
    B["🎯 Private Operator Ground Truth"] -. "🔒 hidden" .-> X[" "]
    C --> D["🛡️ IR Independent Validation"]
    D --> E["👤 Human Response Decision"]
    E --> F["🎭 Ground-Truth Reveal"]
    B --> F
    F --> G["🧾 Final Comparison"]
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
