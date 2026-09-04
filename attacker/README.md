<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=145&section=header&text=%F0%9F%A7%AC%20Operator%20%2F%20Adversary%20Workspace&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2004%20%E2%80%94%20Sonia%20%7C%20Official%20Execution%20Complete&descSize=14&descAlignY=68&descColor=20E3B2" width="100%" alt="Scenario 04 operator workspace" />

<div align="center">

![Owner](https://img.shields.io/badge/Owner-Sonia-A855F7?style=flat-square) ![Status](https://img.shields.io/badge/Official_Execution-Complete-2EA44F?style=flat-square) ![Boundary](https://img.shields.io/badge/Scope-Project_Owned_DNS-22D3EE?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎬 Execution](../SCENARIO-04-EXECUTION.md) · [📄 Flagship Story](PROJECT-LEAD-ADVERSARY.md)

</div>

# 🧬 Scenario 04 — Operator / Adversary Workspace

Sonia owned the private exercise-operator side of Scenario 04. Her task was to generate one finite, realistic DNS tunneling-like pattern from the controlled victim while keeping exact operator ground truth separate from SOC and IR until their decisions were locked.

## Workspace map

| Artifact | Purpose |
|---|---|
| [`PROJECT-LEAD-ADVERSARY.md`](PROJECT-LEAD-ADVERSARY.md) | Flagship operator story |
| [`SCENARIO-04-ADVERSARY-PLAYBOOK.md`](SCENARIO-04-ADVERSARY-PLAYBOOK.md) | Reusable operator methodology and boundaries |
| [`ground-truth.md`](ground-truth.md) | Ground truth revealed after defender closeout |
| [`LEARNING-JOURNEY.md`](LEARNING-JOURNEY.md) | Curated operational lessons |
| [`scripts/scenario04-tunnel-client.py`](scripts/scenario04-tunnel-client.py) | Exact finite lab-only client used |
| [`commands/`](commands/) | Clean operator checks and authoritative proof commands |
| [`../screenshots/attacker/`](../screenshots/attacker/) | Curated visual evidence |

## Final operator result

```text
7 unique Base32-derived child labels
A queries
2-second spacing
victim → Unbound → public DNS → authoritative BIND
```

The operator did not inspect Splunk/SOC/IR outcomes to steer the run and did not rerun the client after the one-time session occurred during review.

> [!IMPORTANT]
> This workspace records an authorized project-owned adversary-emulation exercise. The client is intentionally fixed to the controlled tunnel namespace and contains no shell, persistence, credential access, discovery/scanning, third-party targeting or malware functionality.

<div align="center">

[🏠 Scenario Home](../README.md) · [⬆ Back to top](#top)

</div>
