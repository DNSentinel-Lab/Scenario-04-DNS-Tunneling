<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=225&section=header&text=Scenario%2004%20%E2%80%94%20DNS%20Tunneling&fontSize=38&fontColor=ffffff&animation=fadeIn&fontAlignY=36&desc=DNSentinel%20Lab%20%7C%20Planned%20DNS%20C2%20Case%20File&descSize=16&descAlignY=58&descColor=20E3B2" width="100%" alt="Scenario 04 — DNS Tunneling" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=21&duration=2900&pause=900&color=20E3B2&center=true&vCenter=true&repeat=true&width=960&height=72&lines=Synthetic+DNS+Labels+%E2%86%92+Pattern+Detection+%E2%86%92+Investigation;Human-Approved+Containment+%7C+T1572+Only+Where+Evidence+Fits" alt="Scenario workflow animation" />

![Scenario](https://img.shields.io/badge/Scenario_04-Planned-6E7781?style=for-the-badge)
![AWS](https://img.shields.io/badge/AWS-Security_Lab-FF9900?style=for-the-badge&logo=amazonwebservices&logoColor=white)
![Splunk](https://img.shields.io/badge/Splunk-Enterprise-000000?style=for-the-badge&logo=splunk&logoColor=white)
![DNS](https://img.shields.io/badge/DNS-Security-00B8D9?style=for-the-badge)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=for-the-badge)
![Unbound](https://img.shields.io/badge/Unbound-Defender_DNS-4C8BF5?style=for-the-badge)
![AI](https://img.shields.io/badge/AI-Shared_Foundation-7B2CBF?style=for-the-badge)

<br/>

![Stars](https://img.shields.io/github/stars/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Forks](https://img.shields.io/github/forks/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Last Commit](https://img.shields.io/github/last-commit/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Repo Size](https://img.shields.io/github/repo-size/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![License](https://img.shields.io/github/license/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Issues](https://img.shields.io/github/issues/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)

**A planned, controlled DNS C2-pattern investigation using harmless synthetic data, structure/frequency analytics, raw-evidence validation and human-approved response.**

[🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [🔎 Scenario 01](https://github.com/DNSentinel-Lab/Scenario-01-DNS-Recon) · [🧬 Scenario 02](https://github.com/DNSentinel-Lab/Scenario-02-DGA) · [🔄 Scenario 03](https://github.com/DNSentinel-Lab/Scenario-03-Fast-Flux) · [**🛰️ Scenario 04**](https://github.com/DNSentinel-Lab/Scenario-04-DNS-Tunneling)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🎯 Mission Brief

| Field | Scenario record |
|---|---|
| **Mission** | Generate harmless synthetic tunneling-like DNS labels/queries and determine whether the SOC can detect the structure and frequency using DNS plus client/network context |
| **Status** | ⚪ Planned — design ready; execution has not started |
| **MITRE ATT&CK** | `T1071.004 — Application Layer Protocol: DNS`; `T1572` only where implemented behavior actually fits |
| **Cyber Kill Chain** | Command & Control |
| **Core DNS evidence** | Label structure, query length, query type, parent domain, unique subdomains and frequency |
| **Safety boundary** | Synthetic, non-sensitive data only |
| **Response** | Human-approved isolation/restriction or resolver sinkhole, with before/after verification |

### What this scenario is designed to prove

The goal is to detect tunneling-like DNS behavior without over-mapping or treating every long/encoded-looking label as malicious. The final conclusion must come from raw DNS evidence and available endpoint/network context, not from an AI verdict.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🏗️ Scenario Architecture

```mermaid
flowchart LR
    V[Victim] -->|Synthetic DNS labels| R[Defender DNS Resolver]
    R --> D[tunnel.soclab...]
    R -->|DNS telemetry| SPL[Splunk Enterprise]
    SPL --> PAT["Length + Structure + Frequency<br/>+ Query-Type Analysis"]
    PAT --> AI[AI Assistance]
    PAT --> SOC[Human SOC Investigation]
    AI --> SOC
    SOC --> IR[Human IR Decision]
    IR -. block / sinkhole .-> R
    R -. post-response evidence .-> SPL
```

> The scenario stays inside the controlled namespace and uses only harmless synthetic data. T1572 is not claimed unless the implemented behavior supports it.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🔄 SOC Lifecycle & Implementation Reality

| Stage | State |
|---|---|
| **Design** | ✅ |
| **Infrastructure Reuse** | 🟡 |
| **Baseline** | ⚪ |
| **Simulate** | ⚪ |
| **Detect** | ⚪ |
| **SOC/IR** | ⚪ |
| **Verify** | ⚪ |
| **Document** | 🟡 |

> [!IMPORTANT]
> ✅ means supported by implemented project evidence. 🟡 means design/infrastructure/documentation exists but the scenario stage is not complete. ⚪ means planned and is **not presented as implemented**.


<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🎯 Objective

Generate only harmless synthetic data inside DNS labels/queries and determine whether the SOC can identify tunneling-like structure and frequency using DNS, endpoint/client and network context.

## 🏗️ Infrastructure Dependency

Reuse the Scenario 02 resolver, victim and sinkhole. Use the controlled `tunnel.soclab.abdul4rehman215.tech` namespace. Add a separate team-controlled authoritative DNS endpoint only if the final scenario requires genuine authoritative request/response behavior that cannot be demonstrated through the existing controlled path.

The shared AWS/Splunk platform is not rebuilt inside this repository. Any new AWS resource is designed in the infrastructure project and documented there after it exists.

## 🔎 Detection Focus

- long or encoded-looking DNS labels;
- query length/label structure and frequency;
- TXT/A or other query-type behavior actually generated;
- unique subdomains beneath the controlled parent;
- repeated client/process behavior;
- pre- and post-containment network/DNS evidence;

## 🌐 Network & Protocol View

- Layer 7 DNS: label structure, query type, parent domain and response behavior;
- Layer 4: UDP/TCP 53 and any controlled follow-up path;
- Layer 3: client/resolver/destination context where useful;
- Endpoint: victim/process context if collected;
- Containment: defender resolver block/sinkhole and verification;

DNS is Layer 7 evidence, but the scenario should correlate it with the Layer 3/4, endpoint, cloud or application evidence that actually helps prove the behavior.

## 📊 Planned Dashboard

The dashboard should follow one shared time range and lead the analyst from summary → behavior → correlation → raw evidence.

- Shared time range plus client, parent-domain, query-type and response filters;
- KPIs: total queries, unique subdomains, long-label count, query-type mix, active clients;
- Query frequency and label-length distribution over time;
- Top parent/subdomain patterns and TXT/A behavior;
- Client/process and network correlation where available;
- Clear pre-containment versus post-containment result;

See [`dashboard/README.md`](dashboard/README.md) for the planned layout.

## 👥 Team

| Role | Member |
|---|---|
| Project Lead / Attack Simulation | Lubaba |
| SOC Analyst | Abdul-Rehman |
| Detection Engineer | Musfira |
| IR / Defender | Sonia |

## 🔄 Scenario Workflow

This repository follows the common 20-part standard:

**Objective → Architecture → Prerequisites → Simulation → Telemetry → Detection → SPL → Alert → AI Triage → SOC Analysis → IR → Evidence → Containment → Verification → Results → MITRE → False Positives → Lessons → Reproduction → Screenshots.**

The working checklist is [`SCENARIO-RUNBOOK.md`](SCENARIO-RUNBOOK.md).

## 🗂️ Repository Navigation

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

## 🔗 Shared Project References

- [DNS Lab Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) — shared AWS, DNS, Splunk and AI foundation
- [Scenario infrastructure roadmap](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure/blob/main/00-project-design/scenario-infrastructure-roadmap.md) — future EC2/DNS/network changes owned by the infrastructure repository
- [Scenario documentation standard](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure/blob/main/00-project-design/scenario-documentation-standard.md) — common 20-part SOC workflow, dashboard and evidence rules

## ✅ Completion Condition

Detection is tuned against benign long/encoded DNS patterns, the SOC validates AI assistance against raw events, containment is approved by a human, and the final before/after evidence proves the controlled behavior no longer follows its original path.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🧠 Security Engineering Skills in Scope

| Skill area | Scenario evidence / design focus |
|---|---|
| **DNS Analysis** | Label structure, query length, parent domain, unique subdomains and query types |
| **Detection Engineering** | Frequency/structure-based behavior with deliberate false-positive testing |
| **Endpoint / Network Context** | Client/process and L3/L4 context where available |
| **MITRE Discipline** | T1071.004 primary; T1572 only when implemented behavior supports it |
| **Incident Response** | Human-approved isolation/restriction or DNS sinkhole with verification |
| **AI-Assisted SOC** | AI remains advisory and must be validated against raw evidence |

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 📚 Documentation Model

This scenario repository is a **case/execution layer** built on the shared [DNS Lab Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure). It intentionally separates:

- **Design / prerequisites** — what must exist before the exercise;
- **Simulation / ground truth** — what the authorized operator actually generated;
- **Detection Engineering** — baseline, hunting, tuned detection and validation;
- **SOC investigation** — defender-visible evidence and human disposition;
- **IR / containment** — independently justified response and verification;
- **Evidence** — screenshots and structured artifacts that prove the final claims.

> [!NOTE]
> Planned work stays labelled as planned. This repository does not create fake screenshots, fake SPL results, fake ML metrics or fake incident outcomes to make a scenario look complete.

<div align="center">

### DNSentinel Lab
**Build the telemetry. Prove the detection. Investigate the evidence. Verify the response.**

[🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [🔎 Scenario 01](https://github.com/DNSentinel-Lab/Scenario-01-DNS-Recon) · [🧬 Scenario 02](https://github.com/DNSentinel-Lab/Scenario-02-DGA) · [🔄 Scenario 03](https://github.com/DNSentinel-Lab/Scenario-03-Fast-Flux) · [**🛰️ Scenario 04**](https://github.com/DNSentinel-Lab/Scenario-04-DNS-Tunneling)

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=120&section=footer" width="100%" alt="footer" />
