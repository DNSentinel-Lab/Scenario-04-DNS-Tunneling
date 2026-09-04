# Scenario 04 — AI Validation

**Scenario ID:** `scenario-04-dns-tunneling`  
**AI profile:** `dns_tunneling_v1`  
**Processed:** `2026-09-02 16:39:21.727239 UTC`  
**Human hypothesis formed before AI:** Yes  
**human_validation_required:** `true`  
**Formal result:** **CORRECT**

| AI claim | Human validation | Basis |
|---|---|---|
| Client `10.50.30.20` | Correct | Raw Unbound query rows |
| Parent `tunnel.soclab.abdul4rehman215.tech` | Correct | Raw qnames / alert |
| Seven A queries | Correct | Query-only suspicious window |
| Seven unique qnames / child labels | Correct | Independent stats reproduction |
| ~12-second activity | Correct | First/last raw timestamps |
| Seven long labels | Correct | `long_label_count=7` |
| Structured `s04-01`…`s04-07` suggests sequencing | Reasonable inference | Visible label structure; semantics not decoded |
| Tunneling-like hypothesis | Correct as a hypothesis | Combined DNS behavior |
| T1071.004 / Command & Control context | Correct | Frozen mapping |
| Evidence does not prove malware/transfer/intent | Correct | Defender evidence limits |
| Human validation required | Correct | Explicit event field |

## Important nuance

The AI correctly said DNS reply context was not part of the evidence supplied to it. Lubaba later filled that gap by independently reviewing raw Unbound reply rows and proving 7/7 `NOERROR` replies.

That is the intended model:

```text
AI summarizes supplied evidence
human analyst expands the case
human analyst validates the AI
human analyst owns the decision
```
