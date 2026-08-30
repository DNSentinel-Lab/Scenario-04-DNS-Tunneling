<a id="top"></a>

> 🧭 [Scenario 04](../README.md) › [AI Profile](README.md) › **Scenario 04 AI Evidence Mapping**

# Scenario 04 AI Evidence Mapping

**Detection Engineer / AI Integrator:** [Abdul-Rehman](https://github.com/abdul4rehman215)  
**Status:** ✅ Implemented and validated  
**Profile:** `dns_tunneling_v1`

The shared AI infrastructure was reused. Scenario 04 added only the evidence contract required to carry the frozen detection result through the existing webhook → OpenAI → HEC path.

## Identifiers

```text
scenario_id = scenario-04-dns-tunneling
scenario    = scenario-04-dns-tunneling
ai_profile  = dns_tunneling_v1
```

## Transport path

```text
Splunk scheduled Detection v1.0
  → http://dns-soc-ai-bridge:5000/splunk-webhook
  → OpenAI
  → Splunk HEC
  → index=dns_soc_ai
  → human validation
```

## Bridge-required top-level fields

Detection v1.0 returns:

- `alert_id`
- `alert_name`
- `scenario`
- `severity`
- `event_time`
- `source`
- `evidence_json`

The human analyst fields remain in the result as well.

## `evidence_json` contents

The JSON evidence includes:

- detection name/version;
- AI profile;
- client IP;
- parent domain;
- first/last event epochs;
- query count;
- unique qnames;
- unique child labels;
- qname length metrics;
- first-label length metrics;
- long-label count;
- qtypes;
- qname samples;
- severity;
- MITRE technique;
- detection rationale;
- scenario ID;
- `human_validation_required`.

## Information-separation boundary

The AI does **not** receive:

- Sonia's private official ground truth;
- secret synthetic message content;
- an expected official query count;
- expected official timing;
- a predetermined SOC disposition.

## Returned event validation

A Scenario 04 AI event returned to:

```text
index=dns_soc_ai
source=dns-soc-ai-bridge
sourcetype=dns_soc:ai:triage
```

Structured AI fields were visible and `human_validation_required=true` remained preserved.

For the evaluated scheduled alert, the source evidence showed:

- client `10.50.30.20`;
- 7 distinct A-record queries;
- parent `tunnel.soclab.abdul4rehman215.tech`;
- 32-character first labels;
- 67-character FQDNs;
- MITRE `T1071.004`.

The indexed AI summary described the same facts and explicitly noted that the supplied evidence alone did not prove tunneling or data exfiltration.

That is the intended boundary:

```text
raw Splunk evidence = truth source
Detection v1.0      = behavioral lead
AI                  = supporting context
human analyst        = security decision
```

---

[🏠 Scenario Home](../README.md) · [🤖 AI Profile](README.md) · [🛠️ Detection Engineering](../detection-engineering/DETECTION-ENGINEERING.md) · [⬆ Back to top](#top)
