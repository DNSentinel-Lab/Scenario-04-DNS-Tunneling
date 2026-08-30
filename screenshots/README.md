<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=135&section=header&text=%F0%9F%93%B8%20Curated%20Evidence&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20Detection%20Engineering&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="Scenario 04 Curated Evidence" />

<div align="center">

![Screenshots](https://img.shields.io/badge/Curated_Set-14_Images-14B8A6?style=flat-square)
![Secrets](https://img.shields.io/badge/Secret_Redaction-Not_Required-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧾 Evidence](../evidence/README.md) · [🛠️ Detection Engineering](../detection-engineering/DETECTION-ENGINEERING.md)

</div>

## Curation policy

The final set keeps evidence that proves an engineering decision or acceptance gate. Construction-only screens, minor navigation mistakes, copy/paste errors, repeated empty results and the later throttle adjustment are not part of the public story.

No event values were altered. The preserved files were checked for API keys, HEC tokens, passwords, private keys and AWS/OpenAI secrets; none were found in the selected evidence.

## Detection Engineering evidence set

| File | What it proves |
|---|---|
| [`01-resolver-field-validation.png`](detection-engineering/01-resolver-field-validation.png) | Live Unbound source, victim attribution and extracted DNS fields |
| [`02-dns-ingestion-latency.png`](detection-engineering/02-dns-ingestion-latency.png) | Measured ingest-delay distribution used for alert engineering |
| [`03-normal-dns-baseline.png`](detection-engineering/03-normal-dns-baseline.png) | Real normal DNS behavior before tunneling-like validation |
| [`04-tunneling-feature-hunt.png`](detection-engineering/04-tunneling-feature-hunt.png) | First-label/qname behavior used to select explainable features |
| [`05-dns-tunneling-investigation-dashboard.png`](detection-engineering/05-dns-tunneling-investigation-dashboard.png) | Final Dashboard Studio analyst surface |
| [`06-controlled-positive-test-traffic.png`](detection-engineering/06-controlled-positive-test-traffic.png) | Authorized synthetic positive traffic from the victim path |
| [`07-controlled-positive-detection.png`](detection-engineering/07-controlled-positive-detection.png) | Positive behavior separated from normal parent activity |
| [`08-benign-lookalike-no-detection.png`](detection-engineering/08-benign-lookalike-no-detection.png) | Repeated-long-label challenge did not create a new result |
| [`09-final-detection-v1-validation.png`](detection-engineering/09-final-detection-v1-validation.png) | Frozen Detection v1.0 output/metadata |
| [`10-scheduled-alert-triggered.png`](detection-engineering/10-scheduled-alert-triggered.png) | Automatic scheduled execution |
| [`11-analyst-evidence-row.png`](detection-engineering/11-analyst-evidence-row.png) | Analyst-ready scheduled result and Scenario/AI identifiers |
| [`12-raw-event-drilldown.png`](detection-engineering/12-raw-event-drilldown.png) | Raw Unbound query/reply evidence behind one summary window |
| [`13-ai-triage-indexed.png`](detection-engineering/13-ai-triage-indexed.png) | Scenario 04 AI event returned through HEC |
| [`13b-ai-vs-raw-evidence-validation.png`](detection-engineering/13b-ai-vs-raw-evidence-validation.png) | AI numerical/context claims compared with source evidence |

## What is intentionally absent

- every Dashboard Studio construction step;
- Save As dialogs;
- minor SPL syntax corrections;
- repeated zero-result screens without a new root cause;
- small navigation issues;
- a fabricated “readiness screenshot.”

Readiness is documented in the validation and freeze records instead of inventing an image merely to complete a numbering template.

## Later official evidence

Future official simulation/SOC/IR screenshots should be added as a separate exercise evidence sequence. Do not rename these Detection Engineering images to make them look like official incident evidence.

<div align="center">

[🏠 Scenario Home](../README.md) · [⬆ Back to top](#top)

</div>
