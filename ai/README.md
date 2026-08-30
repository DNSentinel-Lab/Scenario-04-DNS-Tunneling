<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=135&section=header&text=%F0%9F%A4%96%20AI%20Integration%20%2F%20Profile&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20DNS%20Tunneling&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="AI Integration / Profile" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-Infrastructure_Ready-14B8A6?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Scenario_AI_Profile-7B2CBF?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Detection Plan](../DETECTION-ENGINEERING-PLAN.md) · [🏗️ Shared Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure)

</div>

**Status:** Shared AI bridge exists; Scenario 04 profile is waiting for frozen Detection v1.0 fields.

Expected path:

```text
Frozen Detection v1.0
      ↓
Structured Scenario 04 payload
      ↓
Shared dns-soc-ai-bridge
      ↓
Structured AI context
      ↓
index=dns_soc_ai
      ↓
Human SOC validation against raw evidence
```

The scenario payload should be based on stable alert fields such as client, first/last seen, query count, unique child count, qname/label metrics, qtypes, rcodes, parent domain and sample qnames.

AI rules:

- AI is supporting context, not ground truth.
- Do not expose private operator ground truth to the SOC through the AI path.
- Do not let AI authorize containment.
- Preserve the payload and returned summary.
- Record where the AI was useful, incomplete or wrong.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

**DNSentinel Scenario 04 · DNS Tunneling**

[🏠 Scenario Home](../README.md) · [🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=75&section=footer" width="100%" alt="footer" />
