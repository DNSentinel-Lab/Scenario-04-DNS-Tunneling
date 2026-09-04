# Scenario 04 — SOC → IR Handoff

## Case

**SOC Analyst / Threat Hunter:** Lubaba  
**IR / Defender:** Musfira  
**SOC Disposition:** **INCONCLUSIVE — ESCALATION WARRANTED**  
**Confidence:** **High**

## Alert identity

- Alert: `Scenario 04 - Possible DNS Tunneling Behavior`
- Severity: Medium
- Trigger: `2026-09-02 16:39:01 UTC`

## Affected systems

- Resolver-visible client: `10.50.30.20 / dns-soc-victim01`
- Defender resolver: `10.50.30.10 / dns-soc-resolver01`
- Parent: `tunnel.soclab.abdul4rehman215.tech`

## Suspicious window

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

## Baseline / scope

Legitimate long labels existed in AWS service traffic, but no non-Scenario-04 parent reproduced the same combined one-minute frozen behavior in the reviewed 24 hours. The suspicious pattern was isolated to one resolver-visible client, one parent and one matching minute.

## AI validation

- `scenario_id=scenario-04-dns-tunneling`
- `ai_profile=dns_tunneling_v1`
- `human_validation_required=true`
- Human validation: **CORRECT**

AI remained appropriately cautious and did not claim proven malware, compromise, exfiltration or confirmed tunnel contents.

## MITRE / Kill Chain

- `T1071.004 — Application Layer Protocol: DNS`
- Tactic: Command and Control
- Cyber Kill Chain: Command & Control
- T1572: not claimed

## Final SOC assessment

The behavior is genuinely anomalous and consistent with DNS tunneling-like structured DNS activity. It is supported by raw telemetry, the production alert, baseline comparison and scope analysis.

Available defender evidence does **not** establish originating process, payload contents, malware, compromise, successful data transfer, attacker identity, malicious intent or authorization status.

## Questions for IR

1. Is endpoint/process telemetry available for the victim around `16:37 UTC`?
2. Is approved testing/admin/change context available?
3. Does network telemetry show any communication that can actually be tied to the DNS event?
4. Is the parent namespace expected for this endpoint?
5. Does any additional evidence establish compromise or benign context?
6. Did the behavior recur?
7. Is containment proportionate?
8. If containment is approved, can defender telemetry prove the DNS result changes?

## Information boundary

This handoff contains defender-visible evidence only. Private operator ground truth was not included.
