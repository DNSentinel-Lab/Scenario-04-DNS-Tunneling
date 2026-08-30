<a id="top"></a>
# Scenario 04 — Detection Engineering Freeze Record

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

## Frozen behavior

```text
unique_child_labels >= 5
AND long_label_count >= 5
AND max_first_label_length > 16
```

The thresholds were derived from the current Scenario 04 baseline and controlled validation, not copied from another scenario.

## Known limitation

Low-and-slow tunneling-like behavior that stays inside normal short-window child diversity and first-label length may evade Detection v1.0.

## Change-control boundary

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
