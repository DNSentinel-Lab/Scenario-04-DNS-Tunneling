<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,18,24,30&height=128&section=header&text=%F0%9F%8E%AD%20Scenario%2004%20%E2%80%94%20Realistic%20Information-Separated%20Exercise%20Protocol&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20Exercise%20Control&descSize=13&descAlignY=68&descColor=A78BFA" width="100%" alt="Scenario 04 — Realistic Information-Separated Exercise Protocol" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Exercise_Control-A78BFA?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎭 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 📌 Scenario 04 — Realistic Information-Separated Exercise Protocol

Scenario 04 was designed to make defender conclusions emerge from evidence rather than from team knowledge of the planned activity.

## 👥 Role separation

```text
Sonia / private operator
    └─ exact client, message, qnames, timing, BIND ground truth

Lubaba / SOC
    └─ alert, Unbound, dashboard, baseline, AI

Musfira / IR
    └─ SOC handoff + independent DNS/AWS evidence + response controls
```

## 📌 Reveal gate

Private operator facts were withheld until:

```text
SOC disposition locked
→ SOC→IR handoff complete
→ IR independent validation complete
→ response decision complete
→ containment proof complete
→ safe reset complete
→ final IR conclusion locked
```

Only then were the generated qnames, source message and authoritative BIND receipt used for cross-role comparison.

## 🧠 Frozen-control rule

Detection v1.0, scheduled timing, dashboard semantics and AI evidence contract were fixed before the official activity and were not altered to fit the observed outcome.

## 📌 Why this matters

The scenario can therefore distinguish:

- what the operator **actually did**;
- what the resolver **actually saw**;
- what the detection **surfaced**;
- what AI **summarized**;
- what SOC **could responsibly conclude**;
- what IR **could independently prove and change**.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎭 Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
