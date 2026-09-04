<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=7,12,18,24,28&height=128&section=header&text=%F0%9F%94%8E%20Scenario%2004%20%E2%80%94%20SOC%20SPL%20Query%20Index&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="Scenario 04 — SOC SPL Query Index" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 04 — SOC SPL Query Index

| Search | Purpose |
|---|---|
| [`spl/01-monitoring-readiness-span.spl`](spl/01-monitoring-readiness-span.spl) | Confirm recent Unbound telemetry span/count |
| [`spl/02-monitoring-readiness-event-types.spl`](spl/02-monitoring-readiness-event-types.spl) | Confirm query/reply event semantics |
| [`spl/03-monitoring-readiness-raw-rows.spl`](spl/03-monitoring-readiness-raw-rows.spl) | Inspect current extracted resolver fields |
| [`spl/04-initial-namespace-search-trailing-dot-miss.spl`](spl/04-initial-namespace-search-trailing-dot-miss.spl) | Preserve the initial zero-result formatting lesson |
| [`spl/05-namespace-search-normalized.spl`](spl/05-namespace-search-normalized.spl) | Normalize FQDN trailing dot and find Scenario 04 names |
| [`spl/06-namespace-structure-summary-24h.spl`](spl/06-namespace-structure-summary-24h.spl) | Summarize 24-hour Scenario namespace structure |
| [`spl/07-raw-qname-label-table.spl`](spl/07-raw-qname-label-table.spl) | Inspect qnames, first labels and label lengths |
| [`spl/08-detection-v1-independent-one-minute-reproduction.spl`](spl/08-detection-v1-independent-one-minute-reproduction.spl) | Reproduce frozen Detection v1.0 at one-minute scale |
| [`spl/09-query-reply-context-absolute-window.spl`](spl/09-query-reply-context-absolute-window.spl) | Review query/reply pairs in exact window |
| [`spl/10-resolver-visible-timeline.spl`](spl/10-resolver-visible-timeline.spl) | Build defender-visible UTC timeline |
| [`spl/11-reply-rcode-summary.spl`](spl/11-reply-rcode-summary.spl) | Summarize NOERROR reply context |
| [`spl/12-baseline-label-summary.spl`](spl/12-baseline-label-summary.spl) | Measure normal first-label baseline |
| [`spl/13-legitimate-long-label-parents.spl`](spl/13-legitimate-long-label-parents.spl) | Identify benign long-label parent domains |
| [`spl/14-same-rule-baseline-excluding-scenario04.spl`](spl/14-same-rule-baseline-excluding-scenario04.spl) | Apply full frozen rule to non-Scenario-04 traffic |
| [`spl/15-client-scope.spl`](spl/15-client-scope.spl) | Scope Scenario namespace across clients |
| [`spl/16-environment-wide-same-pattern-scope.spl`](spl/16-environment-wide-same-pattern-scope.spl) | Hunt the same pattern environment-wide |
| [`spl/17-ai-filtered-search-initial-no-result.spl`](spl/17-ai-filtered-search-initial-no-result.spl) | Preserve initial AI field-extraction lesson |
| [`spl/18-ai-index-health.spl`](spl/18-ai-index-health.spl) | Confirm AI index health |
| [`spl/19-ai-time-window-discovery.spl`](spl/19-ai-time-window-discovery.spl) | Locate the official AI event by time |
| [`spl/20-ai-raw-event.spl`](spl/20-ai-raw-event.spl) | Inspect full AI event for human validation |

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
