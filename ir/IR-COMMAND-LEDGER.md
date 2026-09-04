# Scenario 04 — IR Command / Search Ledger

## Splunk searches

| File | Purpose |
|---|---|
| [`spl/01-endpoint-host-telemetry-check.spl`](spl/01-endpoint-host-telemetry-check.spl) | Check victim endpoint telemetry availability |
| [`spl/02-data-source-inventory.spl`](spl/02-data-source-inventory.spl) | Inventory evidence sources in the incident window |
| [`spl/03-independent-dns-validation.spl`](spl/03-independent-dns-validation.spl) | Reproduce raw Unbound query/reply evidence |
| [`spl/04-vpc-flow-victim-window.spl`](spl/04-vpc-flow-victim-window.spl) | Review victim VPC flows around the burst |
| [`spl/05-post-burst-outbound-https.spl`](spl/05-post-burst-outbound-https.spl) | Isolate post-burst HTTPS flows |
| [`spl/06-preburst-destination-baseline.spl`](spl/06-preburst-destination-baseline.spl) | Test whether post-burst destinations were already normal |
| [`spl/07-cloudtrail-broad-context.spl`](spl/07-cloudtrail-broad-context.spl) | Review broad AWS change context |
| [`spl/08-cloudtrail-write-actions.spl`](spl/08-cloudtrail-write-actions.spl) | Narrow CloudTrail to write actions |
| [`spl/09-started-instance-ids.spl`](spl/09-started-instance-ids.spl) | Extract started EC2 IDs for optional mapping |
| [`spl/10-recurrence-validation.spl`](spl/10-recurrence-validation.spl) | Search for later frozen Detection v1.0 recurrence |
| [`spl/11-containment-verification.spl`](spl/11-containment-verification.spl) | Verify RPZ application in defender telemetry |

## Shell / resolver actions

| File | Purpose |
|---|---|
| [`shell/01-rpz-precheck.sh`](shell/01-rpz-precheck.sh) | Inspect safe/non-enforcing RPZ state before change |
| [`shell/02-rpz-stage-scenario04.sh`](shell/02-rpz-stage-scenario04.sh) | Stage Scenario 04 wildcard with backup/validation |
| [`shell/03-initial-reload-attempt.sh`](shell/03-initial-reload-attempt.sh) | Preserve first activation method that required further verification |
| [`shell/04-victim-initial-containment-test.sh`](shell/04-victim-initial-containment-test.sh) | Prove first activation had not changed DNS behavior |
| [`shell/05-rpz-recovery.sh`](shell/05-rpz-recovery.sh) | Restore original RPZ files after invalid troubleshooting edit |
| [`shell/06-victim-recovery-check.sh`](shell/06-victim-recovery-check.sh) | Verify normal victim DNS after recovery |
| [`shell/07-rpz-correct-activation.sh`](shell/07-rpz-correct-activation.sh) | Load correct no-trailing-dot RPZ policy |
| [`shell/08-victim-containment-proof.sh`](shell/08-victim-containment-proof.sh) | Prove sinkhole answer from victim |
| [`shell/09-rpz-safe-reset.sh`](shell/09-rpz-safe-reset.sh) | Restore pre-change RPZ state |
| [`shell/10-victim-safe-reset-check.sh`](shell/10-victim-safe-reset-check.sh) | Prove normal answer after reset |

> The known-bad trailing-dot experiment is documented in the lessons/evidence chain but is intentionally not preserved as a runnable public command file.
