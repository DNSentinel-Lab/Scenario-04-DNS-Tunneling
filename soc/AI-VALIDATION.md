<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=7,12,18,24,28&height=128&section=header&text=%F0%9F%94%8E%20Scenario%2004%20%E2%80%94%20AI%20Validation&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="Scenario 04 — AI Validation" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🤖 Scenario 04 — AI Validation

**Scenario ID:** `scenario-04-dns-tunneling`  
**AI profile:** `dns_tunneling_v1`  
**Processed:** `2026-09-02 16:39:21.727239 UTC`  
**Human hypothesis formed before AI:** Yes  
**human_validation_required:** `true`  
**Formal result:** **CORRECT**

| AI claim | Human validation | Basis |
|---|---|---|
| Client `10.50.30.20` | Correct | Raw Unbound query rows |
| Parent `tunnel.soclab.abdul4rehman215.tech` | Correct | Raw qnames / alert |
| Seven A queries | Correct | Query-only suspicious window |
| Seven unique qnames / child labels | Correct | Independent stats reproduction |
| ~12-second activity | Correct | First/last raw timestamps |
| Seven long labels | Correct | `long_label_count=7` |
| Structured `s04-01`…`s04-07` suggests sequencing | Reasonable inference | Visible label structure; semantics not decoded |
| Tunneling-like hypothesis | Correct as a hypothesis | Combined DNS behavior |
| T1071.004 / Command & Control context | Correct | Frozen mapping |
| Evidence does not prove malware/transfer/intent | Correct | Defender evidence limits |
| Human validation required | Correct | Explicit event field |

## 📌 Important nuance

The AI correctly said DNS reply context was not part of the evidence supplied to it. Lubaba later filled that gap by independently reviewing raw Unbound reply rows and proving 7/7 `NOERROR` replies.

That is the intended model:

```text
AI summarizes supplied evidence
human analyst expands the case
human analyst validates the AI
human analyst owns the decision
```

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
