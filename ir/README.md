<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=135&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Incident%20Response%20Workspace&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20Official%20IR%20Pending&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="Incident Response Workspace" />

<div align="center">

![Detection](https://img.shields.io/badge/Detection-v1.0_Frozen-2EA44F?style=flat-square)
![IR](https://img.shields.io/badge/IR_Defender-Musfira-E5534B?style=flat-square)
![Status](https://img.shields.io/badge/Official_IR-Pending-F59E0B?style=flat-square)

[🏠 Scenario Home](../README.md) · [📋 Runbook](../SCENARIO-RUNBOOK.md) · [🔒 Freeze Record](../detection-engineering/FREEZE-RECORD.md)

</div>

Detection Engineering is complete, but **official IR execution has not started**.

Musfira will receive the later SOC handoff and independently decide whether containment is justified. The existing sinkhole at `10.50.30.30` is ready, but it is not an automatic action.

Potential narrow response if justified:

```text
Before
Victim → Unbound → public DNS → tunnel authoritative endpoint

After approved RPZ
Victim → Unbound RPZ → 10.50.30.30 → sinkhole
```

IR should document:

- evidence reviewed independently;
- whether suspicious activity is still current;
- containment/no-containment rationale;
- exact approved RPZ scope where applicable;
- before/after DNS result;
- whether fresh qnames still reach the original authoritative endpoint;
- sinkhole evidence if containment occurs;
- normal-DNS health after response;
- safe reset.

> [!IMPORTANT]
> Detection v1.0 and its evidence contract are frozen. A Splunk alert or AI summary is never automatic authorization for containment.

<div align="center">

[🏠 Scenario Home](../README.md) · [⬆ Back to top](#top)

</div>
