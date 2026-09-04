<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,12,18,24,30&height=190&section=header&text=%F0%9F%8E%AF%20Private%20Exercise%20Operator%20%2F%20Project%20Lead&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Sonia%20%C2%B7%20One%20Finite%20Lab-Only%20DNS%20Tunneling%20Session&descSize=15&descAlignY=61&descColor=8B5CF6" width="100%" alt="🎯 Private Exercise Operator / Project Lead" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=8B5CF6&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Preflight%20%E2%86%92%20Resolver%20Path%20%E2%86%92%20Execute%20Once%20%E2%86%92%20Authoritative%20Receipt%20%E2%86%92%20Stop;Preserve%20Ground%20Truth%20%E2%86%92%20Keep%20It%20Private%20%E2%86%92%20Reveal%20After%20Defender%20Decisions%20Lock" alt="🎯 Private Exercise Operator / Project Lead workflow" />

![Owner](https://img.shields.io/badge/Owner-Sonia-8B5CF6?style=flat-square) ![Execution](https://img.shields.io/badge/Official_Execution-Complete-2EA44F?style=flat-square) ![Boundary](https://img.shields.io/badge/Scope-Project_Owned_DNS-22D3EE?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎬 Execution](../SCENARIO-04-EXECUTION.md) · [💻 Commands](commands/README.md) · [🎭 Exercise](../exercise/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🎯 Scenario 04 Operator Workspace

[**Sonia**](https://github.com/sonia11mansha415) generated one finite, controlled tunneling-like DNS pattern from `dns-soc-victim01` while exact operator ground truth remained hidden from SOC and IR until their decisions were complete.

## 🚦 Execution Snapshot

| Field | Final ground truth |
|---|---|
| Operator | Sonia |
| Client | `scripts/scenario04-tunnel-client.py` |
| Namespace | `tunnel.soclab.abdul4rehman215.tech` |
| Queries | **7** |
| Unique child labels | **7** |
| Encoding | Base32-derived harmless synthetic training message |
| Query type | A |
| Spacing | 2 seconds |
| Resolver path | victim → defender Unbound → public DNS → authoritative BIND |
| Official run discipline | one finite session |
| Defender feedback | not used to steer execution |

## 🔁 Operator Flow

```mermaid
%%{init: {
  "theme": "base",
  "themeVariables": {
    "background": "#030712",
    "primaryTextColor": "#ffffff",
    "lineColor": "#f8fafc",
    "fontSize": "30px"
  },
  "flowchart": {
    "nodeSpacing": 52,
    "rankSpacing": 62,
    "curve": "basis",
    "padding": 20
  }
}}%%

flowchart TB

    %% =====================================================
    %% ROW 1 · EXECUTION
    %% =====================================================
    subgraph ROW1[" "]
        direction LR

        A["🔐 01 · PREFLIGHT"]

        B["🌐 02 · RESOLVER<br/>PATH"]

        C["🎯 03 · EXECUTE<br/>ONCE"]

        D["🛰️ 04 · AUTHORITATIVE<br/>RECEIPT"]

        A ==> B ==> C ==> D
    end


    %% =====================================================
    %% ROW 2 · PRESERVATION + REVEAL
    %% =====================================================
    subgraph ROW2[" "]
        direction LR

        E["🛑 05 · CLIENT<br/>EXIT"]

        F["🧾 06 · PRESERVE<br/>GROUND TRUTH"]

        G["🔒 07 · KEEP<br/>HIDDEN"]

        H["🎭 08 · FINAL<br/>REVEAL"]

        E ==> F ==> G ==> H
    end


    %% =====================================================
    %% ROW-TO-ROW HANDOFF
    %% Keeps Mermaid from stretching into one long line
    %% =====================================================
    ROW1 ==> ROW2


    %% =====================================================
    %% PREMIUM NODE COLORS
    %% =====================================================

    classDef preflight fill:#172554,stroke:#60a5fa,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef resolver fill:#075985,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef execute fill:#4c1d95,stroke:#c084fc,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef receipt fill:#713f12,stroke:#fbbf24,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef exit fill:#7f1d1d,stroke:#fb7185,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef preserve fill:#0f766e,stroke:#5eead4,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef hidden fill:#450a0a,stroke:#f87171,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef reveal fill:#14532d,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:32px,font-weight:bold;


    %% =====================================================
    %% APPLY COLORS
    %% =====================================================
    class A preflight;
    class B resolver;
    class C execute;
    class D receipt;

    class E exit;
    class F preserve;
    class G hidden;
    class H reveal;


    %% =====================================================
    %% GLOSSY ROW PANELS
    %% =====================================================
    style ROW1 fill:#06121f,stroke:#38bdf8,stroke-width:3px

    style ROW2 fill:#0b130d,stroke:#4ade80,stroke-width:3px


    %% =====================================================
    %% THICK BRIGHT CONNECTORS
    %% =====================================================
    linkStyle default stroke:#f8fafc,stroke-width:6px;
```

## 🖼️ Operator Evidence Highlights

<table>
<tr>
<td width="33%"><img src="../screenshots/attacker/01-official-tunnel-client-execution.png" alt="Official execution"><br/><sub><b>Execution:</b> the exact seven-query client session.</sub></td>
<td width="33%"><img src="../screenshots/attacker/02-victim-resolver-path.png" alt="Victim resolver path"><br/><sub><b>Resolver path:</b> victim stayed on defender-controlled DNS.</sub></td>
<td width="33%"><img src="../screenshots/attacker/04-rpz-preflight-safe.png" alt="RPZ safe preflight"><br/><sub><b>Response boundary:</b> Scenario 04 containment was not already active.</sub></td>
</tr>
<tr>
<td width="50%"><img src="../screenshots/attacker/05-authoritative-receipt.png" alt="Authoritative receipt"><br/><sub><b>End-to-end proof:</b> all generated qnames reached BIND.</sub></td>
<td width="50%" colspan="2"><img src="../screenshots/attacker/06-ground-truth-closeout.png" alt="Ground truth closeout"><br/><sub><b>Closeout:</b> the real one-run timeline and deviation were preserved instead of hidden.</sub></td>
</tr>
</table>

## 🗂️ Start Here

- [`PROJECT-LEAD-ADVERSARY.md`](PROJECT-LEAD-ADVERSARY.md) — flagship operator case study
- [`SCENARIO-04-ADVERSARY-PLAYBOOK.md`](SCENARIO-04-ADVERSARY-PLAYBOOK.md) — reusable operator method/boundary
- [`ground-truth.md`](ground-truth.md) — reveal-only ground truth
- [`LEARNING-JOURNEY.md`](LEARNING-JOURNEY.md) — operational learning journey
- [`commands/README.md`](commands/README.md) — safe environment/receipt checks
- [`scripts/scenario04-tunnel-client.py`](scripts/scenario04-tunnel-client.py) — exact finite lab-only client

> **Operator boundary:** prove what was intentionally generated. Do not use defender outcomes to steer the run.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 Operator Story](PROJECT-LEAD-ADVERSARY.md) · [💻 Commands](commands/README.md) · [🎭 Exercise](../exercise/README.md)

<br/>

**Preserve the ground truth. Preserve the information boundary.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
