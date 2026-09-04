<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=24,20,14,7,2&height=154&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Scenario%2004%20%E2%80%94%20IR%20Final%20Report&fontSize=30&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20Incident%20Response&descSize=13&descAlignY=68&descColor=14B8A6" width="100%" alt="Scenario 04 — IR Final Report" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Incident_Response-14B8A6?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🏁 Scenario 04 — IR Final Report

**Incident Responder / Defender:** Musfira  
**SOC handoff:** `INCONCLUSIVE — ESCALATION WARRANTED / High confidence`  
**Final exercise context:** Authorized DNSentinel study/training environment  
**IR result:** **AUTHORIZED CONTROLLED EXERCISE ACTIVITY — CONTROLLED CONTAINMENT VALIDATED**

## 📌 Independently proven

- 7 suspicious query events + 7 NOERROR reply events from `10.50.30.20`;
- parent `tunnel.soclab.abdul4rehman215.tech`;
- no victim endpoint telemetry suitable for process/user attribution;
- post-burst HTTPS destinations were already active before the DNS burst;
- no later frozen Detection v1.0 recurrence in the reviewed period;
- temporary RPZ policy could redirect the Scenario 04 namespace to `10.50.30.30`;
- Splunk recorded runtime RPZ application;
- pre-change resolver state could be restored safely.

## 📌 Not proven

- malware;
- endpoint compromise;
- payload contents;
- successful exfiltration;
- attacker identity;
- causal link between DNS and HTTPS flows.

## 🛡️ Response

```text
*.tunnel.soclab.abdul4rehman215.tech A 10.50.30.30
```

Victim proof and resolver telemetry both validated the change.

## ♻️ Reset

The pre-change RPZ files were restored, `unbound-checkconf` passed, Unbound was healthy, and normal authoritative resolution returned.

## 📌 Closure

The response exercise is closed with containment and safe reset both verified. Ground truth comparison is documented in [`../exercise/final-comparison.md`](../exercise/final-comparison.md).

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
