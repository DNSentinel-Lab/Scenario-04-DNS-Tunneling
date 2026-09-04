<a id="top"></a>
# Scenario 04 — IR Evidence Index

The 23 images in this folder are the GitHub-safe evidence chain from Musfira's official Incident Response work.

## Investigation

| Evidence | What it proves |
|---|---|
| `S04-IR-01-endpoint-host-search-no-events.png` | No victim endpoint telemetry in the direct Splunk search |
| `S04-IR-02-data-source-inventory.png` | DNS/AWS evidence available; no victim host source for process attribution |
| `S04-IR-03-independent-dns-query-reply-validation.png` | IR independently reproduced 7 queries + 7 NOERROR replies |
| `S04-IR-04-vpc-flow-victim-window.png` | Network activity around incident window |
| `S04-IR-05-post-burst-outbound-https.png` | HTTPS flows existed after DNS burst |
| `S04-IR-06-preburst-destination-baseline.png` | Same destinations existed before burst; no causal attribution |
| `S04-IR-07-cloudtrail-broad-context.png` | Broad CloudTrail context was noisy/read-heavy |
| `S04-IR-08-cloudtrail-write-actions.png` | Write-action filter narrowed change context |
| `S04-IR-09-cloudtrail-started-instance-ids.png` | Instance IDs available for optional mapping |
| `S04-IR-10-recurrence-no-second-detection-window.png` | No later frozen-pattern recurrence |

## Response / recovery / reset

| Evidence | What it proves |
|---|---|
| `S04-IR-11-rpz-precheck-safe-disabled.png` | Safe/non-enforcing start state |
| `S04-IR-12-rpz-staging-config-valid.png` | Scenario wildcard staged with valid config |
| `S04-IR-13-first-activation-reload-warning.png` | First activation needed runtime verification |
| `S04-IR-14-first-activation-test-normal-answer.png` | First attempt did not contain |
| `S04-IR-15-trailing-dot-config-error.png` | Invalid troubleshooting edit broke RPZ parsing |
| `S04-IR-16-dns-refused-after-bad-rpz.png` | Resolver impact made failure visible |
| `S04-IR-17-recovery-resolver-healthy.png` | Backups restored resolver health |
| `S04-IR-18-recovery-victim-normal-answer.png` | Normal DNS returned after recovery |
| `S04-IR-19-correct-rpz-activation-resolver-logs.png` | Correct policy loaded |
| `S04-IR-20-containment-victim-sinkhole-answer.png` | Victim received `10.50.30.30` |
| `S04-IR-21-splunk-rpz-applied-proof.png` | Unbound telemetry logged the RPZ application |
| `S04-IR-22-safe-reset-resolver-healthy.png` | Default RPZ state restored / resolver healthy |
| `S04-IR-23-safe-reset-victim-normal-answer.png` | Normal authoritative answer returned after reset |

> Screenshots support decisions; the flagship IR narrative explains why each transition mattered.
