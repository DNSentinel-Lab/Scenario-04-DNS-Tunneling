<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=135&section=header&text=%F0%9F%A4%96%20Scenario%20AI%20Profile&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20dns_tunneling_v1%20%7C%20Validated&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="Scenario 04 AI Profile" />

<div align="center">

![Status](https://img.shields.io/badge/Status-Validated-2EA44F?style=flat-square)
![Profile](https://img.shields.io/badge/Profile-dns__tunneling__v1-7B2CBF?style=flat-square)

[🏠 Scenario Home](../README.md) · [🛠️ Detection Engineering](../detection-engineering/DETECTION-ENGINEERING.md) · [📄 AI Mapping](scenario-04-ai-mapping.md)

</div>

## Reuse the shared bridge — add only Scenario 04 evidence

The common Flask/OpenAI/HEC foundation lives in the shared Infrastructure repository. Scenario 04 did **not** rebuild it.

This repository owns only the Scenario 04 evidence mapping:

```text
scenario_id = scenario-04-dns-tunneling
scenario    = scenario-04-dns-tunneling
ai_profile  = dns_tunneling_v1
```

Transport:

```text
Scheduled Detection v1.0
      ↓
shared Splunk webhook
      ↓
dns-soc-ai-bridge
      ↓
OpenAI
      ↓
Splunk HEC
      ↓
index=dns_soc_ai
      ↓
human validation
```

## Evidence boundary

The AI receives detection evidence such as client, parent domain, time window, query/unique-child counts, label-length metrics, qtypes, samples, rationale and MITRE context.

It does **not** receive:

- Sonia's private official operator ground truth;
- secret synthetic message contents;
- an expected official query count or timing;
- a predetermined SOC disposition.

## Validated outcome

A Scenario 04 AI event returned to Splunk and was checked against the scheduled detection evidence. The indexed summary matched the client, query count, A-record behavior, 32-character first labels, 67-character qnames and `T1071.004`, while explicitly avoiding a claim of proven exfiltration/tunneling.

`human_validation_required=true` remained preserved.

**[Read the exact field mapping →](scenario-04-ai-mapping.md)**

<div align="center">

[🏠 Scenario Home](../README.md) · [⬆ Back to top](#top)

</div>
