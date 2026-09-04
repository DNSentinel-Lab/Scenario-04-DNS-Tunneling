# Scenario 04 — SOC SPL Query Index

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
