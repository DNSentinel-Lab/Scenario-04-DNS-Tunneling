<a id="top"></a>
# Scenario 04 — SOC Evidence Index

This folder preserves the curated defender-side proof used to support Lubaba's final disposition. The flagship investigation uses only the most important images; the rest remain available for technical audit.

## Core evidence sequence

| Evidence | Claim proved |
|---|---|
| `S04-SOC-E01-Telemetry-Readiness.png` | Current Unbound evidence source was healthy |
| `S04-SOC-E03-Namespace-Visibility.png` | Scenario namespace became visible after DNS normalization |
| `S04-SOC-E05-Raw-Qname-Label-Table.png` | Exact child-label structure and lengths |
| `S04-SOC-E06-Detection-v1-Reproduction.png` | Frozen one-minute rule independently reproduced |
| `S04-SOC-E07-Official-Alert-Trigger.png` | Production alert actually fired |
| `S04-SOC-E09-Query-Reply-NOERROR.png` | 7 queries + 7 successful replies; no NXDOMAIN |
| `S04-SOC-E10-Resolver-Timeline.png` | Defender-visible UTC timeline |
| `S04-SOC-E12-Baseline-Label-Summary.png` | Measured normal first-label behavior |
| `S04-SOC-E13-Benign-Long-Label-Comparison.png` | Legitimate long AWS labels existed |
| `S04-SOC-E14-Same-Rule-Baseline-Zero.png` | Full rule did not match non-Scenario-04 traffic |
| `S04-SOC-E15-Client-Scope.png` | Scenario activity came from one resolver-visible client |
| `S04-SOC-E16-Environment-Scope.png` | No second client/parent reproduced the combined pattern |
| `S04-SOC-E18-AI-Human-Validation.png` | AI event preserved human-validation boundary |
| `S04-SOC-E19a-AI-Alert-Summary.png` | AI summarized the actual alert evidence |
| `S04-SOC-E19b-AI-Limitations.png` | AI preserved important evidence limitations |

## Supporting exports

- `baseline-summary.csv`
- `detection-window-summary.csv`
- `raw-observed-qnames.csv`
- `reply-summary.csv`
- `timeline.csv`
