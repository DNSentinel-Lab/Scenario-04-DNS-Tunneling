<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=135&section=header&text=%F0%9F%A4%96%20Scenario%20AI%20Profile&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20dns_tunneling_v1%20%7C%20Engineering%20%2B%20Official%20SOC%20Validated&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="Scenario 04 AI Profile" />

<div align="center">

![Status](https://img.shields.io/badge/Status-Validated-2EA44F?style=flat-square) ![Profile](https://img.shields.io/badge/Profile-dns__tunneling__v1-7B2CBF?style=flat-square) ![Human](https://img.shields.io/badge/Human_Validation-Required-22D3EE?style=flat-square)

[🏠 Scenario Home](../README.md) · [🛠️ Detection Engineering](../detection-engineering/DETECTION-ENGINEERING.md) · [🔎 SOC AI Validation](../soc/AI-VALIDATION.md) · [📄 AI Mapping](scenario-04-ai-mapping.md)

</div>

## Reuse the shared bridge — keep the decision human

Scenario 04 reused the shared Flask/OpenAI/HEC foundation. This repository owns only the scenario-specific evidence contract:

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

## Information boundary

AI did not receive the private source message, operator qname list, private BIND ground truth, or predetermined SOC verdict.

## Engineering validation

Before the official run, the bridge/evidence contract was validated against controlled Detection Engineering traffic.

## Official SOC validation

During the official case, the production alert fired at `16:39:01 UTC` and the AI event was processed at `16:39:21.727239 UTC`.

Lubaba had already formed her human hypothesis. She then validated the AI against raw resolver evidence and rated it **CORRECT**.

The AI correctly described the client, parent, seven A queries, unique-child count, label-length evidence and `T1071.004` context while avoiding claims of proven malware, compromise or exfiltration.

`human_validation_required=true` remained preserved.

**[Read the exact official AI validation →](../soc/AI-VALIDATION.md)**
