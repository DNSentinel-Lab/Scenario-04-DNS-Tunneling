# Scenario 04 — Realistic Information-Separated Exercise Protocol

Scenario 04 was designed to make defender conclusions emerge from evidence rather than from team knowledge of the planned activity.

## Role separation

```text
Sonia / private operator
    └─ exact client, message, qnames, timing, BIND ground truth

Lubaba / SOC
    └─ alert, Unbound, dashboard, baseline, AI

Musfira / IR
    └─ SOC handoff + independent DNS/AWS evidence + response controls
```

## Reveal gate

Private operator facts were withheld until:

```text
SOC disposition locked
→ SOC→IR handoff complete
→ IR independent validation complete
→ response decision complete
→ containment proof complete
→ safe reset complete
→ final IR conclusion locked
```

Only then were the generated qnames, source message and authoritative BIND receipt used for cross-role comparison.

## Frozen-control rule

Detection v1.0, scheduled timing, dashboard semantics and AI evidence contract were fixed before the official activity and were not altered to fit the observed outcome.

## Why this matters

The scenario can therefore distinguish:

- what the operator **actually did**;
- what the resolver **actually saw**;
- what the detection **surfaced**;
- what AI **summarized**;
- what SOC **could responsibly conclude**;
- what IR **could independently prove and change**.
