<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=145&section=header&text=%F0%9F%94%8E%20SOC%20Investigation%20Workspace&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20Lubaba%20%7C%20Investigation%20%2B%20IR%20Handoff%20Complete&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="Scenario 04 SOC workspace" />

<div align="center">

![Owner](https://img.shields.io/badge/SOC_Analyst-Lubaba-22D3EE?style=flat-square) ![Disposition](https://img.shields.io/badge/Disposition-INCONCLUSIVE_%E2%86%92_IR-F59E0B?style=flat-square) ![Confidence](https://img.shields.io/badge/Confidence-High-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [📄 Flagship Investigation](SOC-ANALYST-INVESTIGATION.md) · [🛡️ IR Handoff](SOC-TO-IR-HANDOFF.md)

</div>

# 🔎 Scenario 04 — SOC Analyst Workspace

Lubaba investigated the official alert from defender-visible evidence only. Private operator timing, source message, exact generated qname list and authoritative BIND ground truth remained separated until after the defender record was complete.

## Workspace map

| Artifact | Purpose |
|---|---|
| [`SOC-ANALYST-INVESTIGATION.md`](SOC-ANALYST-INVESTIGATION.md) | Flagship investigation story |
| [`SOC-ANALYST-PLAYBOOK.md`](SOC-ANALYST-PLAYBOOK.md) | Reusable DNS tunneling investigation method |
| [`INVESTIGATION-TIMELINE.md`](INVESTIGATION-TIMELINE.md) | UTC event sequence |
| [`5W1H.md`](5W1H.md) | Who / What / When / Where / Why / How |
| [`AI-VALIDATION.md`](AI-VALIDATION.md) | Human-first AI claim validation |
| [`SOC-TO-IR-HANDOFF.md`](SOC-TO-IR-HANDOFF.md) | Defender-only handoff to Musfira |
| [`SPL-QUERY-INDEX.md`](SPL-QUERY-INDEX.md) | Investigation search map |
| [`TROUBLESHOOTING-NOTES.md`](TROUBLESHOOTING-NOTES.md) | Curated analyst lessons |
| [`spl/`](spl/) | Exact investigation searches |
| [`evidence/`](evidence/) | Curated evidence and CSV exports |

## Final SOC conclusion

> **INCONCLUSIVE — ESCALATION WARRANTED**  
> **Confidence: High**

The DNS behavior was real, independently reproduced, materially different from baseline and consistent with tunneling-like structure. The available telemetry did not justify claiming malware, compromise, exfiltration, process identity, attacker identity or authorization status.

<div align="center">

[🏠 Scenario Home](../README.md) · [⬆ Back to top](#top)

</div>
