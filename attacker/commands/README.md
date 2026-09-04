# Scenario 04 — Operator Command Reference

This folder keeps the clean environment/receipt checks that materially supported the official operator session. Preservation-only housekeeping artifacts are intentionally not part of the public repository.

| File | Purpose |
|---|---|
| `01-victim-resolver-check.sh` | Confirm victim still uses defender resolver |
| `02-delegation-check.sh` | Validate child NS/SOA path |
| `03-authoritative-host-confirm.sh` | Confirm correct EC2 host before BIND checks |
| `04-authoritative-health.sh` | Validate BIND service, port 53 and query log |
| `05-authoritative-endpoint-identity.sh` | Re-check public authoritative endpoint |
| `06-rpz-preflight.sh` | Prove Scenario 04 containment is not already enforcing |
| `07-authoritative-receipt.sh` | Recover official `s04-01`…`s04-07` BIND receipt |

The exact finite client is in [`../scripts/scenario04-tunnel-client.py`](../scripts/scenario04-tunnel-client.py).
