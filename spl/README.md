<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=135&section=header&text=%F0%9F%94%8E%20SPL%20Workspace&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20Detection%20Engineering%20Next&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="SPL Workspace" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-Infrastructure_Ready-14B8A6?style=flat-square)
![Owner](https://img.shields.io/badge/Detection_Engineer-Abdul--Rehman-00B8D9?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Detection Plan](../DETECTION-ENGINEERING-PLAN.md) · [🏗️ Shared Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure)

</div>

**Status:** Detection Engineering has not started. Infrastructure and DNS-path validation are complete.

Create real files only after the searches are tested:

```text
spl/
├── baseline.spl
├── hunting.spl
├── detection.spl
└── validation.spl
```

- `baseline.spl` — normal resolver behavior and feature distributions.
- `hunting.spl` — raw-evidence pivots and threshold-free analysis.
- `detection.spl` — final frozen Detection v1.0.
- `validation.spl` — baseline vs controlled positive vs benign lookalikes.

## Rule discipline

- Use actual `dns_soc_dns` fields observed in the lab.
- Derive qname/label/frequency features transparently.
- Combine multiple signals; do not equate one long hostname with tunneling.
- Record why every threshold exists.
- Test benign lookalikes deliberately.
- Map `T1071.004` to what the search actually detects.
- Do not add `T1572` unless the later implementation genuinely supports it.
- Freeze the official detection before the information-separated run.

See [`../DETECTION-ENGINEERING-PLAN.md`](../DETECTION-ENGINEERING-PLAN.md) for the full engineering sequence.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

**DNSentinel Scenario 04 · DNS Tunneling**

[🏠 Scenario Home](../README.md) · [🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,7,12,18,24&height=75&section=footer" width="100%" alt="footer" />
