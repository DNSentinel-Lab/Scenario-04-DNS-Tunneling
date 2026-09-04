<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=7,12,18,24,28&height=128&section=header&text=%F0%9F%94%8E%20Scenario%2004%20%E2%80%94%20SOC%20Analyst%20Playbook&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="Scenario 04 — SOC Analyst Playbook" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 04 — SOC Analyst Playbook

This playbook captures the investigation method used in the official case without embedding private operator ground truth.

## 🔎 Investigation flow

```text
telemetry readiness
→ alert preservation
→ raw Unbound validation
→ qname / first-label structure
→ one-minute detector reproduction
→ query/reply context
→ UTC timeline
→ baseline / false-positive challenge
→ client/environment scope
→ human hypothesis
→ AI validation
→ 5W1H
→ disposition
→ SOC→IR handoff
```

## 📌 TP / FP / inconclusive model

| Disposition | Meaning |
|---|---|
| **True positive — suspicious / likely unauthorized** | Detection correctly identified abnormal tunneling-like behavior and independent context supports unauthorized activity |
| **Authorized / benign true positive** | Detection correctly identified its target behavior, but legitimate/approved context explains it |
| **False positive** | Frozen rule misclassified ordinary behavior |
| **Inconclusive — escalation warranted** | Abnormal behavior is real, but available evidence cannot responsibly establish intent/process/payload/authorization |

## 🧾 Evidence rules

- Count `event_type=query` for behavior.
- Use reply events for `rcode`, response time, cache and response size.
- Normalize FQDN trailing dots before suffix filtering.
- Reproduce the detector at the same one-minute grouping used in production.
- Compare the **combined** detector against normal traffic; do not treat one long label as malicious.
- Form the human hypothesis before AI.
- Treat AI as advisory and validate each important claim.
- Use UTC consistently.
- Keep FACT separate from INFERENCE.

## 📌 Escalation package

A strong IR handoff should include:

- alert identity and exact UTC window;
- resolver-visible client and resolver;
- parent domain and representative qnames;
- query count, unique qnames/children, length metrics;
- qtypes and reply/rcode context;
- baseline comparison;
- client/environment scope;
- AI validation result;
- MITRE / Kill Chain context;
- 5W1H;
- disposition and confidence;
- explicit attribution limits;
- unanswered IR questions.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
