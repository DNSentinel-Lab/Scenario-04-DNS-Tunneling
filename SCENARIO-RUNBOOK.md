<a id="top"></a>
# Scenario 04 — DNS Tunneling Runbook

**Scenario status:** 🟢 Detection Engineering complete / official exercise next  
**Detection Engineer / AI Integrator:** [Abdul-Rehman](https://github.com/abdul4rehman215)  
**Project Lead / Simulation:** [Sonia](https://github.com/sonia11mansha415)  
**SOC Analyst / Hunter:** [Lubaba](https://github.com/lubaba1513-pixel)  
**IR / Defender:** [Musfira](https://github.com/MUSFIRA-ZAFAR)

This runbook separates what has already been engineered from what must still happen during the information-separated Scenario 04 exercise.

## 1. Objective — ✅ Ready

Generate controlled, synthetic DNS tunneling-like behavior and determine whether the frozen Detection v1.0, AI assistance, human SOC investigation and IR response can explain and change the observed behavior without overstating attribution.

## 2. Architecture — ✅ Ready

```text
dns-soc-victim01 10.50.30.20
        ↓
dns-soc-resolver01 10.50.30.10 / Unbound
        ↓
public DNS / nested Route 53 delegation
        ↓
dns-tunnel-auth01 10.60.10.30 / BIND authoritative-only
        ↓
tunnel.soclab.abdul4rehman215.tech
```

Shared sinkhole path remains available at `10.50.30.30` for later human-approved RPZ containment.

## 3. Prerequisites — ✅ Ready

- Scenario 04 authoritative DNS infrastructure complete.
- Victim uses `10.50.30.10` as resolver.
- `dns_soc_dns` Unbound telemetry validated.
- Detection v1.0 frozen.
- Dashboard Studio export validated.
- Scheduled alert and suppression validated.
- Scenario AI profile/bridge round trip validated.
- Public address/delegation for `dns-tunnel-auth01` must still be checked before the official run because the public IPv4 is not an Elastic IP.

## 4. Official Adversary Activity / Simulation — ⏳ Pending

Owner: **Sonia**.

The official run must use synthetic, non-sensitive data only and preserve private ground truth separately from the defender roles. Detection Engineering validation traffic is not the official exercise.

## 5. Telemetry — ✅ Validated

Primary defender source:

```text
index=dns_soc_dns
host=dns-soc-resolver01
sourcetype=unbound:dns
```

Validated fields include `event_type`, `client_ip`, `qname`, `qtype`, `rcode`, `response_time`, `cache_flag`, `response_size`.

Behavior counting uses `event_type="query"` so Unbound query/reply pairs do not double-count a single DNS transaction.

## 6. Detection — ✅ Complete / v1.0 Frozen

Frozen conditions:

```text
unique_child_labels >= 5
AND long_label_count >= 5
AND max_first_label_length > 16
```

The rule groups the same client + parent domain into one-minute windows and looks for fresh long child labels. Thresholds came from the clean Scenario 04 baseline and controlled testing.

Known limitation: low-and-slow tunneling-like behavior designed to stay inside normal label/uniqueness behavior may evade v1.0.

## 7. SPL / Detection Logic — ✅ Complete

- [`spl/baseline.spl`](spl/baseline.spl)
- [`spl/hunting.spl`](spl/hunting.spl)
- [`spl/detection.spl`](spl/detection.spl)
- [`spl/validation.spl`](spl/validation.spl)
- supporting engineering searches under [`spl/supporting/`](spl/supporting/)

## 8. Alert — ✅ Complete

```text
Scenario 04 - Possible DNS Tunneling Behavior
Cron: * * * * *
Earliest: -10m@m
Latest: -1m@m
Trigger: Number of Results > 0 / Once
Suppression: 10 minutes
Severity: Medium
Actions: Triggered Alerts + shared AI webhook
```

The scheduled result exposes one analyst-ready row per client/parent/window and keeps a raw-event investigation path.

## 9. AI Triage — ✅ Engineering Integration Validated

Scenario profile:

```text
scenario_id = scenario-04-dns-tunneling
ai_profile  = dns_tunneling_v1
```

The shared bridge returned Scenario 04 analysis to `index=dns_soc_ai`. AI statements were compared with source evidence and `human_validation_required=true` remained preserved.

Official SOC disposition is still a human task.

## 10. SOC Analysis — ⏳ Pending

Owner: **Lubaba**.

The SOC Analyst must investigate independently from the frozen alert, dashboard, raw resolver telemetry and AI context. Do not reveal Sonia's private operator ground truth before disposition is locked.

## 11. Incident Response — ⏳ Pending

Owner: **Musfira**.

IR independently validates the SOC handoff and decides whether a narrow RPZ/sinkhole response is justified. AI or alert severity does not authorize containment.

## 12. Evidence — ✅ Detection Engineering Evidence Complete / Official Evidence Pending

Detection Engineering proof is curated under:

- [`screenshots/detection-engineering/`](screenshots/detection-engineering/)
- [`evidence/detection-engineering/`](evidence/detection-engineering/)
- [`detection-engineering/detection-engineering-validation.md`](detection-engineering/detection-engineering-validation.md)

Official simulation/SOC/IR evidence will be added later without rewriting the frozen engineering record.

## 13. Containment — ⏳ Pending

Potential approved path if evidence justifies it:

```text
Victim → Unbound RPZ → 10.50.30.30 sinkhole
```

Do not activate this as official containment before the IR decision.

## 14. Verification — ⏳ Pending

If containment occurs, prove:

- fresh tunnel names no longer follow the original authoritative path;
- sinkhole evidence appears where expected;
- normal DNS still works;
- the environment is safely reset afterward.

If IR decides not to contain, verify and document that decision instead of fabricating a containment result.

## 15. Results — Detection Engineering Complete / Full Scenario Pending

Engineering result:

**SCENARIO 04 DETECTION ENGINEERING = COMPLETE / SOC-READY**

Full scenario result remains pending.

## 16. MITRE ATT&CK — ✅ Engineering Mapping Frozen

Primary: `T1071.004 — Application Layer Protocol: DNS`.

`T1572` is not claimed in the engineering phase because the implemented validation did not prove a separate encapsulated protocol channel.

## 17. False Positives — ✅ Engineering Challenge Complete

A repeated long child label was queried 12 times. It looked long and repetitive but produced only one unique child and did not create a new detection row. This validated that long labels and query volume alone are insufficient.

## 18. Lessons Learned — ✅ Detection Engineering Lessons Complete

See [`detection-engineering/TROUBLESHOOTING-AND-LESSONS.md`](detection-engineering/TROUBLESHOOTING-AND-LESSONS.md).

## 19. Reproduction — Detection Engineering Path Documented

Use this order:

```text
pre-flight
→ field validation
→ timing
→ clean baseline
→ feature hunt
→ dashboard
→ controlled positive
→ benign challenge
→ detection v1.0
→ scheduled alert
→ raw drilldown
→ AI validation
→ freeze
```

Shell helpers are preserved under [`detection-engineering/commands/`](detection-engineering/commands/).

## 20. Screenshots — ✅ Detection Engineering Set Curated

The 14-image engineering evidence set is indexed in [`screenshots/README.md`](screenshots/README.md). Construction-only screens and minor troubleshooting were intentionally excluded.

## Freeze boundary before the official exercise

Do not change the frozen thresholds, rule logic, scheduled timing, AI evidence contract or dashboard semantics during the official exercise unless a genuine operational failure requires an explicitly recorded emergency correction.

---

[🏠 Scenario Home](README.md) · [🛠️ Detection Engineering](detection-engineering/DETECTION-ENGINEERING.md) · [🔒 Freeze Record](detection-engineering/FREEZE-RECORD.md) · [⬆ Back to top](#top)
