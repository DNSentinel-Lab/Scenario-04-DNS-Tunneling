<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=7,12,18,24,28&height=128&section=header&text=%F0%9F%94%8E%20Scenario%2004%20%E2%80%94%20SOC%20Troubleshooting%20Notes&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="Scenario 04 — SOC Troubleshooting Notes" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 04 — SOC Troubleshooting Notes

Only reusable analyst lessons are preserved here.

## 🤖 1. Trailing-dot DNS names hid the namespace

The first suffix search returned zero even though Unbound was healthy. Raw qnames were fully-qualified with a trailing `.`.

**Fix:** normalize with `rtrim(qname,".")` before filtering.

**Lesson:** inspect protocol field formatting before declaring telemetry missing.

## 🧠 2. A 24-hour aggregate is not a one-minute detection

The namespace aggregate contained enough suspicious values to look like a detection result, but Detection v1.0 evaluates one-minute windows.

**Fix:** reproduce `bin _time span=1m` before applying thresholds.

**Lesson:** validate production grouping semantics, not just numeric thresholds.

## 🤖 3. Query/reply pairs can double-count DNS

Seven DNS requests appeared as fourteen Unbound events when query/reply rows were mixed.

**Fix:** count `event_type=query`; inspect `event_type=reply` separately.

## 🤖 4. Benign DNS can contain long labels

AWS service names included first labels longer than 16, including a normal maximum of 38.

**Lesson:** long label alone is weak. The useful signal was the full combined one-minute behavior.

## 🤖 5. AI field filters returned zero before raw JSON was inspected

The AI event existed, but attempted top-level field filters did not find it reliably.

**Fix:** prove `index=dns_soc_ai` health and inspect `_raw` / nested JSON before declaring pipeline failure.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
