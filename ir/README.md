<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=190&section=header&text=Incident%20Response%20and%20Defender%20Workspace&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20-%20Musfira%20-%20Independent%20Validation%20to%20RPZ%20to%20Verification%20to%20Safe%20Reset&descSize=15&descAlignY=61" width="100%" alt="🛡️ Incident Response & Defender Workspace" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=SOC%20Handoff%20%E2%86%92%20Independent%20Validation%20%E2%86%92%20Causality%20Challenge%20%E2%86%92%20Current%20Risk;Human%20Approval%20%E2%86%92%20RPZ%20%E2%86%92%20Troubleshoot%20%E2%86%92%20Recover%20%E2%86%92%20Contain%20%E2%86%92%20Verify%20%E2%86%92%20Reset" alt="🛡️ Incident Response & Defender Workspace workflow" />

![Owner](https://img.shields.io/badge/IR_Defender-Musfira-14B8A6?style=flat-square) ![Result](https://img.shields.io/badge/IR_Result-Controlled_Exercise-2EA44F?style=flat-square) ![Containment](https://img.shields.io/badge/RPZ-Validated-F59E0B?style=flat-square) ![Reset](https://img.shields.io/badge/Safe_Reset-Verified-22D3EE?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 SOC Handoff](../soc/SOC-TO-IR-HANDOFF.md) · [🧾 Evidence](evidence/README.md) · [🎭 Comparison](../exercise/final-comparison.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🛡️ Scenario 04 Incident Response Workspace

Musfira treated the SOC handoff as **claims to validate**, not a verdict to repeat. IR rebuilt the DNS facts, challenged network causality, narrowed AWS context, checked recurrence, inspected the existing RPZ response control, executed a human-approved containment validation, recovered from a real configuration failure, proved the correct response twice and safely restored the resolver.

## 🚦 Response Snapshot

| Field | IR result |
|---|---|
| Responder | Musfira |
| SOC input | `INCONCLUSIVE — ESCALATION WARRANTED / High confidence` |
| Endpoint telemetry | direct victim host evidence unavailable |
| DNS behavior | independently confirmed |
| Resolver replies | **7 queries + 7 NOERROR** |
| Network causality | post-burst destinations also existed pre-burst |
| Recurrence | no second frozen-pattern detection window |
| Final exercise context | authorized DNSentinel training environment |
| IR result | **AUTHORIZED CONTROLLED EXERCISE ACTIVITY — CONTROLLED CONTAINMENT VALIDATED** |
| Response | wildcard RPZ |
| Sinkhole | `10.50.30.30` |
| Verification | victim answer + Splunk `rpz: applied` |
| Recovery | real bad-RPZ failure recovered cleanly |
| Safe reset | normal authoritative resolution restored |

## 🔁 Response Lifecycle

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
    %% ROW 1 · VALIDATE + PREPARE
    %% =====================================================
    subgraph ROW1[" "]
        direction LR

        A["📨 01 · SOC<br/>HANDOFF"]

        B["🔎 02 · INDEPENDENT<br/>DNS VALIDATION"]

        C["🌐 03–04 · CAUSALITY<br/>Network Challenge<br/>+ AWS Context"]

        D["🔁 05–06 · PRECHECK<br/>Recurrence Check<br/>+ RPZ Precheck"]

        A ==> B ==> C ==> D
    end


    %% =====================================================
    %% ROW 2 · APPROVE + RESPOND + VERIFY
    %% =====================================================
    subgraph ROW2[" "]
        direction LR

        E["👤 07 · HUMAN<br/>APPROVAL"]

        F["⚙️ 08 · FIRST<br/>ACTIVATION"]

        G["🧩 09–10 · RECOVER<br/>Troubleshoot<br/>+ Correct RPZ"]

        H["✅ 11–12 · PROVE + RESET<br/>Victim + Splunk Proof<br/>+ Safe Reset"]

        E ==> F ==> G ==> H
    end


    %% =====================================================
    %% KEEP BOTH ROWS COMPACT
    %% =====================================================
    ROW1 ==> ROW2


    %% =====================================================
    %% PREMIUM GLOSSY COLORS
    %% =====================================================
    classDef handoff fill:#172554,stroke:#60a5fa,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef dns fill:#075985,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef context fill:#312e81,stroke:#a78bfa,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef precheck fill:#713f12,stroke:#fbbf24,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef approval fill:#14532d,stroke:#4ade80,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef activation fill:#4c1d95,stroke:#e879f9,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef recover fill:#9a3412,stroke:#fb923c,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef proof fill:#065f46,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:32px,font-weight:bold;


    %% =====================================================
    %% APPLY STYLES
    %% =====================================================
    class A handoff;
    class B dns;
    class C context;
    class D precheck;

    class E approval;
    class F activation;
    class G recover;
    class H proof;


    %% =====================================================
    %% GLOSSY ROW PANELS
    %% =====================================================
    style ROW1 fill:#06131d,stroke:#38bdf8,stroke-width:3px

    style ROW2 fill:#0b130d,stroke:#4ade80,stroke-width:3px


    %% =====================================================
    %% BRIGHT CONNECTORS
    %% =====================================================
    linkStyle default stroke:#f8fafc,stroke-width:6px;
```

## 🖼️ IR Evidence Highlights

<table>
<tr>
<td width="33%"><img src="evidence/S04-IR-03-independent-dns-query-reply-validation.png" alt="Independent DNS validation"><br/><sub><b>E03:</b> seven-query/seven-NOERROR behavior independently reproduced.</sub></td>
<td width="33%"><img src="evidence/S04-IR-06-preburst-destination-baseline.png" alt="Preburst baseline"><br/><sub><b>E06:</b> post-burst HTTPS destinations already existed before the DNS burst.</sub></td>
<td width="33%"><img src="evidence/S04-IR-11-rpz-precheck-safe-disabled.png" alt="RPZ precheck"><br/><sub><b>E11:</b> response control started in a safe non-enforcing state.</sub></td>
</tr>
<tr>
<td width="33%"><img src="evidence/S04-IR-19-correct-rpz-activation-resolver-logs.png" alt="Correct RPZ activation"><br/><sub><b>E19:</b> corrected policy loaded after recovery.</sub></td>
<td width="33%"><img src="evidence/S04-IR-20-containment-victim-sinkhole-answer.png" alt="Victim sinkhole"><br/><sub><b>E20:</b> victim received <code>10.50.30.30</code>.</sub></td>
<td width="33%"><img src="evidence/S04-IR-23-safe-reset-victim-normal-answer.png" alt="Safe reset"><br/><sub><b>E23:</b> normal authoritative resolution returned after reset.</sub></td>
</tr>
</table>

## 🗂️ Start Here

- [`INCIDENT-RESPONSE.md`](INCIDENT-RESPONSE.md) — flagship response story
- [`IR-FINAL-REPORT.md`](IR-FINAL-REPORT.md) — formal closeout
- [`TIMELINE.md`](TIMELINE.md) — IR timeline
- [`LESSONS-LEARNED.md`](LESSONS-LEARNED.md) — response/recovery lessons
- [`IR-COMMAND-LEDGER.md`](IR-COMMAND-LEDGER.md) — clean search/action index
- [`spl/README.md`](spl/README.md) — independent validation search lifecycle
- [`shell/README.md`](shell/README.md) — RPZ/recovery/reset path
- [`evidence/README.md`](evidence/README.md) — E01–E23 evidence portal

> **Response success was not “the service restarted.”** It was victim proof + resolver proof + Splunk proof + safe reset.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 IR Story](INCIDENT-RESPONSE.md) · [📋 Final Report](IR-FINAL-REPORT.md) · [🧾 Evidence](evidence/README.md)

<br/>

**Validate independently. Change deliberately. Verify behavior. Restore safely.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
