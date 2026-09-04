# Scenario 04 — IR Timeline

| UTC / stage | Event | IR meaning |
|---|---|---|
| 2026-09-02 16:37:19.215675 | First suspicious query | Start of seven-query burst |
| 2026-09-02 16:37:31.370200 | Last suspicious query | Burst ends after ~12 seconds |
| 2026-09-02 16:39:01 | Production alert | Frozen Detection v1.0 fires |
| 2026-09-02 16:39:21.727239 | AI processed | Advisory evidence available |
| IR endpoint check | 0 victim-host events | No process/user attribution telemetry |
| IR DNS validation | 14 Unbound events | 7 queries + 7 NOERROR replies reproduced |
| IR VPC review | HTTPS after burst | Needed causal challenge |
| IR pre-burst baseline | Same destinations already active | DNS→HTTPS causal claim rejected |
| IR recurrence search | No second frozen-pattern window | No recurrence in reviewed period |
| IR RPZ pre-check | Enforcement disabled | Safe starting state |
| First activation | Service active, victim answer unchanged | Policy not proven effective |
| Troubleshooting | Trailing-dot rule broke RPZ parsing | Backups required for clean recovery |
| Recovery | Original RPZ restored | Resolver healthy / normal answer |
| Correct activation | No-trailing-dot wildcard loaded | Policy active |
| Containment proof | Victim → `10.50.30.30` | DNS behavior changed |
| Splunk proof | `rpz: applied [dns-soc-rpz]` | Runtime control independently logged |
| Safe reset | Original RPZ restored | Normal authoritative answer returned |
