<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,12,18,24,30&height=190&section=header&text=%F0%9F%92%BB%20Operator%20Command%20Reference&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Environment%20Checks%20%2B%20Authoritative%20Proof&descSize=15&descAlignY=61&descColor=8B5CF6" width="100%" alt="💻 Operator Command Reference" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=8B5CF6&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Resolver%20Check%20%E2%86%92%20Delegation%20%E2%86%92%20Authoritative%20Host%20%E2%86%92%20BIND%20Health%20%E2%86%92%20RPZ%20Preflight%20%E2%86%92%20Receipt" alt="💻 Operator Command Reference workflow" />

![Commands](https://img.shields.io/badge/Operator_Commands-7-8B5CF6?style=flat-square) ![Safety](https://img.shields.io/badge/Scope-Read_Only_%2F_Validation-2EA44F?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🎯 Operator Workspace](../README.md) · [📖 Ground Truth](../ground-truth.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 💻 Scenario 04 — Operator Command Map

These scripts preserve the clean environment and receipt checks that materially supported the official operator session.

```mermaid
flowchart LR
    A["🖥️ Victim Resolver"] --> B["🌐 Delegation"]
    B --> C["🛰️ Authoritative Host"]
    C --> D["✅ BIND Health"]
    D --> E["🔎 Endpoint Identity"]
    E --> F["🛡️ RPZ Preflight"]
    F --> G["🧾 Authoritative Receipt"]
```

| File | Purpose |
|---|---|
| [`01-victim-resolver-check.sh`](01-victim-resolver-check.sh) | confirm victim uses defender resolver |
| [`02-delegation-check.sh`](02-delegation-check.sh) | validate child NS/SOA path |
| [`03-authoritative-host-confirm.sh`](03-authoritative-host-confirm.sh) | confirm correct EC2 host before BIND checks |
| [`04-authoritative-health.sh`](04-authoritative-health.sh) | validate BIND service, port 53 and query log |
| [`05-authoritative-endpoint-identity.sh`](05-authoritative-endpoint-identity.sh) | re-check public authoritative endpoint |
| [`06-rpz-preflight.sh`](06-rpz-preflight.sh) | prove Scenario 04 containment is not already enforcing |
| [`07-authoritative-receipt.sh`](07-authoritative-receipt.sh) | recover official `s04-01`…`s04-07` BIND receipt |

The exact finite client is [`../scripts/scenario04-tunnel-client.py`](../scripts/scenario04-tunnel-client.py).

> Preservation-only housekeeping was intentionally excluded from the public command index.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🎯 Operator Workspace](../README.md) · [📖 Operator Story](../PROJECT-LEAD-ADVERSARY.md)

<br/>

**Commands explain the evidence path; they do not replace the evidence.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
