<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=7,12,18,24,28&height=128&section=header&text=%F0%9F%94%8E%20Scenario%2004%20%E2%80%94%20SOC%20%E2%86%92%20IR%20Handoff&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="Scenario 04 — SOC → IR Handoff" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 04 — SOC → IR Handoff

## 📌 Case

**SOC Analyst / Threat Hunter:** Lubaba  
**IR / Defender:** Musfira  
**SOC Disposition:** **INCONCLUSIVE — ESCALATION WARRANTED**  
**Confidence:** **High**

## 🚨 Alert identity

- Alert: `Scenario 04 - Possible DNS Tunneling Behavior`
- Severity: Medium
- Trigger: `2026-09-02 16:39:01 UTC`

## 📌 Affected systems

- Resolver-visible client: `10.50.30.20 / dns-soc-victim01`
- Defender resolver: `10.50.30.10 / dns-soc-resolver01`
- Parent: `tunnel.soclab.abdul4rehman215.tech`

## 📌 Suspicious window

```text
first query:            2026-09-02 16:37:19.215675 UTC
last query:             2026-09-02 16:37:31.370200 UTC
query_count:            7
unique_qnames:          7
unique_child_labels:    7
long_label_count:       7
max_first_label_length: 27
qtype:                  A
reply_count:            7
rcode:                  NOERROR
```

## 🎯 Baseline / scope

Legitimate long labels existed in AWS service traffic, but no non-Scenario-04 parent reproduced the same combined one-minute frozen behavior in the reviewed 24 hours. The suspicious pattern was isolated to one resolver-visible client, one parent and one matching minute.

## 🤖 AI validation

- `scenario_id=scenario-04-dns-tunneling`
- `ai_profile=dns_tunneling_v1`
- `human_validation_required=true`
- Human validation: **CORRECT**

AI remained appropriately cautious and did not claim proven malware, compromise, exfiltration or confirmed tunnel contents.

## 🤖 MITRE / Kill Chain

- `T1071.004 — Application Layer Protocol: DNS`
- Tactic: Command and Control
- Cyber Kill Chain: Command & Control
- T1572: not claimed

## 🔎 Final SOC assessment

The behavior is genuinely anomalous and consistent with DNS tunneling-like structured DNS activity. It is supported by raw telemetry, the production alert, baseline comparison and scope analysis.

Available defender evidence does **not** establish originating process, payload contents, malware, compromise, successful data transfer, attacker identity, malicious intent or authorization status.

## 📌 Questions for IR

1. Is endpoint/process telemetry available for the victim around `16:37 UTC`?
2. Is approved testing/admin/change context available?
3. Does network telemetry show any communication that can actually be tied to the DNS event?
4. Is the parent namespace expected for this endpoint?
5. Does any additional evidence establish compromise or benign context?
6. Did the behavior recur?
7. Is containment proportionate?
8. If containment is approved, can defender telemetry prove the DNS result changes?

## ⚖️ Information boundary

This handoff contains defender-visible evidence only. Private operator ground truth was not included.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
