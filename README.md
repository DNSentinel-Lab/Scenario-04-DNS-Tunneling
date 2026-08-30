<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=225&section=header&text=Scenario%2004%20%E2%80%94%20DNS%20Tunneling&fontSize=38&fontColor=ffffff&animation=fadeIn&fontAlignY=36&desc=DNSentinel%20Lab%20%7C%20Detection%20Engineering%20Complete%20%E2%80%A2%20Official%20Exercise%20Next&descSize=16&descAlignY=58&descColor=20E3B2" width="100%" alt="Scenario 04 — DNS Tunneling" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=21&duration=2900&pause=900&color=20E3B2&center=true&vCenter=true&repeat=true&width=1050&height=72&lines=Telemetry+%E2%86%92+Baseline+%E2%86%92+Features+%E2%86%92+Hunt+%E2%86%92+Detect+%E2%86%92+Validate;Dashboard+%E2%86%92+Scheduled+Alert+%E2%86%92+AI+Assist+%E2%86%92+Freeze+%E2%86%92+SOC-Ready" alt="Scenario 04 engineering workflow" />

![Scenario](https://img.shields.io/badge/Scenario_04-Detection_Engineering_Complete-14B8A6?style=for-the-badge)
![Detection](https://img.shields.io/badge/Detection-v1.0_Frozen-2EA44F?style=for-the-badge)
![Splunk](https://img.shields.io/badge/Splunk-Enterprise-000000?style=for-the-badge&logo=splunk&logoColor=white)
![Dashboard](https://img.shields.io/badge/Dashboard-Studio-F59E0B?style=for-the-badge)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=for-the-badge)
![AI](https://img.shields.io/badge/AI-dns__tunneling__v1-7B2CBF?style=for-the-badge)

<br/>

![Stars](https://img.shields.io/github/stars/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Forks](https://img.shields.io/github/forks/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Last Commit](https://img.shields.io/github/last-commit/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)
![Repo Size](https://img.shields.io/github/repo-size/DNSentinel-Lab/Scenario-04-DNS-Tunneling?style=flat-square)

**A controlled DNS tunneling-pattern case file built from real defender DNS telemetry, explainable SPL, positive and benign validation, scheduled alerting, Dashboard Studio and human-validated AI assistance.**

[🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [🔎 Scenario 01](https://github.com/DNSentinel-Lab/Scenario-01-DNS-Recon) · [🧬 Scenario 02](https://github.com/DNSentinel-Lab/Scenario-02-DGA) · [🔄 Scenario 03](https://github.com/DNSentinel-Lab/Scenario-03-Fast-Flux) · [**🛰️ Scenario 04**](https://github.com/DNSentinel-Lab/Scenario-04-DNS-Tunneling)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🎯 Mission Brief

| Field | Scenario record |
|---|---|
| **Mission** | Detect DNS tunneling-like structure using explainable resolver-side behavior before the official information-separated exercise |
| **Detection Engineer / AI Integrator** | [**Abdul-Rehman**](https://github.com/abdul4rehman215) |
| **Detection status** | ✅ **Complete / SOC-Ready** |
| **Production rule** | `Scenario 04 - Possible DNS Tunneling Behavior` — **v1.0 frozen** |
| **Primary MITRE ATT&CK** | `T1071.004 — Application Layer Protocol: DNS` |
| **T1572** | Not claimed in this engineering phase |
| **Primary telemetry** | Unbound on `dns-soc-resolver01` → `index=dns_soc_dns` |
| **AI profile** | `dns_tunneling_v1` — shared bridge reused and validated |
| **Safety boundary** | Synthetic, non-sensitive validation traffic only; project-owned/authorized DNS namespace |
| **Official exercise** | ⏳ Not started; Sonia → Lubaba → Musfira phases remain separate |

> **Engineering question:** can a rule distinguish many fresh long child labels under one parent from ordinary long DNS names and repeated benign lookalikes, while still giving the analyst raw evidence and keeping AI advisory?

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🚦 Current Workstream State

| Workstream | Status | Owner |
|---|---|---|
| Scenario 04 infrastructure engineering | ✅ Complete | **Lubaba** |
| Detection Engineering | ✅ Complete | **Abdul-Rehman** |
| Dashboard Studio | ✅ Complete / validated | **Abdul-Rehman** |
| Scheduled Detection v1.0 | ✅ Frozen / validated | **Abdul-Rehman** |
| Scenario 04 AI evidence profile | ✅ Validated | **Abdul-Rehman** |
| Official simulation / private ground truth | ⏳ Next | **Sonia** |
| SOC investigation / threat hunt | ⏳ Pending | **Lubaba** |
| IR validation / response decision | ⏳ Pending | **Musfira** |
| RPZ/sinkhole verification | ⏳ Pending — only if justified | Musfira + shared defender platform |
| Ground-truth comparison / closeout | ⏳ Pending | Team |

The infrastructure implementation credit is separate from the rotating official exercise roles. Lubaba prepared the Scenario 04 AWS/BIND/Route 53 extension; Abdul-Rehman then owned the Detection Engineering department work; Sonia remains the official Simulation Operator for the later live exercise.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🌐 Defender Evidence Path

```text
dns-soc-victim01 10.50.30.20
        ↓
dns-soc-resolver01 10.50.30.10 / Unbound
        ↓
Splunk: index=dns_soc_dns
        ↓
public DNS / Route 53 nested delegation
        ↓
dns-tunnel-auth01 10.60.10.30 / BIND authoritative-only
```

Unbound is the primary client-attribution source because it records the original victim. BIND remains useful authoritative ground truth showing that fresh child labels reached the controlled public DNS endpoint. The full AWS/BIND build stays in the [shared Infrastructure repository](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure/blob/main/02-aws-build/10-scenario-04-dns-tunneling.md).

> [!WARNING]
> `dns-tunnel-auth01` used auto-assigned public IPv4 `98.93.89.38` during the validated build because the account had reached its Elastic-IP quota. Before the official exercise, re-check the current public IPv4 and Route 53/BIND delegation rather than assuming the old address is still valid.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🧭 From Raw DNS to a Frozen Detection

```mermaid
flowchart LR
    T["🧾 Trusted Unbound Telemetry"] --> B["📏 Clean Baseline"]
    B --> F["🧩 Feature Engineering"]
    F --> H["🔎 Threshold-Free Hunt"]
    H --> D["📊 Analyst Dashboard"]
    D --> P["🧪 Positive Validation"]
    P --> N["✅ Benign Challenge"]
    N --> R["🎯 Detection v1.0"]
    R --> A["⏱️ Scheduled Alert"]
    A --> E["🧾 Analyst Evidence + Raw Drilldown"]
    E --> AI["🤖 Scenario AI Profile"]
    AI --> Z["🔒 Freeze / SOC-Ready"]

    classDef dns fill:#083344,stroke:#22d3ee,stroke-width:2px,color:#fff;
    classDef analysis fill:#172554,stroke:#60a5fa,stroke-width:2px,color:#fff;
    classDef detect fill:#052e16,stroke:#4ade80,stroke-width:2px,color:#fff;
    classDef ai fill:#3b0764,stroke:#c084fc,stroke-width:2px,color:#fff;
    classDef freeze fill:#422006,stroke:#f59e0b,stroke-width:2px,color:#fff;

    class T dns;
    class B,F,H,D,P,N analysis;
    class R,A,E detect;
    class AI ai;
    class Z freeze;
```

This phase did not start from a prebuilt signature. Abdul-Rehman first verified what the resolver actually logged, measured how the data arrived, built a clean baseline, and then let the observed DNS structure decide which features were worth keeping.

**[Read the complete Detection Engineering story →](detection-engineering/DETECTION-ENGINEERING.md)**

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🔬 Detection v1.0 at a Glance

The baseline changed the design. Whole qnames could legitimately reach **43 characters**, while the clean-normal **first-label maximum was 16** and normal parent/window behavior reached **4 unique child labels**. The controlled positive produced **5–7 fresh 32-character child labels per minute**; the benign repeated-long-label challenge produced only **one unique child**.

The frozen rule therefore uses a combination:

```text
unique_child_labels >= 5
AND long_label_count >= 5
AND max_first_label_length > 16
```

where `long_label_count` counts child labels longer than the measured clean-normal first-label maximum.

### Why this matters

```text
long hostname alone   ≠ tunnel
high query count alone ≠ tunnel
A record alone         ≠ tunnel
fresh long children + parent concentration + short-window repetition = useful lead
```

The production SPL is preserved in [`spl/detection.spl`](spl/detection.spl). The same frozen logic is also preserved in [`spl/validation.spl`](spl/validation.spl).

> [!NOTE]
> Detection v1.0 is intentionally explainable, not universal. A deliberately low-and-slow tunnel that stays inside normal child-label length and uniqueness behavior may evade this version.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 📊 Analyst Investigation Surface

**Scenario 04 — DNS Tunneling Investigation** was built in Splunk Dashboard Studio after the feature fields were stable.

![Scenario 04 DNS Tunneling Investigation dashboard](screenshots/detection-engineering/05-dns-tunneling-investigation-dashboard.png)

*The final Dashboard Studio view brings volume, child-label diversity, label length, client context, parent concentration, qtype/rcode context and raw DNS pivots into one analyst surface.*

The final dashboard includes:

- Total DNS Queries
- Unique Qnames
- Unique Child Labels
- Active Clients
- DNS Queries per Minute
- First-Label Length Over Time
- Query Type Mix
- Response Code Mix
- Top Parent Domains
- DNS Behavior Window Summary
- Raw DNS Investigation

The exported dashboard definition is preserved in [`dashboard/scenario-04-dns-tunneling-investigation-dashboard.json`](dashboard/scenario-04-dns-tunneling-investigation-dashboard.json).

A useful QA lesson also came from the export: the first JSON review exposed a Query Type / Response Code datasource swap even though both underlying searches were valid. The bindings were corrected before the dashboard was frozen.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🧪 Validation — Prove Both Sides

The rule was not accepted because it fired once.

### Controlled positive

Twelve synthetic, non-sensitive DNS queries used fresh 32-hex-character child labels under the controlled Scenario 04 namespace. The activity crossed a minute boundary and produced two useful windows:

| Window | Queries | Unique children | First-label length | Qtype |
|---|---:|---:|---:|---|
| First minute | 5 | 5 | 32 | A |
| Second minute | 7 | 7 | 32 | A |

### Benign lookalike

A fixed long child label was then queried 12 times. It looked long and repetitive, but it produced only **one unique child**. No new detection row was created.

That gave the rule a meaningful acceptance test:

```text
controlled tunneling-like structure → detect
repeated benign long label          → do not create a new high-confidence result
```

The full acceptance record is in [`detection-engineering/detection-engineering-validation.md`](detection-engineering/detection-engineering-validation.md).

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## ⏱️ From Search to Scheduled Detection

The engineering finish line was operational, not manual.

```text
Alert: Scenario 04 - Possible DNS Tunneling Behavior
Cron: * * * * *
Earliest: -10m@m
Latest: -1m@m
Trigger: Number of Results > 0
Trigger mode: Once
Suppression: 10 minutes
Severity: Medium
Actions:
  - Add to Triggered Alerts
  - Webhook → shared AI bridge
```

The lookback was chosen after ingestion timing was measured. Current DNS events were near real-time, but older delayed/backlogged events in the timing sample reached roughly 8–9 minutes. `latest=-1m@m` avoids evaluating a still-forming minute, while the 10-minute lookback gives the scheduled search room to tolerate delayed delivery.

The scheduled result returns a concise analyst evidence row and preserves a separate raw-event pivot back to the underlying Unbound query/reply pairs.

**[Scheduled alert configuration →](spl/scheduled-alert.md)** · **[Freeze record →](detection-engineering/FREEZE-RECORD.md)**

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🤖 Scenario AI — Evidence In, Advice Out

The shared AI platform was reused rather than rebuilt.

```text
Scheduled Detection v1.0
        ↓
http://dns-soc-ai-bridge:5000/splunk-webhook
        ↓
OpenAI
        ↓
Splunk HEC
        ↓
index=dns_soc_ai
        ↓
human validation
```

Scenario identifiers:

```text
scenario_id = scenario-04-dns-tunneling
ai_profile  = dns_tunneling_v1
```

The analyst-ready result was extended with the bridge wrapper fields `alert_id`, `alert_name`, `scenario`, `severity`, `event_time`, `source` and `evidence_json` without changing the behavior of Detection v1.0.

The returned AI event was then checked against the source evidence. It correctly described the evaluated client, query count, A-record behavior, 32-character first labels, 67-character FQDNs and `T1071.004`, while explicitly avoiding a claim that the supplied evidence proved tunneling or exfiltration.

`human_validation_required=true` remained preserved.

**[Scenario 04 AI evidence mapping →](ai/scenario-04-ai-mapping.md)**

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🧠 Engineering Lessons Worth Keeping

The strongest lessons came from decisions, not from every failed attempt:

- aggregate ingestion metrics can hide a healthy current pipeline;
- Unbound query/reply pairs must be understood before counting DNS behavior;
- engineering traffic can contaminate a baseline if it is not separated explicitly;
- first-label structure was more useful than whole-qname length alone;
- extreme character ratios on tiny labels can be mathematically interesting but operationally weak;
- Dashboard Studio visual labels and datasource bindings must both be audited;
- analyst-ready output and AI-schema-ready output are different integration contracts.

**[Read the curated troubleshooting and lessons record →](detection-engineering/TROUBLESHOOTING-AND-LESSONS.md)**

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🗂️ Repository Guide

| Area | What to open | State |
|---|---|---|
| Detection Engineering story | [`detection-engineering/DETECTION-ENGINEERING.md`](detection-engineering/DETECTION-ENGINEERING.md) | ✅ Complete |
| Validation matrix | [`detection-engineering/detection-engineering-validation.md`](detection-engineering/detection-engineering-validation.md) | ✅ PASS |
| Freeze / change control | [`detection-engineering/FREEZE-RECORD.md`](detection-engineering/FREEZE-RECORD.md) | ✅ Frozen |
| Lessons | [`detection-engineering/TROUBLESHOOTING-AND-LESSONS.md`](detection-engineering/TROUBLESHOOTING-AND-LESSONS.md) | ✅ Curated |
| SPL workspace | [`spl/`](spl/) | ✅ Baseline / hunt / v1.0 / validation / supporting searches |
| Dashboard Studio | [`dashboard/`](dashboard/) | ✅ Validated export |
| Scenario AI mapping | [`ai/`](ai/) | ✅ Validated |
| Evidence exports | [`evidence/`](evidence/) | ✅ Detection Engineering evidence complete |
| Curated screenshots | [`screenshots/`](screenshots/) | ✅ Detection Engineering set complete |
| IR workspace | [`ir/`](ir/) | ⏳ Official exercise pending |
| Full runbook | [`SCENARIO-RUNBOOK.md`](SCENARIO-RUNBOOK.md) | Detection frozen; simulation/SOC/IR next |

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 👥 Current Canonical Roles

| Role | Owner |
|---|---|
| 🎯 Project Lead / Simulation | [Sonia](https://github.com/sonia11mansha415) |
| 🔍 SOC Analyst / Threat Hunter | [Lubaba](https://github.com/lubaba1513-pixel) |
| 🛠️ Detection Engineer / AI Integrator | [Abdul-Rehman](https://github.com/abdul4rehman215) |
| 🛡️ Incident Responder / Defender | [Musfira](https://github.com/MUSFIRA-ZAFAR) |

> **Current boundary:** Detection v1.0, the dashboard, scheduled alert and Scenario 04 AI profile are frozen before the official exercise. The later SOC and IR roles must investigate this frozen capability independently.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 🎬 What Comes Next

```text
Sonia — official controlled simulation + private ground truth
        ↓
Frozen Detection v1.0
        ↓
Shared AI assistance
        ↓
Lubaba — independent SOC investigation
        ↓
SOC → IR handoff
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

The repository does **not** yet claim official containment, exfiltration, malware compromise, a completed SOC investigation or a completed Scenario 04.

<div align="center">

### **Detection is frozen. Evidence is ready. The official case is next.**

[🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [🔎 Scenario 01](https://github.com/DNSentinel-Lab/Scenario-01-DNS-Recon) · [🧬 Scenario 02](https://github.com/DNSentinel-Lab/Scenario-02-DGA) · [🔄 Scenario 03](https://github.com/DNSentinel-Lab/Scenario-03-Fast-Flux) · [⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=90&section=footer" width="100%" alt="footer" />
