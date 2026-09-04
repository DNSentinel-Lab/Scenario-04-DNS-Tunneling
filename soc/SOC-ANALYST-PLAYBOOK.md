# Scenario 04 — SOC Analyst Playbook

This playbook captures the investigation method used in the official case without embedding private operator ground truth.

## Investigation flow

```text
telemetry readiness
→ alert preservation
→ raw Unbound validation
→ qname / first-label structure
→ one-minute detector reproduction
→ query/reply context
→ UTC timeline
→ baseline / false-positive challenge
→ client/environment scope
→ human hypothesis
→ AI validation
→ 5W1H
→ disposition
→ SOC→IR handoff
```

## TP / FP / inconclusive model

| Disposition | Meaning |
|---|---|
| **True positive — suspicious / likely unauthorized** | Detection correctly identified abnormal tunneling-like behavior and independent context supports unauthorized activity |
| **Authorized / benign true positive** | Detection correctly identified its target behavior, but legitimate/approved context explains it |
| **False positive** | Frozen rule misclassified ordinary behavior |
| **Inconclusive — escalation warranted** | Abnormal behavior is real, but available evidence cannot responsibly establish intent/process/payload/authorization |

## Evidence rules

- Count `event_type=query` for behavior.
- Use reply events for `rcode`, response time, cache and response size.
- Normalize FQDN trailing dots before suffix filtering.
- Reproduce the detector at the same one-minute grouping used in production.
- Compare the **combined** detector against normal traffic; do not treat one long label as malicious.
- Form the human hypothesis before AI.
- Treat AI as advisory and validate each important claim.
- Use UTC consistently.
- Keep FACT separate from INFERENCE.

## Escalation package

A strong IR handoff should include:

- alert identity and exact UTC window;
- resolver-visible client and resolver;
- parent domain and representative qnames;
- query count, unique qnames/children, length metrics;
- qtypes and reply/rcode context;
- baseline comparison;
- client/environment scope;
- AI validation result;
- MITRE / Kill Chain context;
- 5W1H;
- disposition and confidence;
- explicit attribution limits;
- unanswered IR questions.
