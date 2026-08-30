<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=135&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Incident%20Response%20Workspace&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20DNS%20Tunneling&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="Incident Response Workspace" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-Infrastructure_Ready-14B8A6?style=flat-square)
![Owner](https://img.shields.io/badge/IR_Defender-Musfira-E5534B?style=flat-square)

[🏠 Scenario Home](../README.md) · [📋 Runbook](../SCENARIO-RUNBOOK.md) · [🏗️ Shared Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure)

</div>

**Status:** IR execution has not started.

The existing resolver/sinkhole infrastructure is ready, but Scenario 04 containment must remain a **human decision after independent validation**.

Potential narrow response if justified:

```text
Before
Victim -> Unbound -> public DNS -> tunnel authoritative endpoint

After approved RPZ
Victim -> Unbound RPZ -> 10.50.30.30 -> sinkhole
```

IR should document:

- evidence reviewed independently;
- current activity state;
- containment/no-containment rationale;
- exact approved scope;
- before/after DNS result;
- whether fresh qnames still reach the original authoritative endpoint;
- sinkhole evidence where applicable;
- normal-DNS health after response;
- safe reset.

A Splunk alert or AI summary is never automatic authorization.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

**DNSentinel Scenario 04 · DNS Tunneling**

[🏠 Scenario Home](../README.md) · [🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=75&section=footer" width="100%" alt="footer" />
