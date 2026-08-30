<a id="top"></a>
# Scenario 04 — Detection Engineering Plan

**Owner:** Abdul-Rehman  
**State:** Ready to begin  
**Dependency:** Scenario 04 infrastructure gate passed  
**Primary MITRE ATT&CK:** `T1071.004 — Application Layer Protocol: DNS`

This is the next implementation phase. It intentionally stops before the official information-separated exercise.

## 1. Pre-flight / data-quality gate

Before writing detection logic:

- confirm `dns-soc-victim01` still uses `10.50.30.10`;
- confirm `dns-soc-resolver01` / Unbound is healthy;
- confirm `dns-tunnel-auth01` public address and delegation are still valid;
- confirm a fresh child name reaches BIND;
- confirm Unbound resolver events still arrive in `index=dns_soc_dns`;
- identify the **actual current field names** for client, qname, qtype, rcode and timing;
- record the exact time range used for the engineering baseline.

Do not build the rule around assumed fields.

## 2. Normal baseline

Measure normal victim DNS without tunnel-validation traffic.

At minimum record:

- queries per minute;
- unique qnames per minute;
- unique parent domains;
- qtype mix;
- rcode mix;
- full qname length distribution;
- first/longest label length distribution;
- ordinary inter-arrival timing;
- legitimate long/structured qnames already present in the lab.

Preserve the final search as `spl/baseline.spl` only after the fields are validated.

## 3. Feature engineering

Build readable SPL fields that explain the behavior. Candidate features:

```text
qname_length
first_label_length
max_label_length
label_count
digit_ratio
unique_qnames
unique_child_labels
queries_per_minute
parent_domain_concentration
average_interarrival_time
qtype_diversity
rcode_distribution
optional_entropy
```

Entropy is optional. A detection should remain understandable without turning the scenario into a black-box score.

## 4. Threshold-free hunting

Use the baseline to inspect distributions before deciding what is abnormal.

Questions:

- Which clients generate the longest labels naturally?
- How many unique child labels are normal in one minute / five minutes?
- Which parent domains legitimately concentrate many unique names?
- Are TXT queries already common or rare?
- What normal applications create encoded-looking labels?

Preserve the useful analyst pivots in `spl/hunting.spl`.

## 5. Small controlled engineering positive

Use a **small, clearly tagged, synthetic engineering test** — not the official exercise — to prove the candidate analytics can see:

- fresh unique labels;
- longer encoded-looking structure;
- repeated same parent domain;
- known query timing;
- qtype behavior actually planned for the scenario.

The test must stay non-sensitive and low volume. Its only purpose is detection validation.

## 6. Benign lookalike testing

Deliberately test legitimate/benign cases that can resemble tunneling:

- long CDN/cloud hostnames;
- normal tracking/telemetry-style labels if present;
- software/update domains;
- ordinary DNS bursts;
- legitimate TXT lookups if they occur.

Record what would have produced false positives and why the final rule excludes or tolerates it.

## 7. Detection v1.0

The final rule should combine multiple signals. A conceptual shape is:

```text
unusual label/qname structure
    +
high unique-child activity
    +
concentration under one parent
    +
abnormal short-window frequency/timing
    +
known client context
```

Do **not** freeze arbitrary numeric thresholds before the baseline and lookalike tests.

Save the final readable search as `spl/detection.spl`.

Document:

- hypothesis;
- required data;
- SPL assumptions;
- thresholds and why they were chosen;
- known false positives;
- severity rationale;
- MITRE mapping;
- analyst next steps.

## 8. Validation search

Create `spl/validation.spl` that compares:

- normal baseline;
- positive engineering traffic;
- benign lookalikes.

Acceptance is not “the alert fired once.” The rule should remain explainable and useful across those three classes.

## 9. Dashboard Studio

Build the dashboard only after the feature fields are stable.

Recommended panels:

- total DNS queries;
- unique qnames / unique tunnel children;
- long-label count;
- qname / label-length distribution;
- query types;
- response codes;
- active clients;
- queries/minute trend;
- top parent domains by unique children;
- sample suspicious qnames;
- raw-event drilldown.

Later, add before/after containment panels only after IR actually performs a response.

## 10. Scheduled alert

Freeze the final schedule/window using observed ingestion delay and test behavior.

The alert payload should carry enough evidence for the SOC Analyst to investigate without trusting a one-line verdict:

```text
first_seen
last_seen
client
query_count
unique_qnames
unique_child_labels
length metrics
qtypes
rcodes
parent domain
sample qnames
severity/rationale
MITRE T1071.004
raw-event drilldown context
```

## 11. Scenario AI profile

Only after the detection fields are frozen:

```text
Detection v1.0
   -> structured webhook payload
   -> shared dns-soc-ai-bridge
   -> dns_soc_ai
   -> human SOC validation
```

The AI summary is supporting context, never the security decision.

## 12. Freeze gate before official execution

Before Sonia starts the official run, record:

- exact Detection v1.0 SPL;
- dashboard version/export;
- alert schedule/window;
- severity;
- MITRE mapping;
- known false positives;
- validation evidence;
- scenario AI profile/payload schema;
- UTC freeze timestamp.

After this gate, do not tune the official detection using knowledge of the private ground truth.

## Deliverables

Expected Detection Engineering artifacts:

```text
spl/baseline.spl
spl/hunting.spl
spl/detection.spl
spl/validation.spl
dashboard/<tested export>
ai/<scenario profile or payload map>
evidence/<tuning and validation notes>
screenshots/<detection/dashboard/alert validation evidence>
```

No empty placeholder should be converted into a fake completed artifact before the work exists.


---

[🏠 Scenario Home](README.md) · [🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [⬆ Back to top](#top)
