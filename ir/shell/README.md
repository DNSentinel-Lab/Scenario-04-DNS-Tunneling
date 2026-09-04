<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=190&section=header&text=%F0%9F%92%BB%20IR%20RPZ%2C%20Recovery%20%26%20Safe-Reset%20Path&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Musfira%20%C2%B7%20Actual%20Response%20Command%20Lifecycle&descSize=15&descAlignY=61&descColor=14B8A6" width="100%" alt="💻 IR RPZ, Recovery & Safe-Reset Path" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Precheck%20%E2%86%92%20Stage%20RPZ%20%E2%86%92%20First%20Activation%20%E2%86%92%20Failure%20%E2%86%92%20Recover;Correct%20Activation%20%E2%86%92%20Victim%20Proof%20%E2%86%92%20Splunk%20Proof%20%E2%86%92%20Safe%20Reset" alt="💻 IR RPZ, Recovery & Safe-Reset Path workflow" />

![Shell](https://img.shields.io/badge/IR_Shell-10_Scripts-14B8A6?style=flat-square) ![Recovery](https://img.shields.io/badge/Real_Recovery-Documented-F59E0B?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🛡️ IR Workspace](../README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 💻 Scenario 04 — IR Response Commands

This folder preserves the **actual response lifecycle**, including the first activation path, recovery, corrected RPZ activation and safe reset.

```mermaid
flowchart LR
    A["🔐 Precheck / Backups"] --> B["🛡️ Stage Wildcard"]
    B --> C["⚙️ First Reload"]
    C --> D["🧪 Victim Test"]
    D --> E["🧩 Recover"]
    E --> F["✅ Victim Recovery Check"]
    F --> G["🎯 Correct RPZ Activation"]
    G --> H["🕳️ Victim Sinkhole Proof"]
    H --> I["♻️ Safe Reset"]
    I --> J["✅ Post-Reset Check"]
```

| Script | Purpose |
|---|---|
| [`01-rpz-precheck.sh`](01-rpz-precheck.sh) | preserve safe starting state/backups |
| [`02-rpz-stage-scenario04.sh`](02-rpz-stage-scenario04.sh) | stage Scenario 04 wildcard |
| [`03-initial-reload-attempt.sh`](03-initial-reload-attempt.sh) | first activation/reload path |
| [`04-victim-initial-containment-test.sh`](04-victim-initial-containment-test.sh) | verify whether the first attempt changed behavior |
| [`05-rpz-recovery.sh`](05-rpz-recovery.sh) | restore healthy resolver state after bad RPZ troubleshooting edit |
| [`06-victim-recovery-check.sh`](06-victim-recovery-check.sh) | prove normal DNS after recovery |
| [`07-rpz-correct-activation.sh`](07-rpz-correct-activation.sh) | load corrected policy |
| [`08-victim-containment-proof.sh`](08-victim-containment-proof.sh) | prove sinkhole answer from victim |
| [`09-rpz-safe-reset.sh`](09-rpz-safe-reset.sh) | restore default RPZ state |
| [`10-victim-safe-reset-check.sh`](10-victim-safe-reset-check.sh) | prove normal DNS after reset |

> The failed trailing-dot edit is intentionally **not** preserved as a runnable command file. It is documented in [`../LESSONS-LEARNED.md`](../LESSONS-LEARNED.md) and evidence E15–E18.

> **Response principle:** service state is not enough. Validate actual DNS behavior after every change.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🛡️ IR Workspace](../README.md) · [💻 Command Ledger](../IR-COMMAND-LEDGER.md) · [🧾 Evidence](../evidence/README.md)

<br/>

**Recovery evidence belongs in the story because real response work is not always linear.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
