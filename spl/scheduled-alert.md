<a id="top"></a>

> 🧭 [Scenario 04](../README.md) › [SPL Workspace](README.md) › **Scheduled Alert**

# Scenario 04 Scheduled Alert

**Detection:** `Scenario 04 - Possible DNS Tunneling Behavior`  
**Version:** `1.0`  
**Severity:** Medium  
**Status:** ✅ Validated and frozen

## Schedule

```text
Alert type: Scheduled
Cron: * * * * *
Earliest: -10m@m
Latest: -1m@m
Trigger condition: Number of Results > 0
Trigger mode: Once
Suppression: 10 minutes
```

### Why this window exists

Current Unbound events were arriving near real-time during event-level inspection, but the measured timing sample also contained older delayed/backlogged events reaching roughly 8–9 minutes. The final schedule therefore keeps a conservative 10-minute lookback.

`latest=-1m@m` avoids evaluating a minute that is still being formed.

## Actions

1. Add to Triggered Alerts.
2. Webhook → `http://dns-soc-ai-bridge:5000/splunk-webhook`.

The webhook reuses shared project infrastructure. No API key, HEC token or other secret is stored in this repository.

## Result contract

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

## Operational validation

- automatic trigger: PASS;
- analyst evidence row: PASS;
- raw-event drilldown: PASS;
- webhook → OpenAI → HEC return: PASS;
- 10-minute suppression: PASS;
- human-validation boundary: PASS.

> The official exercise must use this frozen schedule/search unless a genuine operational failure requires an explicitly recorded emergency correction.

---

[🏠 Scenario Home](../README.md) · [🔎 Detection SPL](detection.spl) · [🔒 Freeze Record](../detection-engineering/FREEZE-RECORD.md) · [⬆ Back to top](#top)
