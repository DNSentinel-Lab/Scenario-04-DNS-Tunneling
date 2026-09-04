# Scenario 04 — SOC Investigation Timeline

| UTC | Event | Analyst meaning |
|---|---|---|
| 2026-09-02 16:37:19.215675 | First suspicious A query | Start of seven-query burst |
| 2026-09-02 16:37:31.370200 | Last suspicious query | Burst ends after ~12 seconds |
| 2026-09-02 16:39:01 | Official alert | Production Detection v1.0 fired |
| 2026-09-02 16:39:21.727239 | AI processed | Advisory context available after human evidence already existed |
| 2026-09-02 16:49:50.201643 | Later `ns1.tunnel...` A/AAAA activity | Structurally different; did not reproduce frozen pattern |
| SOC baseline phase | 3,236 normal query rows reviewed | Legitimate long labels confirmed in AWS service traffic |
| SOC scope phase | One client/parent/window matched | Pattern isolated in reviewed dataset |
| SOC decision | INCONCLUSIVE — ESCALATION WARRANTED | Suspicious behavior proven; attribution/authorization unresolved |
| SOC handoff | Defender-only evidence sent to Musfira | Operator ground truth remained separated |
