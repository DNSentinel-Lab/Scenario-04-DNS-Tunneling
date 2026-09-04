<a id="top"></a>
# 🎭 Scenario 04 — Final Ground-Truth Comparison

The final reveal happened only after the defender record was locked. This page compares what each role knew and checks whether the independent evidence paths converged.

## 1. Operator ground truth vs defender telemetry

| Operator fact | Defender observation | Result |
|---|---|---|
| Victim `10.50.30.20` | SOC/IR resolver-visible client `10.50.30.20` | ✅ Match |
| 7 generated qnames | 7 query rows / 7 unique qnames | ✅ Match |
| A lookups | A | ✅ Match |
| Base32-like structured labels | Long unique sequenced-looking first labels | ✅ Behavior matched |
| BIND first `16:37:19.219` | Unbound first `16:37:19.215675` | ✅ ~milliseconds apart |
| BIND last `16:37:31.375` | Unbound last `16:37:31.370200` | ✅ ~milliseconds apart |
| Authoritative side logged 14 arrivals | SOC counted 7 victim queries | ✅ Architecture explained duplicates |

## 2. Ground truth vs Detection v1.0

Frozen rule:

```text
unique_child_labels >= 5
AND long_label_count >= 5
AND max_first_label_length > 16
```

Official result:

```text
7 unique children
7 long labels
max first label = 27
```

**Result:** Detection v1.0 correctly surfaced the one-time operator behavior without live threshold changes.

## 3. Ground truth vs AI

AI correctly summarized the client, parent, query/child counts, A-query behavior, label-length evidence and `T1071.004` context. It did not receive the private source message or operator ground truth and did not claim proven malware/exfiltration.

**Result:** AI was useful supporting context and preserved the human decision boundary.

## 4. Ground truth vs SOC conclusion

Actual source: authorized project operator using harmless synthetic data.

SOC conclusion before reveal:

> **INCONCLUSIVE — ESCALATION WARRANTED / High confidence**

That was the correct defender conclusion because resolver evidence could prove the abnormal DNS structure but could not prove authorization, process identity, payload semantics or malicious intent.

**Result:** SOC did not guess the hidden answer. It escalated the correct uncertainty.

## 5. Ground truth vs IR conclusion

IR independently validated the resolver evidence and found no endpoint process telemetry. It also disproved an attractive but unsupported claim that post-DNS HTTPS flows were caused by the suspicious DNS burst.

Once the authorized exercise context was established, IR used the case to validate the real response path.

**Result:** IR preserved evidence limits before exercising containment.

## 6. Response truth

Approved RPZ:

```text
*.tunnel.soclab.abdul4rehman215.tech
→ 10.50.30.30
```

Proof:

- victim returned `10.50.30.30`;
- Splunk recorded `rpz: applied [dns-soc-rpz]`;
- safe reset restored normal authoritative resolution.

**Result:** containment was not assumed from configuration. It was behaviorally verified and reversed.

## 7. Cross-role timeline

```text
16:37:19.215675  Unbound first suspicious query
16:37:19.219     BIND first authoritative receipt
...
16:37:31.370200  Unbound last suspicious query
16:37:31.375     BIND last authoritative receipt
16:39:01         production alert
16:39:21.727239  AI result
```

The timeline demonstrates that independent defender telemetry and private authoritative ground truth described the same DNS session.

## ✅ Final assessment

> Scenario 04 achieved its learning objective. Real DNS behavior traversed the intended architecture, the frozen detector surfaced it, the SOC analyst independently distinguished abnormal behavior from legitimate long-label DNS while preserving attribution limits, AI remained advisory, and IR independently validated the case before proving and safely reversing a narrow RPZ response.

The case is complete without claiming a real-world compromise or data theft that the evidence did not establish.

---

[🏠 Scenario Home](../README.md) · [🎬 Execution](../SCENARIO-04-EXECUTION.md) · [🧾 Evidence](../evidence/README.md) · [⬆ Back to top](#top)
