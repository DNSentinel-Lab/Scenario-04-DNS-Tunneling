<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=24,20,14,7,2&height=128&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Scenario%2004%20%E2%80%94%20Incident%20Response%20Lessons&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20Incident%20Response&descSize=13&descAlignY=68&descColor=14B8A6" width="100%" alt="Scenario 04 — Incident Response Lessons" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Incident_Response-14B8A6?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🛡️ Scenario 04 — Incident Response Lessons

## 🧾 1. Missing endpoint telemetry is an evidence limitation, not a conclusion

A zero-result victim-host search did not prove no process ran. It proved that the reviewed Splunk data could not provide process/user attribution.

## 📌 2. Timing does not prove causation

HTTPS flows appeared after the DNS burst, but the same destinations existed before it. Musfira rejected a causal C2 claim instead of treating sequence as proof.

## 📌 3. `active` service does not mean active security policy

The first RPZ activation left Unbound active while the victim still received the normal answer.

**Lesson:** verify security controls behaviorally.

## 🤖 4. Backups are part of containment engineering

A trailing-dot experiment caused RPZ parsing failure and a temporary resolver outage. Exact backups enabled clean recovery.

## 🛡️ 5. Response needs a reset plan before execution

The control was temporary. Safe closeout required restoring the original RPZ state and independently proving normal DNS returned.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
