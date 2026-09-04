<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=128&section=header&text=%F0%9F%94%8E%20Scenario%2004%20Scheduled%20Alert&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20SPL%20Engineering&descSize=13&descAlignY=68&descColor=14B8A6" width="100%" alt="Scenario 04 Scheduled Alert" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-SPL_Engineering-14B8A6?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🚨 Scenario 04 Scheduled Alert

**Detection:** `Scenario 04 - Possible DNS Tunneling Behavior`  
**Version:** `1.0`  
**Severity:** Medium  
**Status:** ✅ Validated and frozen

## 📌 Schedule

```text
Alert type: Scheduled
Cron: * * * * *
Earliest: -10m@m
Latest: -1m@m
Trigger condition: Number of Results > 0
Trigger mode: Once
Suppression: 10 minutes
```

### 📌 Why this window exists

Current Unbound events were arriving near real-time during event-level inspection, but the measured timing sample also contained older delayed/backlogged events reaching roughly 8–9 minutes. The final schedule therefore keeps a conservative 10-minute lookback.

`latest=-1m@m` avoids evaluating a minute that is still being formed.

## 📌 Actions

1. Add to Triggered Alerts.
2. Webhook → `http://dns-soc-ai-bridge:5000/splunk-webhook`.

The webhook reuses shared project infrastructure. No API key, HEC token or other secret is stored in this repository.

## ✅ Result contract

The scheduled result includes the analyst evidence plus bridge-compatible fields:

```text
alert_id
alert_name
scenario
severity
event_time
source
evidence_json
human_validation_required
```

Machine-readable example: [`../evidence/detection-engineering/scheduled-alert-result.csv`](../evidence/detection-engineering/scheduled-alert-result.csv)

## ✅ Operational validation

- automatic trigger: PASS;
- analyst evidence row: PASS;
- raw-event drilldown: PASS;
- webhook → OpenAI → HEC return: PASS;
- 10-minute suppression: PASS;
- human-validation boundary: PASS.

> The official exercise must use this frozen schedule/search unless a genuine operational failure requires an explicitly recorded emergency correction.

---

[🏠 Scenario Home](../README.md) · [🔎 Detection SPL](detection.spl) · [🔒 Freeze Record](../detection-engineering/FREEZE-RECORD.md) · [⬆ Back to top](#top)

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · 

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
