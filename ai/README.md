<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,12,18,24,30&height=190&section=header&text=%F0%9F%A4%96%20DNS%20Tunneling%20AI%20Evidence%20Contract&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20dns_tunneling_v1%20%C2%B7%20Shared%20Bridge%20%C2%B7%20Human%20Validation%20Required&descSize=15&descAlignY=61&descColor=A855F7" width="100%" alt="🤖 DNS Tunneling AI Evidence Contract" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=A855F7&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Detection%20%E2%86%92%20Scheduled%20Alert%20%E2%86%92%20Webhook%20%E2%86%92%20AI%20Bridge%20%E2%86%92%20LLM%20%E2%86%92%20HEC%20%E2%86%92%20Splunk;AI%20summarizes.%20Human%20analysts%20validate.%20Evidence%20owns%20the%20decision." alt="🤖 DNS Tunneling AI Evidence Contract workflow" />

![Profile](https://img.shields.io/badge/Profile-dns__tunneling__v1-A855F7?style=flat-square) ![Official](https://img.shields.io/badge/Official_SOC_Validation-CORRECT-2EA44F?style=flat-square) ![Human](https://img.shields.io/badge/Human_Validation-Required-22D3EE?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Detection](../detection-engineering/README.md) · [🔎 SOC AI Validation](../soc/AI-VALIDATION.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🤖 Scenario 04 — AI-Assisted Evidence Review

Scenario 04 reused the shared DNSentinel Flask/OpenAI/HEC bridge. This repository owns only the scenario-specific evidence contract and validation record.

## 🔁 Evidence Path

```mermaid
%%{init: {
  "theme": "base",
  "themeVariables": {
    "background": "#030712",
    "primaryTextColor": "#ffffff",
    "lineColor": "#f8fafc",
    "fontSize": "32px"
  },
  "flowchart": {
    "nodeSpacing": 46,
    "rankSpacing": 52,
    "curve": "basis",
    "padding": 18
  }
}}%%

flowchart TB

    %% =====================================================
    %% ROW 1
    %% =====================================================
    subgraph ROW1[" "]
        direction LR

        A["🧠 01 · DETECTION<br/>v1.0"]

        B["🚨 02 · SCHEDULED<br/>ALERT"]

        C["🔗 03 · WEBHOOK"]

        D["⚙️ 04 · AI BRIDGE<br/>dns-soc-ai-bridge"]

        A ==> B ==> C ==> D
    end


    %% =====================================================
    %% ROW 2
    %% =====================================================
    subgraph ROW2[" "]
        direction LR

        E["✨ 05 · LLM<br/>SUMMARY"]

        F["📥 06 · SPLUNK<br/>HEC"]

        G["🔎 07 · AI INDEX<br/>dns_soc_ai"]

        H["👤 08 · HUMAN<br/>VALIDATION"]

        E ==> F ==> G ==> H
    end


    %% =====================================================
    %% ROW HANDOFF
    %% Group-to-group keeps layout stable on GitHub
    %% =====================================================
    ROW1 ==> ROW2


    %% =====================================================
    %% PREMIUM NODE COLORS
    %% =====================================================
    classDef detect fill:#7f1d1d,stroke:#fb7185,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef alert fill:#9a3412,stroke:#fb923c,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef webhook fill:#312e81,stroke:#818cf8,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef bridge fill:#581c87,stroke:#e879f9,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef llm fill:#701a75,stroke:#f0abfc,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef hec fill:#075985,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef index fill:#172554,stroke:#60a5fa,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;

    classDef human fill:#14532d,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:33px,font-weight:bold;


    %% =====================================================
    %% APPLY STYLES
    %% =====================================================
    class A detect;
    class B alert;
    class C webhook;
    class D bridge;

    class E llm;
    class F hec;
    class G index;
    class H human;


    %% =====================================================
    %% GLOSSY ROW PANELS
    %% =====================================================
    style ROW1 fill:#100817,stroke:#e879f9,stroke-width:3px
    style ROW2 fill:#06131d,stroke:#22d3ee,stroke-width:3px


    %% =====================================================
    %% CONNECTORS
    %% =====================================================
    linkStyle default stroke:#f8fafc,stroke-width:6px;
```

## ✅ AI Could Summarize

- resolver-visible client and parent namespace;
- seven A-query events;
- unique-child-label and label-length evidence;
- the `T1071.004` behavioral context;
- important uncertainty and missing-evidence limitations.

## ⚖️ AI Could Not Prove

- malware;
- compromise;
- successful exfiltration or payload transfer;
- process/user identity;
- attacker identity;
- authorization status;
- whether containment was necessary.

The official alert fired at `16:39:01 UTC`; the AI event was processed at `16:39:21.727239 UTC`. Lubaba had already formed her human hypothesis and then rated the AI result **CORRECT** after claim-by-claim validation against raw defender evidence.

<table>
<tr>
<td width="50%"><img src="../screenshots/detection-engineering/13-ai-triage-indexed.png" alt="AI triage indexed"><br/><sub><b>Engineering proof:</b> the bridge returned structured Scenario 04 evidence to Splunk.</sub></td>
<td width="50%"><img src="../soc/evidence/S04-SOC-E18-AI-Human-Validation.png" alt="AI human validation"><br/><sub><b>SOC proof:</b> human validation remained explicit.</sub></td>
</tr>
</table>

## 🗂️ Artifacts

- [`scenario-04-ai-mapping.md`](scenario-04-ai-mapping.md) — exact evidence contract
- [`../soc/AI-VALIDATION.md`](../soc/AI-VALIDATION.md) — official human review

> **Authority boundary:** AI can summarize the available evidence. It cannot inherit analyst or responder decision authority.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 AI Mapping](scenario-04-ai-mapping.md) · [🔎 SOC Validation](../soc/AI-VALIDATION.md)

<br/>

**AI may assist the reasoning. Evidence and humans own the verdict.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
