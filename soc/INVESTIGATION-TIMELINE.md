<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=7,12,18,24,28&height=128&section=header&text=%F0%9F%94%8E%20Scenario%2004%20%E2%80%94%20SOC%20Investigation%20Timeline&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="Scenario 04 — SOC Investigation Timeline" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🕒 Scenario 04 — SOC Investigation Timeline

| UTC | Event | Analyst meaning |
|---|---|---|
| 2026-09-02 16:37:19.215675 | First suspicious A query | Start of seven-query burst |
| 2026-09-02 16:37:31.370200 | Last suspicious query | Burst ends after ~12 seconds |
| 2026-09-02 16:39:01 | Official alert | Production Detection v1.0 fired |
| 2026-09-02 16:39:21.727239 | AI processed | Advisory context available after human evidence already existed |
| 2026-09-02 16:49:50.201643 | Later `ns1.tunnel...` A/AAAA activity | Structurally different; did not reproduce frozen pattern |
| SOC baseline phase | 3,236 normal query rows reviewed | Legitimate long labels confirmed in AWS service traffic |
| SOC scope phase | One client/parent/window matched | Pattern isolated in reviewed dataset |
| SOC decision | INCONCLUSIVE — ESCALATION WARRANTED | Suspicious behavior proven; attribution/authorization unresolved |
| SOC handoff | Defender-only evidence sent to Musfira | Operator ground truth remained separated |

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
