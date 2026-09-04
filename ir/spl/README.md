<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=190&section=header&text=%F0%9F%94%8E%20IR%20Independent%20Validation%20SPL&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Musfira%20%C2%B7%20Evidence-Limited%20Defender%20Search%20Path&descSize=15&descAlignY=61&descColor=14B8A6" width="100%" alt="🔎 IR Independent Validation SPL" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Endpoint%20Check%20%E2%86%92%20Data%20Inventory%20%E2%86%92%20DNS%20Validation%20%E2%86%92%20VPC%20Flow%20%E2%86%92%20HTTPS%20Baseline;CloudTrail%20Context%20%E2%86%92%20Recurrence%20%E2%86%92%20Containment%20Verification" alt="🔎 IR Independent Validation SPL workflow" />

![IR_SPL](https://img.shields.io/badge/IR_SPL-11_Searches-14B8A6?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🛡️ IR Workspace](../README.md) · [💻 Command Ledger](../IR-COMMAND-LEDGER.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 04 — IR SPL Lifecycle

These searches support **independent validation** of the SOC handoff, network/change context, recurrence and containment proof.

```mermaid
flowchart LR
    A["🖥️ Endpoint Check"] --> B["🗂️ Data Sources"]
    B --> C["📡 DNS Validation"]
    C --> D["🌐 VPC Flow"]
    D --> E["🔗 Post-Burst HTTPS"]
    E --> F["📊 Pre-Burst Baseline"]
    F --> G["☁️ CloudTrail"]
    G --> H["🔁 Recurrence"]
    H --> I["✅ Containment Proof"]
```

| Search | Purpose |
|---|---|
| [`01-endpoint-host-telemetry-check.spl`](01-endpoint-host-telemetry-check.spl) | determine whether direct victim endpoint evidence exists |
| [`02-data-source-inventory.spl`](02-data-source-inventory.spl) | inventory defender data available to IR |
| [`03-independent-dns-validation.spl`](03-independent-dns-validation.spl) | independently reconstruct Scenario 04 DNS query/reply facts |
| [`04-vpc-flow-victim-window.spl`](04-vpc-flow-victim-window.spl) | inspect victim network activity around the event |
| [`05-post-burst-outbound-https.spl`](05-post-burst-outbound-https.spl) | identify post-burst HTTPS destinations |
| [`06-preburst-destination-baseline.spl`](06-preburst-destination-baseline.spl) | test whether those destinations predated the burst |
| [`07-cloudtrail-broad-context.spl`](07-cloudtrail-broad-context.spl) | broad AWS change context |
| [`08-cloudtrail-write-actions.spl`](08-cloudtrail-write-actions.spl) | narrow to write/change events |
| [`09-started-instance-ids.spl`](09-started-instance-ids.spl) | retrieve instance IDs for optional mapping |
| [`10-recurrence-validation.spl`](10-recurrence-validation.spl) | test for later frozen-pattern recurrence |
| [`11-containment-verification.spl`](11-containment-verification.spl) | verify RPZ response evidence in Splunk |

See [`../IR-COMMAND-LEDGER.md`](../IR-COMMAND-LEDGER.md) for the clean action/search index.

> **Boundary:** IR strengthened the case with defender evidence; it did not silently import the operator's private ground truth.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🛡️ IR Workspace](../README.md) · [💻 Command Ledger](../IR-COMMAND-LEDGER.md) · [🧾 Evidence](../evidence/README.md)

<br/>

**Independent validation is what turns a handoff into an IR conclusion.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
