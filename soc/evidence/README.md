<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=7,12,18,24,28&height=190&section=header&text=%F0%9F%A7%BE%20SOC%20Curated%20Evidence&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Lubaba%20%C2%B7%20E01%E2%80%93E19b%20%C2%B7%20Defender-Visible%20Investigation%20Proof&descSize=15&descAlignY=61&descColor=22D3EE" width="100%" alt="🧾 SOC Curated Evidence" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=22D3EE&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Telemetry%20%E2%86%92%20Structure%20%E2%86%92%20Alert%20%E2%86%92%20Reply%20Semantics%20%E2%86%92%20Baseline%20%E2%86%92%20Scope%20%E2%86%92%20AI%20Validation" alt="🧾 SOC Curated Evidence workflow" />

![Evidence](https://img.shields.io/badge/SOC_Evidence-23_Images-22D3EE?style=flat-square) ![Disposition](https://img.shields.io/badge/Disposition-INCONCLUSIVE_%E2%86%92_IR-F59E0B?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🔎 SOC Workspace](../README.md) · [📖 Investigation](../SOC-ANALYST-INVESTIGATION.md) · [🧾 Master Evidence](../../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧾 Scenario 04 SOC — Evidence Portal

The flagship investigation uses only the strongest images. This page exposes the wider defender-side audit trail without turning the repository into one giant screenshot dump.

## 🖼️ Investigation Highlights

<table>
<tr>
<td width="33%"><img src="S04-SOC-E03-Namespace-Visibility.png" alt="Namespace visibility"><br/><sub><b>E03:</b> normalized Scenario 04 namespace visible.</sub></td>
<td width="33%"><img src="S04-SOC-E05-Raw-Qname-Label-Table.png" alt="Raw qname label table"><br/><sub><b>E05:</b> exact qname/label structure.</sub></td>
<td width="33%"><img src="S04-SOC-E07-Official-Alert-Trigger.png" alt="Official alert trigger"><br/><sub><b>E07:</b> production alert fired.</sub></td>
</tr>
<tr>
<td width="33%"><img src="S04-SOC-E14-Same-Rule-Baseline-Zero.png" alt="Same rule baseline zero"><br/><sub><b>E14:</b> same-rule baseline challenge.</sub></td>
<td width="33%"><img src="S04-SOC-E15-Client-Scope.png" alt="Client scope"><br/><sub><b>E15:</b> resolver-visible client scope.</sub></td>
<td width="33%"><img src="S04-SOC-E18-AI-Human-Validation.png" alt="AI human validation"><br/><sub><b>E18:</b> AI human-validation boundary.</sub></td>
</tr>
</table>

## 📋 Full Evidence Set

| Evidence | Claim proved |
|---|---|
| `S04-SOC-E01-Telemetry-Readiness.png` | Current Unbound evidence source was healthy |
| `S04-SOC-E03-Namespace-Visibility.png` | Scenario namespace became visible after DNS normalization |
| `S04-SOC-E05-Raw-Qname-Label-Table.png` | Exact child-label structure and lengths |
| `S04-SOC-E06-Detection-v1-Reproduction.png` | Frozen one-minute rule independently reproduced |
| `S04-SOC-E07-Official-Alert-Trigger.png` | Production alert actually fired |
| `S04-SOC-E09-Query-Reply-NOERROR.png` | 7 queries + 7 successful replies; no NXDOMAIN |
| `S04-SOC-E10-Resolver-Timeline.png` | Defender-visible UTC timeline |
| `S04-SOC-E12-Baseline-Label-Summary.png` | Measured normal first-label behavior |
| `S04-SOC-E13-Benign-Long-Label-Comparison.png` | Legitimate long AWS labels existed |
| `S04-SOC-E14-Same-Rule-Baseline-Zero.png` | Full rule did not match non-Scenario-04 traffic |
| `S04-SOC-E15-Client-Scope.png` | Scenario activity came from one resolver-visible client |
| `S04-SOC-E16-Environment-Scope.png` | No second client/parent reproduced the combined pattern |
| `S04-SOC-E18-AI-Human-Validation.png` | AI event preserved human-validation boundary |
| `S04-SOC-E19a-AI-Alert-Summary.png` | AI summarized the actual alert evidence |
| `S04-SOC-E19b-AI-Limitations.png` | AI preserved important evidence limitations |

## Supporting exports

- `baseline-summary.csv`
- `detection-window-summary.csv`
- `raw-observed-qnames.csv`
- `reply-summary.csv`
- `timeline.csv`
<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🔎 SOC Workspace](../README.md) · [📖 Investigation](../SOC-ANALYST-INVESTIGATION.md) · [📨 Handoff](../SOC-TO-IR-HANDOFF.md)

<br/>

**A screenshot proves only the fields and state it actually shows.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
