<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=24,20,14,7,2&height=128&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Scenario%2004%20%E2%80%94%20IR%20Timeline&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20Incident%20Response&descSize=13&descAlignY=68&descColor=14B8A6" width="100%" alt="Scenario 04 — IR Timeline" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Incident_Response-14B8A6?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🕒 Scenario 04 — IR Timeline

| UTC / stage | Event | IR meaning |
|---|---|---|
| 2026-09-02 16:37:19.215675 | First suspicious query | Start of seven-query burst |
| 2026-09-02 16:37:31.370200 | Last suspicious query | Burst ends after ~12 seconds |
| 2026-09-02 16:39:01 | Production alert | Frozen Detection v1.0 fires |
| 2026-09-02 16:39:21.727239 | AI processed | Advisory evidence available |
| IR endpoint check | 0 victim-host events | No process/user attribution telemetry |
| IR DNS validation | 14 Unbound events | 7 queries + 7 NOERROR replies reproduced |
| IR VPC review | HTTPS after burst | Needed causal challenge |
| IR pre-burst baseline | Same destinations already active | DNS→HTTPS causal claim rejected |
| IR recurrence search | No second frozen-pattern window | No recurrence in reviewed period |
| IR RPZ pre-check | Enforcement disabled | Safe starting state |
| First activation | Service active, victim answer unchanged | Policy not proven effective |
| Troubleshooting | Trailing-dot rule broke RPZ parsing | Backups required for clean recovery |
| Recovery | Original RPZ restored | Resolver healthy / normal answer |
| Correct activation | No-trailing-dot wildcard loaded | Policy active |
| Containment proof | Victim → `10.50.30.30` | DNS behavior changed |
| Splunk proof | `rpz: applied [dns-soc-rpz]` | Runtime control independently logged |
| Safe reset | Original RPZ restored | Normal authoritative answer returned |

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
