<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=7,12,18,24,28&height=190&section=header&text=SOC%20Analyst%20and%20Threat%20Hunting%20Workspace&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20-%20DNS%20Tunneling%20-%20Lubaba&descSize=15&descAlignY=61" width="100%" alt="🔎 SOC Analyst & Threat Hunting Workspace" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=22D3EE&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Telemetry%20%E2%86%92%20Namespace%20%E2%86%92%20Raw%20Labels%20%E2%86%92%20Detection%20%E2%86%92%20Query%2FReply%20%E2%86%92%20Baseline;Scope%20%E2%86%92%20Human%20Hypothesis%20%E2%86%92%20AI%20Validation%20%E2%86%92%205W1H%20%E2%86%92%20IR%20Handoff" alt="🔎 SOC Analyst & Threat Hunting Workspace workflow" />

![Owner](https://img.shields.io/badge/SOC_Analyst-Lubaba-22D3EE?style=flat-square) ![Disposition](https://img.shields.io/badge/Disposition-INCONCLUSIVE_%E2%86%92_IR-F59E0B?style=flat-square) ![Confidence](https://img.shields.io/badge/Confidence-High-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Detection](../detection-engineering/README.md) · [🧾 Evidence](evidence/README.md) · [🛡️ IR](../ir/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 04 SOC Workspace

Lubaba investigated the official alert from **defender-visible evidence only**. Private operator timing, source message, exact generated qname list and authoritative BIND ground truth remained hidden until after the SOC and IR decisions were locked.

## 🚦 Case Snapshot

| Field | SOC result |
|---|---|
| Analyst | Lubaba |
| Resolver-visible client | `10.50.30.20` |
| DNS queries | **7** |
| Unique qnames | **7** |
| Unique child labels | **7** |
| Long-label count | **7** |
| Maximum first-label length | **27** |
| Resolver replies | **7 / 7 NOERROR** |
| Same-rule baseline outside Scenario 04 | **0 matches** |
| AI validation | **CORRECT**, human validation preserved |
| Tunneling-like structure confidence | **High** |
| Malware / compromise / exfiltration attribution | **Not established** |
| Final disposition | **INCONCLUSIVE — ESCALATION WARRANTED** |

> **Confidence: High** refers to the observed tunneling-like DNS structure and case reconstruction, not to malware, compromise, attacker identity or unauthorized intent.

## 🔁 Investigation Path

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
    "nodeSpacing": 48,
    "rankSpacing": 58,
    "curve": "basis",
    "padding": 20
  }
}}%%

flowchart TB

    %% =====================================================
    %% ROW 1 · EVIDENCE FOUNDATION
    %% =====================================================
    subgraph ROW1[" "]
        direction LR

        A["📡 01 · TELEMETRY<br/>READINESS"]

        B["🔍 02 · NAMESPACE<br/>NORMALIZATION"]

        C["🧬 03 · RAW LABEL<br/>STRUCTURE"]

        D["🧠 04 · REPRODUCE<br/>DETECTION v1.0"]

        A ==> B ==> C ==> D
    end


    %% =====================================================
    %% ROW 2 · ANALYSIS + DECISION
    %% =====================================================
    subgraph ROW2[" "]
        direction LR

        E["📨 05–06 · CONTEXT<br/>Query / Reply<br/>+ Baseline"]

        F["🎯 07–08 · SCOPE<br/>+ Human Hypothesis"]

        G["🤖 09–10 · VALIDATE<br/>AI Challenge + 5W1H"]

        H["📨 11 · IR<br/>HANDOFF"]

        E ==> F ==> G ==> H
    end


    %% =====================================================
    %% ROW HANDOFF
    %% =====================================================
    ROW1 ==> ROW2


    %% =====================================================
    %% PREMIUM GLOSSY COLORS
    %% =====================================================
    classDef telemetry fill:#082f49,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef namespace fill:#075985,stroke:#38bdf8,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef structure fill:#312e81,stroke:#818cf8,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef detection fill:#4c1d95,stroke:#e879f9,stroke-width:7px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef context fill:#0f766e,stroke:#5eead4,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef scope fill:#713f12,stroke:#fbbf24,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef validate fill:#7c2d12,stroke:#fb923c,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef handoff fill:#14532d,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:33px,font-weight:bold;


    %% =====================================================
    %% APPLY STYLES
    %% =====================================================
    class A telemetry;
    class B namespace;
    class C structure;
    class D detection;

    class E context;
    class F scope;
    class G validate;
    class H handoff;


    %% =====================================================
    %% GLOSSY ROW PANELS
    %% =====================================================
    style ROW1 fill:#06131d,stroke:#38bdf8,stroke-width:3px

    style ROW2 fill:#0d1117,stroke:#4ade80,stroke-width:3px


    %% =====================================================
    %% BRIGHT CONNECTORS
    %% =====================================================
    linkStyle default stroke:#f8fafc,stroke-width:6px;
