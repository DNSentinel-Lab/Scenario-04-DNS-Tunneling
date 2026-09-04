<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,18,24,30&height=128&section=header&text=%F0%9F%8E%AF%20Scenario%2004%20%E2%80%94%20Operator%20Learning%20Journey&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20Project%20Lead%20%2F%20Operator&descSize=13&descAlignY=68&descColor=8B5CF6" width="100%" alt="Scenario 04 — Operator Learning Journey" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Project_Lead_%2F_Operator-8B5CF6?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 📌 Scenario 04 — Operator Learning Journey

Only reusable operational lessons are kept here.

## 📌 1. Preserve an early execution instead of manufacturing a replacement

The client ran once during review. Sonia did not rerun it simply to make the exercise sequence look cleaner. The real session was preserved and documented.

**Lesson:** evidence integrity is stronger than a cosmetically perfect timeline.

## 🧩 2. Confirm host identity before troubleshooting services

BIND checks initially ran on `dns-soc-victim01`, where `named.service` correctly did not exist. Host identity was checked before any architecture change was considered.

**Lesson:** `hostname` is often a better first troubleshooting command than changing a working service.

## 📌 3. Separate client attribution from authoritative receipt

Seven victim qnames produced fourteen BIND records because public recursive resolvers contacted the authoritative server twice per distinct name.

**Lesson:** in this architecture, Unbound answers **who generated the DNS**, while BIND answers **what reached the authority**.

## 🧾 4. Treat unknown evidence honestly

The original shell exit code from the one-time client run was not captured.

**Lesson:** do not reconstruct a value that cannot be proven. `Unknown` is a valid evidence state.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
