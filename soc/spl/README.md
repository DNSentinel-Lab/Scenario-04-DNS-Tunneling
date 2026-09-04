<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=7,12,18,24,28&height=190&section=header&text=%F0%9F%94%8E%20SOC%20Investigation%20SPL%20Map&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Lubaba%20%C2%B7%20Actual%20Defender-Side%20Pivots&descSize=15&descAlignY=61&descColor=22D3EE" width="100%" alt="🔎 SOC Investigation SPL Map" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=22D3EE&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Telemetry%20Readiness%20%E2%86%92%20Namespace%20%E2%86%92%20Label%20Structure%20%E2%86%92%20Detection%20%E2%86%92%20Replies;Baseline%20%E2%86%92%20Scope%20%E2%86%92%20AI%20Validation%20%E2%86%92%20IR%20Handoff" alt="🔎 SOC Investigation SPL Map workflow" />

![Queries](https://img.shields.io/badge/SOC_SPL-20_Searches-22D3EE?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🔎 SOC Workspace](../README.md) · [📘 Query Index](../SPL-QUERY-INDEX.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 04 — SOC Investigation SPL

These are the actual defender-side pivots used during the official SOC case. They remain separate from frozen Detection Engineering SPL so the repository preserves the difference between **building the detector** and **investigating an incident**.

```mermaid
flowchart LR
    A["🩺 Telemetry"] --> B["🔍 Namespace"]
    B --> C["🧬 Label Structure"]
    C --> D["🧠 v1.0 Reproduction"]
    D --> E["📨 Query / Reply"]
    E --> F["📊 Baseline"]
    F --> G["🎯 Scope"]
    G --> H["🤖 AI Validation"]
    H --> I["📨 IR Handoff"]
```

| Stage | Searches |
|---|---|
| Telemetry readiness | [`01-monitoring-readiness-span.spl`](01-monitoring-readiness-span.spl), [`02-monitoring-readiness-event-types.spl`](02-monitoring-readiness-event-types.spl), [`03-monitoring-readiness-raw-rows.spl`](03-monitoring-readiness-raw-rows.spl) |
| Namespace normalization | [`04-initial-namespace-search-trailing-dot-miss.spl`](04-initial-namespace-search-trailing-dot-miss.spl), [`05-namespace-search-normalized.spl`](05-namespace-search-normalized.spl) |
| Structure | [`06-namespace-structure-summary-24h.spl`](06-namespace-structure-summary-24h.spl), [`07-raw-qname-label-table.spl`](07-raw-qname-label-table.spl) |
| Detection reproduction | [`08-detection-v1-independent-one-minute-reproduction.spl`](08-detection-v1-independent-one-minute-reproduction.spl) |
| Query/reply + timeline | [`09-query-reply-context-absolute-window.spl`](09-query-reply-context-absolute-window.spl), [`10-resolver-visible-timeline.spl`](10-resolver-visible-timeline.spl), [`11-reply-rcode-summary.spl`](11-reply-rcode-summary.spl) |
| Baseline | [`12-baseline-label-summary.spl`](12-baseline-label-summary.spl), [`13-legitimate-long-label-parents.spl`](13-legitimate-long-label-parents.spl), [`14-same-rule-baseline-excluding-scenario04.spl`](14-same-rule-baseline-excluding-scenario04.spl) |
| Scope | [`15-client-scope.spl`](15-client-scope.spl), [`16-environment-wide-same-pattern-scope.spl`](16-environment-wide-same-pattern-scope.spl) |
| AI validation | [`17-ai-filtered-search-initial-no-result.spl`](17-ai-filtered-search-initial-no-result.spl), [`18-ai-index-health.spl`](18-ai-index-health.spl), [`19-ai-time-window-discovery.spl`](19-ai-time-window-discovery.spl), [`20-ai-raw-event.spl`](20-ai-raw-event.spl) |

See [`../SPL-QUERY-INDEX.md`](../SPL-QUERY-INDEX.md) for the investigation purpose and lessons associated with each search.

> **Investigation principle:** search order should follow the questions the analyst needed answered, not the order the files happened to be created.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🔎 SOC Workspace](../README.md) · [📘 Query Index](../SPL-QUERY-INDEX.md) · [🧾 Evidence](../evidence/README.md)

<br/>

**The query path should make the analyst reasoning reproducible.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
