<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,18,24,30&height=128&section=header&text=%F0%9F%A4%96%20Scenario%2004%20AI%20Evidence%20Mapping&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20AI%20Assistance&descSize=13&descAlignY=68&descColor=A855F7" width="100%" alt="Scenario 04 AI Evidence Mapping" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-AI_Assistance-A855F7?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🤖 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧾 Scenario 04 AI Evidence Mapping

**Detection Engineer / AI Integrator:** [Abdul-Rehman](https://github.com/abdul4rehman215)  
**Status:** ✅ Implemented and validated  
**Profile:** `dns_tunneling_v1`

The shared AI infrastructure was reused. Scenario 04 added only the evidence contract required to carry the frozen detection result through the existing webhook → OpenAI → HEC path.

## 📌 Identifiers

```text
scenario_id = scenario-04-dns-tunneling
scenario    = scenario-04-dns-tunneling
ai_profile  = dns_tunneling_v1
```

## 📌 Transport path

```text
Splunk scheduled Detection v1.0
  → http://dns-soc-ai-bridge:5000/splunk-webhook
  → OpenAI
  → Splunk HEC
  → index=dns_soc_ai
  → human validation
```

## 📌 Bridge-required top-level fields

Detection v1.0 returns:

- `alert_id`
- `alert_name`
- `scenario`
- `severity`
- `event_time`
- `source`
- `evidence_json`

The human analyst fields remain in the result as well.

## 🧾 `evidence_json` contents

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

## ⚖️ Information-separation boundary

The AI does **not** receive:

- Sonia's private official ground truth;
- secret synthetic message content;
- an expected official query count;
- expected official timing;
- a predetermined SOC disposition.

## ✅ Returned event validation

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


## ✅ Official exercise validation

The frozen profile was then exercised by the **official production alert**, not only by Detection Engineering test traffic.

Official case sequence:

```text
2026-09-02 16:39:01 UTC   production alert
2026-09-02 16:39:21 UTC   AI event processed
```

Lubaba formed the human hypothesis before opening AI. She then compared the AI event with raw Unbound evidence and rated the result **CORRECT**.

The AI correctly preserved:

- resolver-visible client `10.50.30.20`;
- parent `tunnel.soclab.abdul4rehman215.tech`;
- seven A queries / seven unique child labels;
- the short burst and long-label evidence;
- `T1071.004` context;
- the limitation that alert evidence did not prove malware, compromise, payload transfer or malicious intent;
- `human_validation_required=true`.

The human analyst later enriched the case with DNS reply/RCODE evidence that was not part of the AI input. See [`../soc/AI-VALIDATION.md`](../soc/AI-VALIDATION.md).


---

[🏠 Scenario Home](../README.md) · [🤖 AI Profile](README.md) · [🛠️ Detection Engineering](../detection-engineering/DETECTION-ENGINEERING.md) · [⬆ Back to top](#top)

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🤖 Workspace](README.md) · 

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
