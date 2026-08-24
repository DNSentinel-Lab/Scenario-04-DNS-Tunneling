<a id="top"></a>

> 🧭 [Scenario 04](README.md) › **Scenario 04 Runbook — DNS Tunneling**

![Scenario](https://img.shields.io/badge/Scenario_04-Planned-6E7781?style=flat-square)
![DNSentinel](https://img.shields.io/badge/DNSentinel-Technical_Record-20E3B2?style=flat-square)

---

# Scenario 04 Runbook — DNS Tunneling

**Status:** Planned — reuses Scenario 02 defender-DNS platform  
**Primary MITRE ATT&CK:** T1071.004 — Application Layer Protocol: DNS; T1572 only where the implemented tunnel behavior fits

This is the working checklist for the scenario. Sections remain marked **Planned** until real implementation or evidence exists. Do not fill gaps with invented values.

## 1. Objective

Generate only harmless synthetic data inside DNS labels/queries and determine whether the SOC can identify tunneling-like structure and frequency using DNS, endpoint/client and network context.

**Status:** Planned.

## 2. Architecture

Describe only the systems and paths actually used when the scenario is prepared.

```text
Shared infrastructure
      ↓
Scenario-specific infrastructure (if any)
      ↓
Controlled simulation
      ↓
Telemetry
      ↓
Splunk / AI / Human SOC / IR
```

**Scenario infrastructure dependency:** Reuse the Scenario 02 resolver, victim and sinkhole. Use the controlled `tunnel.soclab.abdul4rehman215.tech` namespace. Add a separate team-controlled authoritative DNS endpoint only if the final scenario requires genuine authoritative request/response behavior that cannot be demonstrated through the existing controlled path.

**Status:** Planned.

## 3. Prerequisites

Before execution, confirm:

- required shared infrastructure is healthy;
- scenario-specific infrastructure, if any, has been built and validated;
- telemetry is arriving with usable timestamps/fields;
- the shared AI bridge is available;
- the Project Lead has the approved simulation plan and ground-truth clock;
- Detection Engineer has captured the normal baseline before attack activity;
- SOC Analyst and IR/Defender know the expected exercise window but do not receive the final detection answer in advance.

**Status:** Planned.

## 4. Attack / Simulation

Record the final controlled commands/tools, safety limits and start/end timestamps only when the exercise is executed.

The simulation must stay inside owned/authorized lab infrastructure and match the scenario objective.

**Status:** Planned.

## 5. Telemetry

List the real sources that capture this scenario. Candidate shared sources include:

- Route 53 public authoritative query logs;
- AWS VPC Resolver Query Logs;
- team-controlled resolver logs from Scenario 02 onward;
- VPC Flow Logs;
- Nginx access telemetry when Web follow-up is relevant;
- CloudTrail when control-plane changes are part of the evidence;
- endpoint/client telemetry only where it is actually collected.

Do not force unused telemetry into the scenario.

**Status:** Planned.

## 6. Detection

Detection focus:

- long or encoded-looking DNS labels;
- query length/label structure and frequency;
- TXT/A or other query-type behavior actually generated;
- unique subdomains beneath the controlled parent;
- repeated client/process behavior;
- pre- and post-containment network/DNS evidence;

Write the final behavioral hypothesis after observing baseline data.

**Status:** Planned.

## 7. SPL / Detection Logic

Use files under [`spl/`](spl/) after real searches exist:

```text
baseline.spl
hunting.spl
detection.spl
validation.spl
```

Thresholds must be tuned from real baseline and controlled testing rather than copied from an example.

**Status:** Planned.

## 8. Alert

The final alert should contain enough evidence for a human analyst to start investigation without guessing field meanings.

Recommended common fields:

- detection name/version;
- first/last event time;
- observed client/source identity;
- query count / unique-name count / scenario-specific metric;
- relevant query names/types/results;
- supporting Web/network context;
- severity and rationale;
- raw-event or drilldown search.

**Status:** Planned.

## 9. AI Triage

The shared AI bridge is reused. This repository adds only the scenario profile/payload mapping after the detection fields are stable.

Record:

- payload sent;
- AI summary returned;
- useful observations;
- missing/incorrect claims;
- what the SOC Analyst verified independently.

**Status:** Planned.

## 10. SOC Analysis

Build the human investigation timeline from raw evidence. Document pivots, competing explanations, disposition and confidence.

The AI output is supporting context only.

**Status:** Planned.

## 11. Incident Response

Only synthetic non-sensitive data is used. After human confirmation, isolate or restrict the source and/or use the team-controlled DNS containment path. The final evidence should show that the tunneling-like DNS behavior stops or is redirected as intended.

Record the approved decision and who performed it.

**Status:** Planned.

## 12. Evidence

Store structured evidence notes under [`evidence/`](evidence/) and screenshots under [`screenshots/`](screenshots/).

Evidence should cover:

- pre-scenario health/baseline;
- ground-truth timing;
- telemetry;
- detection/alert;
- AI output;
- SOC analysis;
- containment;
- verification.

**Status:** Planned.

## 13. Containment

Containment is performed only after the human investigation reaches the scenario's approved response condition.

Do not treat detection or AI output as automatic authorization.

**Status:** Planned.

## 14. Verification

Prove what changed after response. Use before/after DNS, network, Web or endpoint evidence appropriate to the scenario.

**Status:** Planned.

## 15. Results

Summarize the final outcome after the exercise:

- detection result;
- SOC disposition;
- response result;
- verification result;
- whether the scenario completion condition passed.

**Status:** Planned.

## 16. MITRE ATT&CK Mapping

Primary mapping: **T1071.004 — Application Layer Protocol: DNS; T1572 only where the implemented tunnel behavior fits**.

Review the mapping against the behavior that was actually generated and detected. Add no extra techniques unless evidence supports them.

If a Cyber Kill Chain view is included, record only the phase that the implemented behavior genuinely demonstrates and cite the scenario evidence for that choice.

**Status:** Planned.

## 17. False Positives

Test plausible benign activity that resembles part of the scenario. Record each threshold or logic change and why it improved separation.

**Status:** Planned.

## 18. Lessons Learned

Capture useful technical, detection, analyst and IR lessons. Write them as reusable engineering knowledge rather than a chat/debugging transcript.

**Status:** Planned.

## 19. Reproduction Instructions

At completion, provide a clean ordered path:

```text
Prerequisites
→ scenario infrastructure
→ baseline
→ controlled simulation
→ validate telemetry
→ run detection
→ investigate
→ AI comparison
→ contain
→ verify
→ cleanup/reset
```

**Status:** Planned.

## 20. Screenshots

Use descriptive filenames and show screenshots next to the sections they prove. Keep a compact screenshot index in [`screenshots/README.md`](screenshots/README.md).

**Status:** Planned.

## Network & protocol view

- Layer 7 DNS: label structure, query type, parent domain and response behavior;
- Layer 4: UDP/TCP 53 and any controlled follow-up path;
- Layer 3: client/resolver/destination context where useful;
- Endpoint: victim/process context if collected;
- Containment: defender resolver block/sinkhole and verification;

This section should be updated with the actual fields/ports seen during execution.

## Completion gate

Detection is tuned against benign long/encoded DNS patterns, the SOC validates AI assistance against raw events, containment is approved by a human, and the final before/after evidence proves the controlled behavior no longer follows its original path.

---

<div align="center">

[🏠 Scenario Home](README.md) · [🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [⬆ Back to top](#top)

<sub>DNSentinel Lab · Evidence-first DNS security engineering</sub>

</div>
