<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=135&section=header&text=%F0%9F%93%8A%20Dashboard%20Workspace&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20DNS%20Tunneling&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="Dashboard Workspace" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-Infrastructure_Ready-14B8A6?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Dashboard_Studio-F59E0B?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Detection Plan](../DETECTION-ENGINEERING-PLAN.md) · [🏗️ Shared Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure)

</div>

**Status:** Awaiting baseline and stable feature fields.

Build the analyst dashboard from real `dns_soc_dns` telemetry after the Detection Engineer validates field names and distributions.

Recommended panels:

- total DNS queries;
- unique qnames / child labels;
- long-label count;
- qname and label-length distributions;
- query-type mix;
- response-code mix;
- active clients;
- queries-per-minute trend;
- top parent domains by unique children;
- sample suspicious qnames;
- raw-event drilldown.

Later, add before/after containment panels only after IR actually performs a response.

Do not build visual panels around placeholder fields or pre-labelled “suspicious” values.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

**DNSentinel Scenario 04 · DNS Tunneling**

[🏠 Scenario Home](../README.md) · [🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=75&section=footer" width="100%" alt="footer" />
