<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=7,12,18,24,28&height=190&section=header&text=%F0%9F%96%BC%EF%B8%8F%20Screenshot%20%26%20Visual%20Evidence%20Portal&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Role-Owned%20Proof%20Curated%20for%20Technical%20Review&descSize=15&descAlignY=61&descColor=22D3EE" width="100%" alt="🖼️ Screenshot & Visual Evidence Portal" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=22D3EE&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Detection%20Engineering%20%E2%86%92%20Operator%20%E2%86%92%20SOC%20%E2%86%92%20IR;A%20screenshot%20should%20answer%20a%20technical%20question" alt="🖼️ Screenshot & Visual Evidence Portal workflow" />

![Evidence](https://img.shields.io/badge/Visual_Evidence-66_Images-22D3EE?style=flat-square) ![Rule](https://img.shields.io/badge/Presentation-Prove_a_Claim-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧾 Evidence Center](../evidence/README.md) · [🔎 SOC Evidence](../soc/evidence/README.md) · [🛡️ IR Evidence](../ir/evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🖼️ Scenario 04 Visual Evidence

Evidence remains organized by the role or engineering stage that produced it.

| Role / workspace | Location | What it preserves |
|---|---|---|
| 🧠 Detection Engineering | [`detection-engineering/`](detection-engineering/) | baseline, feature hunt, dashboard, validation, alert and AI integration |
| 🎯 Operator / Project Lead | [`attacker/`](attacker/) | one-time client execution, resolver path, authoritative receipt and ground truth |
| 🔎 SOC Analyst | [`../soc/evidence/`](../soc/evidence/) | telemetry, labels, baseline, scope, AI validation |
| 🛡️ Incident Response | [`../ir/evidence/`](../ir/evidence/) | independent validation, causality, RPZ, recovery, containment and reset |

<table>
<tr>
<td width="50%"><img src="detection-engineering/05-dns-tunneling-investigation-dashboard.png" alt="Detection dashboard"><br/><sub><b>Engineering:</b> analyst-facing DNS tunneling investigation surface.</sub></td>
<td width="50%"><img src="../ir/evidence/S04-IR-20-containment-victim-sinkhole-answer.png" alt="IR sinkhole proof"><br/><sub><b>Response:</b> victim-side containment proof.</sub></td>
</tr>
</table>

## 🎯 Operator Evidence Set

| File | What it proves |
|---|---|
| [`attacker/01-official-tunnel-client-execution.png`](attacker/01-official-tunnel-client-execution.png) | seven-query finite client executed from victim |
| [`attacker/02-victim-resolver-path.png`](attacker/02-victim-resolver-path.png) | victim remained on defender resolver |
| [`attacker/03-authoritative-host-confirmation.png`](attacker/03-authoritative-host-confirmation.png) | correct BIND EC2 identified |
| [`attacker/04-rpz-preflight-safe.png`](attacker/04-rpz-preflight-safe.png) | containment not active before run |
| [`attacker/05-authoritative-receipt.png`](attacker/05-authoritative-receipt.png) | seven generated qnames reached BIND |
| [`attacker/06-ground-truth-closeout.png`](attacker/06-ground-truth-closeout.png) | one-run deviation/timeline preserved |

## 📌 Presentation Rule

> **A screenshot should answer a technical question.**

The root README and role landing pages use only the strongest images. The complete evidence remains available through the role evidence indexes.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧾 Evidence Center](../evidence/README.md) · [🔎 SOC Evidence](../soc/evidence/README.md) · [🛡️ IR Evidence](../ir/evidence/README.md)

<br/>

**Visual proof supports reasoning; it does not replace it.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
