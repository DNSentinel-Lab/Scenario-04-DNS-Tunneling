# Scenario 04 — Incident Response Lessons

## 1. Missing endpoint telemetry is an evidence limitation, not a conclusion

A zero-result victim-host search did not prove no process ran. It proved that the reviewed Splunk data could not provide process/user attribution.

## 2. Timing does not prove causation

HTTPS flows appeared after the DNS burst, but the same destinations existed before it. Musfira rejected a causal C2 claim instead of treating sequence as proof.

## 3. `active` service does not mean active security policy

The first RPZ activation left Unbound active while the victim still received the normal answer.

**Lesson:** verify security controls behaviorally.

## 4. Backups are part of containment engineering

A trailing-dot experiment caused RPZ parsing failure and a temporary resolver outage. Exact backups enabled clean recovery.

## 5. Response needs a reset plan before execution

The control was temporary. Safe closeout required restoring the original RPZ state and independently proving normal DNS returned.
