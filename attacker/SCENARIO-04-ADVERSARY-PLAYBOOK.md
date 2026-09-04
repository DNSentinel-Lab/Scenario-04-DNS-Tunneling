<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,18,24,30&height=128&section=header&text=%F0%9F%8E%AF%20Scenario%2004%20%E2%80%94%20Adversary%20%2F%20Operator%20Playbook&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20Project%20Lead%20%2F%20Operator&descSize=13&descAlignY=68&descColor=8B5CF6" width="100%" alt="Scenario 04 — Adversary / Operator Playbook" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Project_Lead_%2F_Operator-8B5CF6?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 📌 Scenario 04 — Adversary / Operator Playbook

**Purpose:** reproduce the approved Scenario 04 operator behavior without changing the frozen defender conditions.

## 🎯 Objective

Generate one finite DNS tunneling-like pattern from `dns-soc-victim01` through the ordinary system resolver to the project-owned authoritative namespace.

## 📌 Allowed behavior

- harmless synthetic data only;
- DNS-safe Base32 encoding;
- unique child labels;
- ordinary A lookups;
- fixed target `tunnel.soclab.abdul4rehman215.tech`;
- finite execution;
- private ground-truth preservation.

## 🎯 Explicitly out of scope

- phishing / exploitation;
- credential theft;
- persistence;
- lateral movement;
- malware installation;
- interactive C2 shells;
- scanning/discovery;
- third-party targets;
- changing Detection v1.0 based on defender results.

## 📌 Execution discipline

```text
verify victim/resolver path
→ verify authoritative delegation/BIND
→ confirm Scenario 04 RPZ not enforcing
→ run finite client once
→ confirm process exits
→ recover authoritative receipt
→ preserve private ground truth
→ stop
```

A detector miss is a valid outcome. Do not rerun merely to force a Splunk alert.

## 📌 Information separation

Operator ground truth stays private until SOC and IR decisions are locked. The SOC receives defender telemetry, not operator answers.

## 💡 Final case lesson

In the actual run, the client executed during review. The correct response was preservation and no rerun. This playbook therefore treats **one-time execution integrity** as a core control.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
