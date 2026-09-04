<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=128&section=header&text=%F0%9F%A7%A0%20Scenario%2004%20%E2%80%94%20Detection%20Engineering%20Freeze%20Record&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20Detection%20Engineering&descSize=13&descAlignY=68&descColor=14B8A6" width="100%" alt="Scenario 04 — Detection Engineering Freeze Record" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Detection_Engineering-14B8A6?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧠 Scenario 04 — Detection Engineering Freeze Record

**Freeze state:** ✅ **SOC-ready before official exercise**  
**Detection Engineer / AI Integrator:** [Abdul-Rehman](https://github.com/abdul4rehman215)

| Item | Frozen value |
|---|---|
| Detection | `Scenario 04 - Possible DNS Tunneling Behavior` |
| Detection version | `1.0` |
| Scenario ID | `scenario-04-dns-tunneling` |
| AI profile | `dns_tunneling_v1` |
| MITRE ATT&CK | `T1071.004 — Application Layer Protocol: DNS` |
| Conditional `T1572` | Not claimed |
| Severity | Medium |
| Primary telemetry | `index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns` |
| Behavior window | 1 minute |
| Unique-child condition | `>= 5` |
| Long-label count | `>= 5` |
| Long-label definition | `first_label_length > 16` |
| Scheduled cron | `* * * * *` |
| Scheduled lookback | `earliest=-10m@m latest=-1m@m` |
| Trigger | Number of results > 0 / Once |
| Suppression | 10 minutes |
| Trigger actions | Triggered Alerts + shared AI webhook |
| AI return index | `dns_soc_ai` |
| Human validation | Required |

## 📌 Frozen behavior

```text
unique_child_labels >= 5
AND long_label_count >= 5
AND max_first_label_length > 16
```

The thresholds were derived from the current Scenario 04 baseline and controlled validation, not copied from another scenario.

## 📌 Known limitation

Low-and-slow tunneling-like behavior that stays inside normal short-window child diversity and first-label length may evade Detection v1.0.

## ⚖️ Change-control boundary

During the official exercise, do not change:

- Detection v1.0 thresholds;
- detection search semantics;
- scheduled timing/lookback;
- AI evidence-contract meaning;
- Dashboard Studio investigation semantics.

A genuine operational failure may justify an emergency correction only if the change is explicitly recorded. The frozen capability must otherwise be investigated independently by the SOC and IR roles.

> The available source material proves that the freeze occurred before the official Scenario 04 exercise. It does not provide an authoritative UTC freeze timestamp, so this record deliberately does not invent one.

---

[🏠 Scenario Home](../README.md) · [🛠️ Engineering Story](DETECTION-ENGINEERING.md) · [✅ Validation](detection-engineering-validation.md) · [⬆ Back to top](#top)

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · 

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
