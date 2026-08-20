# Incident Response Workspace — Scenario 04 DNS Tunneling

**Status:** Planned.

This folder records the human response decision, approved containment, verification and cleanup/reset actions for the scenario.

## Response rule

Only synthetic non-sensitive data is used. After human confirmation, isolate or restrict the source and/or use the team-controlled DNS containment path. The final evidence should show that the tunneling-like DNS behavior stops or is redirected as intended.

A complete response record should show:

```text
Finding
→ human decision
→ approved action
→ expected technical change
→ observed post-response evidence
→ final verification
```

Do not treat a Splunk alert or AI summary as automatic response authorization.

## Final artifacts later

The exact files depend on the exercise. A completed scenario may include an incident-response note/playbook, containment commands/configuration and a before/after verification record.
