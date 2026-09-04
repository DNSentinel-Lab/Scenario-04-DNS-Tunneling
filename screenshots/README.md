<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=150&section=header&text=%F0%9F%93%B8%20Screenshot%20%26%20Visual%20Evidence%20Portal&fontSize=30&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%7C%20Role-Owned%20Proof%20Curated%20for%20Technical%20Review&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="Scenario 04 visual evidence portal" />

<div align="center">

![Evidence](https://img.shields.io/badge/Visual_Evidence-Curated-2EA44F?style=flat-square) ![Rule](https://img.shields.io/badge/Rule-Prove_a_Claim-A855F7?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧾 Evidence Center](../evidence/README.md) · [🔎 SOC Evidence](../soc/evidence/README.md) · [🛡️ IR Evidence](../ir/evidence/README.md)

</div>

# 🖼️ Scenario 04 Visual Evidence

Evidence is organized by role rather than mixed into one unstructured folder.

| Role / workspace | Location | What it preserves |
|---|---|---|
| 🚦 Detection Engineering | [`detection-engineering/`](detection-engineering/) | Baseline, feature hunt, dashboard, validation, alert, AI integration |
| 🧬 Operator / Project Lead | [`attacker/`](attacker/) | One-time client execution, resolver path, authoritative receipt, closeout ground truth |
| 🔎 SOC Analyst | [`../soc/evidence/`](../soc/evidence/) | Alert, raw qnames, baseline, scope, AI human validation |
| 🛡️ Incident Response | [`../ir/evidence/`](../ir/evidence/) | Independent validation, correlation, RPZ, recovery, containment and reset |

## Operator evidence set

| File | What it proves |
|---|---|
| `attacker/01-official-tunnel-client-execution.png` | Seven-query finite client actually executed from victim |
| `attacker/02-victim-resolver-path.png` | Victim remained on defender resolver |
| `attacker/03-authoritative-host-confirmation.png` | Correct BIND EC2 identified before authoritative checks |
| `attacker/04-rpz-preflight-safe.png` | Scenario 04 containment was not active before the run |
| `attacker/05-authoritative-receipt.png` | Seven generated qnames reached BIND |
| `attacker/06-ground-truth-closeout.png` | One-run deviation and authoritative timeline preserved |
