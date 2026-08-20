# Scenario 04 — DNS Tunneling

**Status:** Planned — reuses Scenario 02 defender-DNS platform  
**Primary MITRE ATT&CK:** T1071.004 — Application Layer Protocol: DNS; T1572 only where the implemented tunnel behavior fits

## Objective

Generate only harmless synthetic data inside DNS labels/queries and determine whether the SOC can identify tunneling-like structure and frequency using DNS, endpoint/client and network context.

## Infrastructure dependency

Reuse the Scenario 02 resolver, victim and sinkhole. Use the controlled `tunnel.soclab.abdul4rehman215.tech` namespace. Add a separate team-controlled authoritative DNS endpoint only if the final scenario requires genuine authoritative request/response behavior that cannot be demonstrated through the existing controlled path.

The shared AWS/Splunk platform is not rebuilt inside this repository. Any new AWS resource is designed in the infrastructure project and documented there after it exists.

## Detection focus

- long or encoded-looking DNS labels;
- query length/label structure and frequency;
- TXT/A or other query-type behavior actually generated;
- unique subdomains beneath the controlled parent;
- repeated client/process behavior;
- pre- and post-containment network/DNS evidence;

## Network & protocol view

- Layer 7 DNS: label structure, query type, parent domain and response behavior;
- Layer 4: UDP/TCP 53 and any controlled follow-up path;
- Layer 3: client/resolver/destination context where useful;
- Endpoint: victim/process context if collected;
- Containment: defender resolver block/sinkhole and verification;

DNS is Layer 7 evidence, but the scenario should correlate it with the Layer 3/4, endpoint, cloud or application evidence that actually helps prove the behavior.

## Planned dashboard

The dashboard should follow one shared time range and lead the analyst from summary → behavior → correlation → raw evidence.

- Shared time range plus client, parent-domain, query-type and response filters;
- KPIs: total queries, unique subdomains, long-label count, query-type mix, active clients;
- Query frequency and label-length distribution over time;
- Top parent/subdomain patterns and TXT/A behavior;
- Client/process and network correlation where available;
- Clear pre-containment versus post-containment result;

See [`dashboard/README.md`](dashboard/README.md) for the planned layout.

## Team

| Role | Member |
|---|---|
| Project Lead / Attack Simulation | Lubaba |
| SOC Analyst | Abdul-Rehman |
| Detection Engineer | Musfira |
| IR / Defender | Sonia |

## Scenario workflow

This repository follows the common 20-part standard:

**Objective → Architecture → Prerequisites → Simulation → Telemetry → Detection → SPL → Alert → AI Triage → SOC Analysis → IR → Evidence → Containment → Verification → Results → MITRE → False Positives → Lessons → Reproduction → Screenshots.**

The working checklist is [`SCENARIO-RUNBOOK.md`](SCENARIO-RUNBOOK.md).

## Repository map

```text
.
├── README.md                 # scenario overview and locked design
├── SCENARIO-RUNBOOK.md       # 20-part execution/documentation checklist
├── dashboard/                # dashboard plan, later final XML/export
├── spl/                      # baseline, hunting, detection and validation SPL
├── ai/                       # scenario profile/payload mapping for shared AI bridge
├── ir/                       # response/containment/verification record
├── evidence/                 # structured ground truth and evidence notes
└── screenshots/              # curated visual evidence
```

The folders are prepared now, but fake implementation artifacts are not. Real `.spl`, dashboard XML, AI profiles and evidence are added only when they have been built and tested.

## Shared project references

- [DNS Lab Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) — shared AWS, DNS, Splunk and AI foundation
- [Scenario infrastructure roadmap](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure/blob/main/00-project-design/scenario-infrastructure-roadmap.md) — future EC2/DNS/network changes owned by the infrastructure repository
- [Scenario documentation standard](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure/blob/main/00-project-design/scenario-documentation-standard.md) — common 20-part SOC workflow, dashboard and evidence rules

## Completion condition

Detection is tuned against benign long/encoded DNS patterns, the SOC validates AI assistance against raw events, containment is approved by a human, and the final before/after evidence proves the controlled behavior no longer follows its original path.
