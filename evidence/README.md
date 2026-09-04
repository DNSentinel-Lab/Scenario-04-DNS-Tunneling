<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=155&section=header&text=%F0%9F%A7%BE%20Scenario%2004%20Evidence%20Center&fontSize=30&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Engineering%20%E2%86%92%20Operator%20%E2%86%92%20SOC%20%E2%86%92%20IR%20%E2%86%92%20Cross-Role%20Closeout&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="Scenario 04 evidence center" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-Evidence_Complete-2EA44F?style=flat-square) ![SOC](https://img.shields.io/badge/SOC-Evidence_Preserved-22D3EE?style=flat-square) ![IR](https://img.shields.io/badge/IR-Evidence_Preserved-F59E0B?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧬 Operator](../attacker/README.md) · [🔎 SOC](../soc/README.md) · [🛡️ IR](../ir/README.md)

</div>

# 🧾 Master Evidence Index

Detailed evidence stays with the role that produced it. This page links the layers into one auditable chain without creating one giant screenshot dump.

```mermaid
flowchart LR
    ENG["🧠 Detection Engineering"] --> SOC["🔎 SOC Evidence"]
    OP["🧬 Operator Ground Truth"] -. reveal after decisions .-> CMP["🎭 Final Comparison"]
    SOC --> IR["🛡️ IR Evidence"]
    IR --> CMP
    ENG --> CMP
```

## Detection Engineering

- [`../detection-engineering/detection-engineering-validation.md`](../detection-engineering/detection-engineering-validation.md)
- [`../screenshots/detection-engineering/`](../screenshots/detection-engineering/)
- [`detection-engineering/resolver-field-validation-sample.csv`](detection-engineering/resolver-field-validation-sample.csv)
- [`detection-engineering/scheduled-alert-result.csv`](detection-engineering/scheduled-alert-result.csv)

## Operator / ground truth

- [`../attacker/PROJECT-LEAD-ADVERSARY.md`](../attacker/PROJECT-LEAD-ADVERSARY.md)
- [`../attacker/ground-truth.md`](../attacker/ground-truth.md)
- [`../attacker/scripts/scenario04-tunnel-client.py`](../attacker/scripts/scenario04-tunnel-client.py)
- [`../screenshots/attacker/`](../screenshots/attacker/)

## SOC

- [`../soc/evidence/README.md`](../soc/evidence/README.md)
- [`../soc/SOC-ANALYST-INVESTIGATION.md`](../soc/SOC-ANALYST-INVESTIGATION.md)
- [`../soc/SOC-TO-IR-HANDOFF.md`](../soc/SOC-TO-IR-HANDOFF.md)

## Incident Response

- [`../ir/evidence/README.md`](../ir/evidence/README.md)
- [`../ir/INCIDENT-RESPONSE.md`](../ir/INCIDENT-RESPONSE.md)
- [`../ir/IR-FINAL-REPORT.md`](../ir/IR-FINAL-REPORT.md)

## Final comparison

- [`../exercise/final-comparison.md`](../exercise/final-comparison.md)

## Evidence rule

A screenshot or export is present because it proves a claim, supports a decision, or documents a reusable root cause. Backend chat/progress screenshots, repeated navigation views and preservation-package housekeeping are not part of the public case narrative.
