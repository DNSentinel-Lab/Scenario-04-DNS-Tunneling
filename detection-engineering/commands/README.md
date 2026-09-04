<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=190&section=header&text=%F0%9F%92%BB%20Detection%20Engineering%20Command%20Helpers&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Controlled%20Validation%20Traffic%20%C2%B7%20Not%20Official%20Operator%20Activity&descSize=15&descAlignY=61&descColor=14B8A6" width="100%" alt="💻 Detection Engineering Command Helpers" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Preflight%20%E2%86%92%20Controlled%20Positive%20%E2%86%92%20Benign%20Lookalike%20%E2%86%92%20Scheduled%20Alert%20Validation" alt="💻 Detection Engineering Command Helpers workflow" />

![Helpers](https://img.shields.io/badge/Validation_Helpers-4-14B8A6?style=flat-square) ![Boundary](https://img.shields.io/badge/Official_Run-Separate-2EA44F?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🧠 Detection Workspace](../README.md) · [🔎 SPL](../../spl/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 💻 Scenario 04 — Detection Engineering Helpers

These scripts preserve the terminal-side checks and low-volume validation traffic used **before** the official exercise.

| Script | Purpose |
|---|---|
| [`preflight.sh`](preflight.sh) | resolver/delegation health check from `dns-soc-victim01` |
| [`controlled-positive-validation.sh`](controlled-positive-validation.sh) | fresh synthetic 32-hex-character child labels for positive validation |
| [`benign-lookalike-validation.sh`](benign-lookalike-validation.sh) | one repeated long child label for false-positive challenge |
| [`scheduled-alert-validation.sh`](scheduled-alert-validation.sh) | fresh positive burst used to prove automatic alert execution |

## ⚖️ Safety & Change-Control Boundary

- project-owned/authorized namespace only;
- synthetic, non-sensitive labels only;
- low-volume validation traffic;
- these scripts are **not** Sonia's official simulation tooling;
- Detection v1.0 must not search for script-specific prefixes or strings.

> These helpers test the behavior contract. They are not part of the ground-truth exercise run.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🧠 Detection Workspace](../README.md) · [📖 Freeze Record](../FREEZE-RECORD.md) · [🔎 SPL](../../spl/README.md)

<br/>

**Validation traffic tests the rule. It must never become the rule.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