```

## 🖼️ SOC Evidence Highlights

<table>
<tr>
<td width="33%"><img src="evidence/S04-SOC-E03-Namespace-Visibility.png" alt="Namespace visibility"><br/><sub><b>E03:</b> normalized Scenario 04 namespace became visible.</sub></td>
<td width="33%"><img src="evidence/S04-SOC-E05-Raw-Qname-Label-Table.png" alt="Raw qname label table"><br/><sub><b>E05:</b> exact child-label structure and lengths.</sub></td>
<td width="33%"><img src="evidence/S04-SOC-E07-Official-Alert-Trigger.png" alt="Official alert"><br/><sub><b>E07:</b> production alert actually fired.</sub></td>
</tr>
<tr>
<td width="33%"><img src="evidence/S04-SOC-E14-Same-Rule-Baseline-Zero.png" alt="Baseline zero"><br/><sub><b>E14:</b> same rule produced zero non-Scenario-04 matches.</sub></td>
<td width="33%"><img src="evidence/S04-SOC-E15-Client-Scope.png" alt="Client scope"><br/><sub><b>E15:</b> one resolver-visible client remained in scope.</sub></td>
<td width="33%"><img src="evidence/S04-SOC-E18-AI-Human-Validation.png" alt="AI human validation"><br/><sub><b>E18:</b> human validation of AI remained explicit.</sub></td>
</tr>
</table>

## 🗂️ Start Here

- [`SOC-ANALYST-INVESTIGATION.md`](SOC-ANALYST-INVESTIGATION.md) — flagship investigation
- [`SOC-ANALYST-PLAYBOOK.md`](SOC-ANALYST-PLAYBOOK.md) — reusable DNS tunneling investigation method
- [`INVESTIGATION-TIMELINE.md`](INVESTIGATION-TIMELINE.md) — UTC sequence
- [`5W1H.md`](5W1H.md) — structured case record
- [`AI-VALIDATION.md`](AI-VALIDATION.md) — human-first AI review
- [`SOC-TO-IR-HANDOFF.md`](SOC-TO-IR-HANDOFF.md) — evidence-limited handoff
- [`SPL-QUERY-INDEX.md`](SPL-QUERY-INDEX.md) — query map
- [`spl/README.md`](spl/README.md) — visual investigation lifecycle
- [`evidence/README.md`](evidence/README.md) — curated E01–E19b evidence

> **SOC success here was restraint:** prove the DNS behavior, challenge baseline, preserve what the telemetry cannot attribute, and escalate the unanswered questions.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 Full Investigation](SOC-ANALYST-INVESTIGATION.md) · [📨 IR Handoff](SOC-TO-IR-HANDOFF.md) · [🧾 Evidence](evidence/README.md)

<br/>

**Prove the behavior. Preserve the limits. Escalate only what stronger evidence must answer.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
