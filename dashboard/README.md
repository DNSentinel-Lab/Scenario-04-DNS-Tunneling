<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=7,12,18,24,28&height=190&section=header&text=%F0%9F%93%8A%20DNS%20Tunneling%20Investigation%20Dashboard&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Splunk%20Dashboard%20Studio%20%C2%B7%20Analyst%20Surface%2C%20Not%20Verdict&descSize=15&descAlignY=61&descColor=22D3EE" width="100%" alt="📊 DNS Tunneling Investigation Dashboard" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=22D3EE&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Volume%20%E2%86%92%20Unique%20Qnames%20%E2%86%92%20Child%20Labels%20%E2%86%92%20First-Label%20Length%20%E2%86%92%20Parent%20Domains;Query%20Type%20%E2%86%92%20Response%20Codes%20%E2%86%92%20Behavior%20Window%20%E2%86%92%20Raw%20Event%20Drilldown" alt="📊 DNS Tunneling Investigation Dashboard workflow" />

![Status](https://img.shields.io/badge/Dashboard-Validated-2EA44F?style=flat-square) ![Views](https://img.shields.io/badge/Analyst_Views-11-22D3EE?style=flat-square) ![Splunk](https://img.shields.io/badge/Splunk-Dashboard_Studio-000000?style=flat-square&logo=splunk&logoColor=white)

[🏠 Scenario Home](../README.md) · [🧠 Detection Engineering](../detection-engineering/README.md) · [📄 Panel Searches](PANEL-SEARCHES.md) · [🔎 SPL](../spl/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 📊 Scenario 04 — Dashboard Studio

The dashboard was built only after the DNS feature fields were stable. It accelerates analyst pivots without deciding whether the behavior is malicious.

## 🖼️ Investigation Surface

<img src="../screenshots/detection-engineering/05-dns-tunneling-investigation-dashboard.png" width="100%" alt="Scenario 04 DNS tunneling dashboard" />

## 🧭 Analyst Views

| View | Investigation question |
|---|---|
| Total DNS Queries | How much resolver activity occurred? |
| Unique Qnames | How broad was the activity? |
| Unique Child Labels | Are many fresh children appearing? |
| Active Clients | Which clients generated DNS activity? |
| DNS Queries per Minute | Is activity concentrated in time? |
| First-Label Length Over Time | Are child labels unusually long? |
| Query Type Mix | Which DNS record types were used? |
| Response Code Mix | How did DNS respond? |
| Top Parent Domains | Where is child-label activity concentrated? |
| DNS Behavior Window Summary | Which windows satisfy the behavior contract? |
| Raw Event Drilldown | Can the analyst inspect original resolver evidence immediately? |

<table>
<tr>
<td width="50%"><img src="../screenshots/detection-engineering/11-analyst-evidence-row.png" alt="Analyst evidence row"><br/><sub><b>Evidence row:</b> summary fields needed for analyst review.</sub></td>
<td width="50%"><img src="../screenshots/detection-engineering/12-raw-event-drilldown.png" alt="Raw event drilldown"><br/><sub><b>Raw drilldown:</b> original resolver evidence remains one pivot away.</sub></td>
</tr>
</table>

> **Dashboard rule:** make the evidence easier to interrogate; never turn the visualization into a verdict.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧠 Detection Engineering](../detection-engineering/README.md) · [📄 Panel Searches](PANEL-SEARCHES.md)

<br/>

**A dashboard is useful when every panel answers an investigation question.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
