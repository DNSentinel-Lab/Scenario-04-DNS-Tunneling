# Scenario 04 — Adversary / Operator Playbook

**Purpose:** reproduce the approved Scenario 04 operator behavior without changing the frozen defender conditions.

## Objective

Generate one finite DNS tunneling-like pattern from `dns-soc-victim01` through the ordinary system resolver to the project-owned authoritative namespace.

## Allowed behavior

- harmless synthetic data only;
- DNS-safe Base32 encoding;
- unique child labels;
- ordinary A lookups;
- fixed target `tunnel.soclab.abdul4rehman215.tech`;
- finite execution;
- private ground-truth preservation.

## Explicitly out of scope

- phishing / exploitation;
- credential theft;
- persistence;
- lateral movement;
- malware installation;
- interactive C2 shells;
- scanning/discovery;
- third-party targets;
- changing Detection v1.0 based on defender results.

## Execution discipline

```text
verify victim/resolver path
→ verify authoritative delegation/BIND
→ confirm Scenario 04 RPZ not enforcing
→ run finite client once
→ confirm process exits
→ recover authoritative receipt
→ preserve private ground truth
→ stop
```

A detector miss is a valid outcome. Do not rerun merely to force a Splunk alert.

## Information separation

Operator ground truth stays private until SOC and IR decisions are locked. The SOC receives defender telemetry, not operator answers.

## Final case lesson

In the actual run, the client executed during review. The correct response was preservation and no rerun. This playbook therefore treats **one-time execution integrity** as a core control.
