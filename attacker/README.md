<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,12,18,24,30&height=190&section=header&text=%F0%9F%8E%AF%20Private%20Exercise%20Operator%20%2F%20Project%20Lead&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Sonia%20%C2%B7%20One%20Finite%20Lab-Only%20DNS%20Tunneling%20Session&descSize=15&descAlignY=61&descColor=8B5CF6" width="100%" alt="🎯 Private Exercise Operator / Project Lead" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=8B5CF6&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Preflight%20%E2%86%92%20Resolver%20Path%20%E2%86%92%20Execute%20Once%20%E2%86%92%20Authoritative%20Receipt%20%E2%86%92%20Stop;Preserve%20Ground%20Truth%20%E2%86%92%20Keep%20It%20Private%20%E2%86%92%20Reveal%20After%20Defender%20Decisions%20Lock" alt="🎯 Private Exercise Operator / Project Lead workflow" />

![Owner](https://img.shields.io/badge/Owner-Sonia-8B5CF6?style=flat-square) ![Execution](https://img.shields.io/badge/Official_Execution-Complete-2EA44F?style=flat-square) ![Boundary](https://img.shields.io/badge/Scope-Project_Owned_DNS-22D3EE?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎬 Execution](../SCENARIO-04-EXECUTION.md) · [💻 Commands](commands/README.md) · [🎭 Exercise](../exercise/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🎯 Scenario 04 Operator Workspace

Sonia generated one finite, controlled tunneling-like DNS pattern from `dns-soc-victim01` while exact operator ground truth remained hidden from SOC and IR until their decisions were complete.

## 🚦 Execution Snapshot

| Field | Final ground truth |
|---|---|
| Operator | Sonia |
| Client | `scripts/scenario04-tunnel-client.py` |
| Namespace | `tunnel.soclab.abdul4rehman215.tech` |
| Queries | **7** |
| Unique child labels | **7** |
| Encoding | Base32-derived harmless synthetic training message |
| Query type | A |
| Spacing | 2 seconds |
| Resolver path | victim → defender Unbound → public DNS → authoritative BIND |
| Official run discipline | one finite session |
| Defender feedback | not used to steer execution |

## 🔁 Operator Flow

```mermaid
flowchart LR
    A["🔐 Preflight"] --> B["🌐 Resolver Path"]
    B --> C["🎯 Execute Once"]
    C --> D["🛰️ Authoritative Receipt"]
    D --> E["🛑 Client Exit"]
    E --> F["🧾 Preserve Ground Truth"]
    F --> G["🔒 Keep Hidden"]
    G --> H["🎭 Final Reveal"]
```

## 🖼️ Operator Evidence Highlights

<table>
<tr>
<td width="33%"><img src="../screenshots/attacker/01-official-tunnel-client-execution.png" alt="Official execution"><br/><sub><b>Execution:</b> the exact seven-query client session.</sub></td>
<td width="33%"><img src="../screenshots/attacker/02-victim-resolver-path.png" alt="Victim resolver path"><br/><sub><b>Resolver path:</b> victim stayed on defender-controlled DNS.</sub></td>
<td width="33%"><img src="../screenshots/attacker/04-rpz-preflight-safe.png" alt="RPZ safe preflight"><br/><sub><b>Response boundary:</b> Scenario 04 containment was not already active.</sub></td>
</tr>
<tr>
<td width="50%"><img src="../screenshots/attacker/05-authoritative-receipt.png" alt="Authoritative receipt"><br/><sub><b>End-to-end proof:</b> all generated qnames reached BIND.</sub></td>
<td width="50%" colspan="2"><img src="../screenshots/attacker/06-ground-truth-closeout.png" alt="Ground truth closeout"><br/><sub><b>Closeout:</b> the real one-run timeline and deviation were preserved instead of hidden.</sub></td>
</tr>
</table>

## 🗂️ Start Here

- [`PROJECT-LEAD-ADVERSARY.md`](PROJECT-LEAD-ADVERSARY.md) — flagship operator case study
- [`SCENARIO-04-ADVERSARY-PLAYBOOK.md`](SCENARIO-04-ADVERSARY-PLAYBOOK.md) — reusable operator method/boundary
- [`ground-truth.md`](ground-truth.md) — reveal-only ground truth
- [`LEARNING-JOURNEY.md`](LEARNING-JOURNEY.md) — operational learning journey
- [`commands/README.md`](commands/README.md) — safe environment/receipt checks
- [`scripts/scenario04-tunnel-client.py`](scripts/scenario04-tunnel-client.py) — exact finite lab-only client

> **Operator boundary:** prove what was intentionally generated. Do not use defender outcomes to steer the run.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 Operator Story](PROJECT-LEAD-ADVERSARY.md) · [💻 Commands](commands/README.md) · [🎭 Exercise](../exercise/README.md)

<br/>

**Preserve the ground truth. Preserve the information boundary.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
