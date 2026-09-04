<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=190&section=header&text=%F0%9F%A7%BE%20Scenario%2004%20Evidence%20Center&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Detection%20Engineering%20%E2%86%92%20Operator%20Ground%20Truth%20%E2%86%92%20SOC%20%E2%86%92%20IR%20%E2%86%92%20Final%20Comparison&descSize=15&descAlignY=61&descColor=20E3B2" width="100%" alt="🧾 Scenario 04 Evidence Center" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=20E3B2&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Engineering%20Proof%20%E2%86%92%20Private%20Ground%20Truth%20%E2%86%92%20Defender%20Investigation%20%E2%86%92%20Response%20Evidence;Every%20public%20claim%20stays%20no%20stronger%20than%20the%20artifact%20that%20supports%20it" alt="🧾 Scenario 04 Evidence Center workflow" />

![Status](https://img.shields.io/badge/Evidence_Center-Complete-2EA44F?style=flat-square) ![SOC](https://img.shields.io/badge/SOC-Evidence_Preserved-22D3EE?style=flat-square) ![IR](https://img.shields.io/badge/IR-Evidence_Preserved-14B8A6?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎯 Operator](../attacker/README.md) · [🔎 SOC](../soc/evidence/README.md) · [🛡️ IR](../ir/evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧾 Scenario 04 — Master Evidence Index

Detailed evidence stays with the role that produced it. This page connects the layers into one auditable chain without recreating the root 17-image gallery.

## 🔁 Evidence Architecture

```mermaid
flowchart LR
    A["🧠 Detection Engineering"] --> C["🔎 SOC Evidence"]
    B["🎯 Operator Ground Truth"] -. "reveal after decisions" .-> E["🎭 Final Comparison"]
    C --> D["🛡️ IR Evidence"]
    A --> E
    D --> E
```

## 🖼️ Cross-Role Highlights

<table>
<tr>
<td width="25%"><img src="../screenshots/detection-engineering/09-final-detection-v1-validation.png" alt="Detection v1 validation"><br/><sub><b>Engineering:</b> frozen rule validated.</sub></td>
<td width="25%"><img src="../screenshots/attacker/05-authoritative-receipt.png" alt="Authoritative receipt"><br/><sub><b>Operator:</b> seven qnames reached BIND.</sub></td>
<td width="25%"><img src="../soc/evidence/S04-SOC-E14-Same-Rule-Baseline-Zero.png" alt="SOC baseline zero"><br/><sub><b>SOC:</b> same-rule baseline challenge.</sub></td>
<td width="25%"><img src="../ir/evidence/S04-IR-23-safe-reset-victim-normal-answer.png" alt="IR safe reset"><br/><sub><b>IR:</b> final safe-state DNS proof.</sub></td>
</tr>
</table>

## 🧠 Detection Engineering

- [`../detection-engineering/detection-engineering-validation.md`](../detection-engineering/detection-engineering-validation.md)
- [`../screenshots/detection-engineering/`](../screenshots/detection-engineering/)
- [`detection-engineering/`](detection-engineering/)

## 🎯 Operator Ground Truth

- [`../attacker/PROJECT-LEAD-ADVERSARY.md`](../attacker/PROJECT-LEAD-ADVERSARY.md)
- [`../attacker/ground-truth.md`](../attacker/ground-truth.md)
- [`../screenshots/attacker/`](../screenshots/attacker/)

## 🔎 SOC Investigation

- [`../soc/evidence/README.md`](../soc/evidence/README.md)
- [`../soc/SOC-ANALYST-INVESTIGATION.md`](../soc/SOC-ANALYST-INVESTIGATION.md)
- [`../soc/SOC-TO-IR-HANDOFF.md`](../soc/SOC-TO-IR-HANDOFF.md)

## 🛡️ Incident Response

- [`../ir/evidence/README.md`](../ir/evidence/README.md)
- [`../ir/INCIDENT-RESPONSE.md`](../ir/INCIDENT-RESPONSE.md)
- [`../ir/IR-FINAL-REPORT.md`](../ir/IR-FINAL-REPORT.md)

## 🎭 Final Comparison

- [`../exercise/final-comparison.md`](../exercise/final-comparison.md)

> **Evidence rule:** a screenshot or export belongs in the public case only when it proves a claim, supports a decision or preserves a reusable root cause.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎭 Final Comparison](../exercise/final-comparison.md) · [🖼️ Screenshot Portal](../screenshots/README.md)

<br/>

**Preserve the source. Explain the claim. Keep the evidence boundary visible.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
