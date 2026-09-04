# Scenario 04 — IR Final Report

**Incident Responder / Defender:** Musfira  
**SOC handoff:** `INCONCLUSIVE — ESCALATION WARRANTED / High confidence`  
**Final exercise context:** Authorized DNSentinel study/training environment  
**IR result:** **AUTHORIZED CONTROLLED EXERCISE ACTIVITY — CONTROLLED CONTAINMENT VALIDATED**

## Independently proven

- 7 suspicious query events + 7 NOERROR reply events from `10.50.30.20`;
- parent `tunnel.soclab.abdul4rehman215.tech`;
- no victim endpoint telemetry suitable for process/user attribution;
- post-burst HTTPS destinations were already active before the DNS burst;
- no later frozen Detection v1.0 recurrence in the reviewed period;
- temporary RPZ policy could redirect the Scenario 04 namespace to `10.50.30.30`;
- Splunk recorded runtime RPZ application;
- pre-change resolver state could be restored safely.

## Not proven

- malware;
- endpoint compromise;
- payload contents;
- successful exfiltration;
- attacker identity;
- causal link between DNS and HTTPS flows.

## Response

```text
*.tunnel.soclab.abdul4rehman215.tech A 10.50.30.30
```

Victim proof and resolver telemetry both validated the change.

## Reset

The pre-change RPZ files were restored, `unbound-checkconf` passed, Unbound was healthy, and normal authoritative resolution returned.

## Closure

The response exercise is closed with containment and safe reset both verified. Ground truth comparison is documented in [`../exercise/final-comparison.md`](../exercise/final-comparison.md).
