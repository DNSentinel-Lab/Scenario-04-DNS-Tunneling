<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=225&section=header&text=Scenario%2004%20%E2%80%94%20DNS%20Tunneling&fontSize=38&fontColor=ffffff&animation=fadeIn&fontAlignY=36&desc=DNSentinel%20Lab%20%7C%20Infrastructure%20Ready%20%E2%80%A2%20Detection%20Engineering%20Next&descSize=16&descAlignY=58&descColor=20E3B2" width="100%" alt="Scenario 04 — DNS Tunneling" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=21&duration=2900&pause=900&color=20E3B2&center=true&vCenter=true&repeat=true&width=1050&height=72&lines=Victim+%E2%86%92+Unbound+%E2%86%92+Public+DNS+%E2%86%92+Controlled+BIND+Authority;Baseline+%E2%86%92+Detect+%E2%86%92+AI+Assist+%E2%86%92+SOC+%E2%86%92+IR+%E2%86%92+Verify" alt="Scenario workflow animation" />

![Scenario](https://img.shields.io/badge/Scenario_04-Infrastructure_Ready-14B8A6?style=for-the-badge)
![AWS](https://img.shields.io/badge/AWS-Security_Lab-FF9900?style=for-the-badge&logo=amazonwebservices&logoColor=white)
![Splunk](https://img.shields.io/badge/Splunk-Enterprise-000000?style=for-the-badge&logo=splunk&logoColor=white)
![DNS](https://img.shields.io/badge/DNS-Security-00B8D9?style=for-the-badge)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=for-the-badge)
![Unbound](https://img.shields.io/badge/Unbound-Defender_DNS-4C8BF5?style=for-the-badge)
![BIND](https://img.shields.io/badge/BIND-Authoritative_DNS-6A5ACD?style=for-the-badge)
![AI](https://img.shields.io/badge/AI-Shared_Foundation-7B2CBF?style=for-the-badge)

<br/>

![Stars](https://img.shields.io/github/stars/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Forks](https://img.shields.io/github/forks/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Last Commit](https://img.shields.io/github/last-commit/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Repo Size](https://img.shields.io/github/repo-size/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Issues](https://img.shields.io/github/issues/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)

**A controlled DNS tunneling-pattern case file using synthetic, non-sensitive data over a real defender resolver and a team-controlled public authoritative DNS path.**

[🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [🔎 Scenario 01](https://github.com/DNSentinel-Lab/Scenario-01-DNS-Recon) · [🧬 Scenario 02](https://github.com/DNSentinel-Lab/Scenario-02-DGA) · [🔄 Scenario 03](https://github.com/DNSentinel-Lab/Scenario-03-Fast-Flux) · [**🛰️ Scenario 04**](https://github.com/DNSentinel-Lab/Scenario-04-DNS-Tunneling)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🎯 Mission Brief

| Field | Scenario record |
|---|---|
| **Mission** | Generate harmless synthetic tunneling-like DNS labels/queries and determine whether the SOC can detect structure, uniqueness and timing using real resolver telemetry |
| **Current status** | 🟢 Infrastructure Ready — Detection Engineering next; official exercise not started |
| **Primary MITRE ATT&CK** | `T1071.004 — Application Layer Protocol: DNS` |
| **Conditional mapping** | `T1572` is not claimed unless a later implementation genuinely encapsulates another protocol |
| **Cyber Kill Chain** | Command & Control context |
| **Core DNS evidence** | Label/qname length, unique children, parent concentration, frequency/inter-arrival, query type, client and rcode |
| **Safety boundary** | Synthetic, non-sensitive test data only; project-owned/authorized infrastructure |
| **Response path** | Human-approved Unbound RPZ / sinkhole only after SOC → IR validation |

> **Core question:** can the team distinguish tunneling-like DNS structure from ordinary DNS noise, investigate it without inventing attribution, and prove a proportionate response changed the observed network outcome?

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🚦 Current Workstream State

| Workstream | Status | Owner |
|---|---|---|
| Scenario 04 infrastructure engineering | ✅ Complete | **Lubaba** |
| Detection Engineering / Dashboard / Alert / Scenario AI | ⏳ Next | **Abdul-Rehman** |
| Official simulation / operator ground truth | ⏳ Pending | **Sonia** |
| SOC investigation / threat hunt | ⏳ Pending | **Lubaba** |
| IR validation / response decision | ⏳ Pending | **Musfira** |
| RPZ/sinkhole verification | ⏳ Pending — only if justified by IR | Musfira + shared defender infrastructure |
| Final ground-truth comparison / closeout | ⏳ Pending | Team |

The infrastructure implementation credit is separate from the rotating official exercise role. **Lubaba built the Scenario 04 infrastructure extension; Sonia remains the current canonical Project Lead / Simulation owner for the later official run.**

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🏗️ What Is Actually Built

Scenario 04 reuses the Scenario 02 defender platform:

```text
dns-soc-victim01     10.50.30.20   controlled client
dns-soc-resolver01   10.50.30.10   Unbound defender resolver
dns-soc-sinkhole01   10.50.30.30   reusable private sinkhole
dns-soc-splunk01     10.50.20.10   Splunk Enterprise + shared AI bridge
```

One scenario-specific host was added:

```text
dns-tunnel-auth01    10.60.10.30
Ubuntu 24.04 / BIND 9 authoritative-only
Zone: tunnel.soclab.abdul4rehman215.tech
```

The shared infrastructure repository contains the full implementation, commands, configuration and curated screenshots:

**[Scenario 04 DNS Tunneling Infrastructure →](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure/blob/main/02-aws-build/10-scenario-04-dns-tunneling.md)**

This scenario repository intentionally does **not duplicate the infrastructure screenshot set**.

## 🌐 Proven DNS Path

```mermaid
flowchart LR
    V["💻 Victim<br/>10.50.30.20"] -->|System DNS| R["🛡️ Unbound<br/>10.50.30.10"]
    R --> U["☁️ AWS / Public<br/>Recursive DNS"]
    U --> D["🌍 Route 53<br/>tunnel NS delegation"]
    D --> A["🛰️ BIND Authority<br/>dns-tunnel-auth01<br/>10.60.10.30"]
    A --> G["🧾 Query Ground Truth"]
    R --> S["🟢 Splunk<br/>Existing resolver telemetry"]
    RPZ["📋 Human-Approved RPZ<br/>later only"] -.-> R
    R -.-> H["🎯 Sinkhole<br/>10.50.30.30"]

    classDef endpoint fill:#172554,stroke:#60a5fa,stroke-width:2px,color:#fff;
    classDef resolver fill:#083344,stroke:#22d3ee,stroke-width:2px,color:#fff;
    classDef cloud fill:#312e81,stroke:#a78bfa,stroke-width:2px,color:#fff;
    classDef auth fill:#134e4a,stroke:#2dd4bf,stroke-width:2px,color:#fff;
    classDef evidence fill:#422006,stroke:#f59e0b,stroke-width:2px,color:#fff;
    classDef splunk fill:#052e16,stroke:#4ade80,stroke-width:2px,color:#fff;
    classDef response fill:#450a0a,stroke:#f87171,stroke-width:2px,color:#fff;

    class V endpoint;
    class R resolver;
    class U,D cloud;
    class A auth;
    class G evidence;
    class S splunk;
    class RPZ,H response;
```

Infrastructure validation proved:

- BIND is authoritative-only and recursion is disabled;
- wildcard child labels receive authoritative answers;
- BIND query logging records the received qname;
- Route 53 delegates `tunnel.soclab...` to the controlled authority;
- the victim still uses `10.50.30.10` as its normal DNS server;
- Unbound records the original victim `10.50.30.20`;
- the authoritative server receives the same fresh qname;
- three fresh unique subdomains crossed the complete path.

### Attribution boundary

The two DNS views answer different questions:

```text
Unbound log  -> Which lab client made the query?
BIND log     -> Did the delegated authoritative endpoint receive the qname?
```

The public BIND server sees upstream recursive-resolver addresses, not the private victim address. That distinction must be preserved during the SOC investigation.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## ⚠️ Operational Constraint Before Execution

`dns-tunnel-auth01` used public IPv4 `98.93.89.38` during infrastructure validation, but that address is **not an Elastic IP**. The account had already reached its regional Elastic-IP quota.

Before any official run:

1. confirm the EC2 public IPv4 has not changed;
2. if it changed, update Route 53 `ns1.tunnel`;
3. update the BIND zone A records and SOA serial;
4. validate/restart BIND;
5. repeat public and victim smoke tests.

This is a deployment constraint, not a detection result.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🧠 Detection Engineering — Next Phase

The next owner is **Abdul-Rehman**. Detection work begins with real data, not with a copied threshold.

The planned order is:

```text
Telemetry pre-flight
    ↓
Normal DNS baseline
    ↓
Feature extraction
    ↓
Threshold-free hunting
    ↓
Small controlled engineering positive
    ↓
Benign lookalike tests
    ↓
Detection v1.0
    ↓
Dashboard + scheduled alert
    ↓
Scenario AI profile
    ↓
Validation / freeze
    ↓
Official exercise
```

The detailed engineering checklist is in [`DETECTION-ENGINEERING-PLAN.md`](DETECTION-ENGINEERING-PLAN.md).

### Detection dimensions

The final search should combine several signals rather than treating one long hostname as malicious:

- full qname length;
- longest/first-label length;
- label count and character mix;
- optional entropy/randomness feature;
- query count and queries/minute;
- unique qnames / unique child labels;
- concentration under the same parent domain;
- inter-arrival timing;
- qtype diversity or unusual query types actually generated;
- client identity and response code.

Final thresholds are **not frozen yet**. They must come from the baseline, controlled positive and benign lookalike tests.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🎬 Official Execution — Still Pending

Once Detection v1.0 is frozen, the information-separated exercise follows:

```text
Sonia — controlled simulation + private ground truth
        ↓
Frozen Detection v1.0
        ↓
Shared AI assistance
        ↓
Lubaba — independent SOC investigation
        ↓
Evidence-backed SOC → IR handoff
        ↓
Musfira — independent IR validation
        ↓
Human response decision
        ↓
RPZ/sinkhole only if justified
        ↓
Before/after verification
        ↓
Safe reset
        ↓
Ground-truth reveal + final comparison
```

The full operating checklist is maintained in [`SCENARIO-RUNBOOK.md`](SCENARIO-RUNBOOK.md).

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🧪 What We Will — and Will Not — Claim

**We will document:** controlled tunneling-like DNS behavior using synthetic, non-sensitive data over a real resolver/authoritative path.

**We will not claim:**

- malware exfiltration;
- endpoint compromise;
- malicious C2 attribution without evidence;
- `T1572` without an implementation that genuinely supports it;
- successful containment before the IR phase actually performs and verifies it;
- a completed Scenario 04 while only infrastructure/detection work exists.

If a tiny decoder/reassembly utility is later built to reconstruct the synthetic test message from received labels, it will be documented as **simulation tooling**. It does not exist yet.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🗂️ Repository Guide

| Area | Purpose | Current state |
|---|---|---|
| [`SCENARIO-RUNBOOK.md`](SCENARIO-RUNBOOK.md) | Full scenario operating sequence | Infrastructure gate updated; execution pending |
| [`DETECTION-ENGINEERING-PLAN.md`](DETECTION-ENGINEERING-PLAN.md) | Next-phase engineering checklist | Ready |
| [`spl/`](spl/) | Baseline, hunting, detection and validation SPL | Awaiting real engineering work |
| [`dashboard/`](dashboard/) | Analyst dashboard / exported artifact | Awaiting stable fields |
| [`ai/`](ai/) | Scenario-specific AI payload/profile | Awaiting frozen detection fields |
| [`evidence/`](evidence/) | Structured official scenario evidence | Reserved for later phases |
| [`screenshots/`](screenshots/) | Scenario-execution screenshots | Reserved; infrastructure screenshots stay in shared repo |
| [`ir/`](ir/) | IR decision, containment, verification and reset | Awaiting official exercise |

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 👥 Current Canonical Roles

| Role | Owner |
|---|---|
| 🎯 Project Lead / Simulation | [Sonia](https://github.com/sonia11mansha415) |
| 🔍 SOC Analyst / Threat Hunter | [Lubaba](https://github.com/lubaba1513-pixel) |
| 🛠️ Detection Engineer / AI Integrator | [Abdul-Rehman](https://github.com/abdul4rehman215) |
| 🛡️ Incident Responder / Defender | [Musfira](https://github.com/MUSFIRA-ZAFAR) |

> **Infrastructure implementation credit:** Lubaba prepared the Scenario 04 AWS/BIND/Route 53 infrastructure before the rotating official exercise begins.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

### **Infrastructure is ready. Detection comes next. Evidence still owns the verdict.**

[🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [🔎 Scenario 01](https://github.com/DNSentinel-Lab/Scenario-01-DNS-Recon) · [🧬 Scenario 02](https://github.com/DNSentinel-Lab/Scenario-02-DGA) · [🔄 Scenario 03](https://github.com/DNSentinel-Lab/Scenario-03-Fast-Flux) · [⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=90&section=footer" width="100%" alt="footer" />
