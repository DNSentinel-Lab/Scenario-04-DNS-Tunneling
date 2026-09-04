<a id="top"></a>
# Scenario 04 — Detection Engineering Validation

**Detection Engineer:** [Abdul-Rehman](https://github.com/abdul4rehman215)  
**Result:** ✅ **PASS — Detection Engineering complete / SOC-ready**

The acceptance goal was broader than “the search fired.” The same frozen behavior had to survive baseline review, a controlled positive, a benign challenge, automatic scheduling, raw-event recovery and the shared AI evidence contract.

## Acceptance matrix

| Gate | Expected | Actual | Evidence | Result |
|---|---|---|---|---|
| Trusted resolver telemetry | Live client-attributed Unbound data | `10.50.30.20` and expected fields present | [`01`](../screenshots/detection-engineering/01-resolver-field-validation.png) + [CSV](../evidence/detection-engineering/resolver-field-validation-sample.csv) | ✅ PASS |
| Ingestion timing | Current pipeline understood | Current events ~0.03–0.8 s; older backlog/outliers identified | [`02`](../screenshots/detection-engineering/02-dns-ingestion-latency.png) | ✅ PASS |
| Normal baseline | Measure before thresholds | Clean normal qname max 43; first-label max 16; normal parent/window children ≤4 | [`03`](../screenshots/detection-engineering/03-normal-dns-baseline.png) | ✅ PASS |
| Feature engineering | Explainable label/parent features | First-label length + unique-child behavior selected | [`04`](../screenshots/detection-engineering/04-tunneling-feature-hunt.png) | ✅ PASS |
| Dashboard Studio | Analyst investigation surface | 11-panel view built and bindings QA-checked | [`05`](../screenshots/detection-engineering/05-dns-tunneling-investigation-dashboard.png) | ✅ PASS |
| Controlled positive | Fresh long children should detect | 5- and 7-child positive windows detected | [`06`](../screenshots/detection-engineering/06-controlled-positive-test-traffic.png), [`07`](../screenshots/detection-engineering/07-controlled-positive-detection.png) | ✅ PASS |
| Benign lookalike | Repeated long single child should not create new result | No new candidate detection row | [`08`](../screenshots/detection-engineering/08-benign-lookalike-no-detection.png) | ✅ PASS |
| Detection v1.0 | Frozen evidence-based rule | `>=5` unique children, `>=5` long labels, max first label `>16` | [`09`](../screenshots/detection-engineering/09-final-detection-v1-validation.png) | ✅ PASS |
| Scheduled execution | Automatic trigger | Triggered independently of manual search | [`10`](../screenshots/detection-engineering/10-scheduled-alert-triggered.png) | ✅ PASS |
| Analyst evidence | One useful result row | Evidence + bridge contract exported | [`11`](../screenshots/detection-engineering/11-analyst-evidence-row.png) + [CSV](../evidence/detection-engineering/scheduled-alert-result.csv) | ✅ PASS |
| Raw-event drilldown | Underlying DNS recoverable | Query/reply pairs recovered | [`12`](../screenshots/detection-engineering/12-raw-event-drilldown.png) | ✅ PASS |
| AI return | Scenario 04 result returns through HEC | Event indexed in `dns_soc_ai` | [`13`](../screenshots/detection-engineering/13-ai-triage-indexed.png) | ✅ PASS |
| AI vs evidence | No numerical/context drift | AI matched client/query/label/qtype/MITRE facts and preserved uncertainty | [`13b`](../screenshots/detection-engineering/13b-ai-vs-raw-evidence-validation.png) | ✅ PASS |
| Human decision boundary | AI remains advisory | `human_validation_required=true` preserved | AI mapping + indexed event | ✅ PASS |
| Official exercise boundary | Detection frozen before live exercise | At freeze time, official operator/SOC/IR had not started | [`FREEZE-RECORD.md`](FREEZE-RECORD.md) | ✅ PASS |

## Positive validation

Twelve synthetic 32-hex-character child labels were generated under the controlled tunnel zone. They crossed two one-minute buckets:

```text
window 1 → 5 queries / 5 unique children / first-label length 32
window 2 → 7 queries / 7 unique children / first-label length 32
```

Both windows satisfied Detection v1.0.

## Benign validation

One long fixed label was queried 12 times. It had long-label and repeated-query characteristics but only one unique child, so it did not satisfy the final uniqueness condition.

This is the rule's core discrimination:

```text
fresh long children concentrated under one parent → detection lead
one long child repeated many times                → below final rule
```

## Scheduled / AI validation

The final alert uses:

```text
cron: * * * * *
earliest: -10m@m
latest: -1m@m
suppression: 10 minutes
```

The alert produced an analyst evidence row, sent bridge-compatible JSON through the shared webhook, returned AI context through HEC into `dns_soc_ai`, and preserved the requirement for human validation.

## Final acceptance

**PASS — Detection v1.0, dashboard, scheduled alert, raw-event drilldown and Scenario 04 AI evidence mapping were ready before the independent SOC exercise. The official run later used the frozen artifacts unchanged.**

---

[🏠 Scenario Home](../README.md) · [🛠️ Engineering Story](DETECTION-ENGINEERING.md) · [🔒 Freeze](FREEZE-RECORD.md) · [⬆ Back to top](#top)
