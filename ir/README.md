<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=190&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Incident%20Response%20%26%20Defender%20Workspace&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Musfira%20%C2%B7%20Independent%20Validation%20%E2%86%92%20RPZ%20%E2%86%92%20Verification%20%E2%86%92%20Safe%20Reset&descSize=15&descAlignY=61&descColor=14B8A6" width="100%" alt="🛡️ Incident Response & Defender Workspace" />

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
flowchart LR
    A["📨 SOC Handoff"] --> B["🔎 Independent DNS Validation"]
    B --> C["🌐 Network Causality Challenge"]
    C --> D["☁️ AWS Change Context"]
    D --> E["🔁 Recurrence Check"]
    E --> F["🛡️ RPZ Precheck"]
    F --> G["👤 Human Approval"]
    G --> H["⚙️ First Activation"]
    H --> I["🧩 Troubleshoot / Recover"]
    I --> J["🎯 Correct RPZ"]
    J --> K["✅ Victim + Splunk Proof"]
    K --> L["♻️ Safe Reset"]
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
