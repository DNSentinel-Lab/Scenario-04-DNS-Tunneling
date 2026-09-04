# Scenario 04 — SOC Troubleshooting Notes

Only reusable analyst lessons are preserved here.

## 1. Trailing-dot DNS names hid the namespace

The first suffix search returned zero even though Unbound was healthy. Raw qnames were fully-qualified with a trailing `.`.

**Fix:** normalize with `rtrim(qname,".")` before filtering.

**Lesson:** inspect protocol field formatting before declaring telemetry missing.

## 2. A 24-hour aggregate is not a one-minute detection

The namespace aggregate contained enough suspicious values to look like a detection result, but Detection v1.0 evaluates one-minute windows.

**Fix:** reproduce `bin _time span=1m` before applying thresholds.

**Lesson:** validate production grouping semantics, not just numeric thresholds.

## 3. Query/reply pairs can double-count DNS

Seven DNS requests appeared as fourteen Unbound events when query/reply rows were mixed.

**Fix:** count `event_type=query`; inspect `event_type=reply` separately.

## 4. Benign DNS can contain long labels

AWS service names included first labels longer than 16, including a normal maximum of 38.

**Lesson:** long label alone is weak. The useful signal was the full combined one-minute behavior.

## 5. AI field filters returned zero before raw JSON was inspected

The AI event existed, but attempted top-level field filters did not find it reliably.

**Fix:** prove `index=dns_soc_ai` health and inspect `_raw` / nested JSON before declaring pipeline failure.
