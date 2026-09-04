<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=7,12,18,24,28&height=190&section=header&text=%F0%9F%94%8E%20SOC%20Analyst%20%26%20Threat%20Hunting%20Workspace&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20Lubaba&descSize=15&descAlignY=61&descColor=22D3EE" width="100%" alt="🔎 SOC Analyst & Threat Hunting Workspace" />

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
flowchart LR
    A["📡 Telemetry Readiness"] --> B["🔍 Namespace Normalization"]
    B --> C["🧬 Raw Label Structure"]
    C --> D["🧠 Reproduce v1.0"]
    D --> E["📨 Query / Reply Context"]
    E --> F["📊 Baseline"]
    F --> G["🎯 Scope"]
    G --> H["🧠 Human Hypothesis"]
    H --> I["🤖 AI Validation"]
    I --> J["🧭 5W1H"]
    J --> K["📨 IR Handoff"]
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
