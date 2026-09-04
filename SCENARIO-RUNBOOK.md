<a id="top"></a>
# Scenario 04 — DNS Tunneling Runbook

**Scenario status:** 🟢 **Complete / evidence-backed closeout**  
**Detection Engineer / AI Integrator:** [Abdul-Rehman](https://github.com/abdul4rehman215)  
**Project Lead / Private Exercise Operator:** [Sonia](https://github.com/sonia11mansha415)  
**SOC Analyst / Threat Hunter:** [Lubaba](https://github.com/lubaba1513-pixel)  
**IR / Defender:** [Musfira](https://github.com/MUSFIRA-ZAFAR)

This runbook records the final state after engineering, official execution, SOC investigation, Incident Response, containment verification, safe reset and ground-truth comparison.

## 1. Objective — ✅ Complete

Generate one controlled DNS tunneling-like session and determine whether the frozen detection, AI assistance, human SOC investigation and IR response can explain and change the observed behavior without overstating attribution.

## 2. Architecture — ✅ Validated end to end

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

Approved response path:

```text
Victim → Unbound RPZ → 10.50.30.30 sinkhole
```

## 3. Prerequisites — ✅ Complete

- Scenario 04 BIND/Route 53 infrastructure complete.
- Victim resolver path validated.
- Unbound DNS telemetry validated.
- Detection v1.0 frozen.
- Dashboard Studio validated.
- Scheduled alert validated.
- `dns_tunneling_v1` AI path validated.
- RPZ/sinkhole started from a safe/non-enforcing state.

## 4. Official Operator Activity — ✅ Complete

Owner: **Sonia**.

The finite lab-only client generated seven Base32-derived DNS-safe child labels and issued ordinary A lookups through `dns-soc-victim01`'s normal resolver. The one-time run was preserved rather than repeated after it occurred during review.

Authoritative BIND receipt:

```text
first: 2026-09-02 16:37:19.219 UTC
last:  2026-09-02 16:37:31.375 UTC
seven distinct qnames
```

See [`attacker/`](attacker/).

## 5. Telemetry — ✅ Validated

Primary defender source:

```text
index=dns_soc_dns
host=dns-soc-resolver01
sourcetype=unbound:dns
```

Behavior counting used `event_type="query"`; reply events supplied RCODE/response context.

Official suspicious window:

```text
7 queries
7 replies
NOERROR
A
10.50.30.20
~12 seconds
```

## 6. Detection — ✅ Complete / v1.0 Frozen

```text
unique_child_labels >= 5
AND long_label_count >= 5
AND max_first_label_length > 16
```

Official result:

```text
7 / 7 / 27 → PASS
```

No live tuning was performed during the official exercise.

## 7. SPL / Detection Logic — ✅ Complete

- [`spl/baseline.spl`](spl/baseline.spl)
- [`spl/hunting.spl`](spl/hunting.spl)
- [`spl/detection.spl`](spl/detection.spl)
- [`spl/validation.spl`](spl/validation.spl)
- supporting engineering searches under [`spl/supporting/`](spl/supporting/)
- official SOC searches under [`soc/spl/`](soc/spl/)
- official IR searches under [`ir/spl/`](ir/spl/)

## 8. Alert — ✅ Fired / validated

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

Official trigger: `2026-09-02 16:39:01 UTC`.

## 9. AI Triage — ✅ Official use validated

```text
scenario_id = scenario-04-dns-tunneling
ai_profile  = dns_tunneling_v1
```

Official AI event processed at `2026-09-02 16:39:21.727239 UTC`.

Lubaba formed her human hypothesis first, then validated the AI claims against raw evidence and rated the result **CORRECT**. `human_validation_required=true` remained preserved.

## 10. SOC Analysis — ✅ Complete

Owner: **Lubaba**.

SOC independently validated:

- 7 unique query qnames / child labels;
- 7 long labels;
- max first-label length 27;
- 7 NOERROR replies;
- measured baseline including legitimate long AWS labels;
- zero non-Scenario-04 matches to the full frozen rule;
- one client / one parent / one one-minute suspicious window;
- no second matching window in the reviewed period.

Final disposition:

> **INCONCLUSIVE — ESCALATION WARRANTED / High confidence**

See [`soc/SOC-ANALYST-INVESTIGATION.md`](soc/SOC-ANALYST-INVESTIGATION.md).

## 11. Incident Response — ✅ Complete

Owner: **Musfira**.

IR independently reproduced the DNS evidence, found no victim endpoint telemetry suitable for process/user attribution, checked VPC Flow/CloudTrail context, rejected unsupported causal attribution of post-DNS HTTPS flows, and found no recurrence of the frozen pattern.

Final IR context after authorization was established:

> **AUTHORIZED CONTROLLED EXERCISE ACTIVITY — NO REAL-WORLD COMPROMISE CLAIMED. CONTROLLED CONTAINMENT VALIDATED.**

See [`ir/INCIDENT-RESPONSE.md`](ir/INCIDENT-RESPONSE.md).

## 12. Evidence — ✅ Complete

Cross-role evidence is indexed in [`evidence/README.md`](evidence/README.md).

Role-owned proof remains with the role that produced it:

- Detection Engineering — [`screenshots/detection-engineering/`](screenshots/detection-engineering/)
- Operator — [`screenshots/attacker/`](screenshots/attacker/)
- SOC — [`soc/evidence/`](soc/evidence/)
- IR — [`ir/evidence/`](ir/evidence/)

## 13. Containment — ✅ Human-approved / validated

Temporary Scenario 04 RPZ scope:

```text
*.tunnel.soclab.abdul4rehman215.tech A 10.50.30.30
```

The victim returned `10.50.30.30`, and Splunk recorded `rpz: applied [dns-soc-rpz]`.

## 14. Verification — ✅ Complete

IR proved:

- victim-side sinkhole answer;
- resolver-side RPZ runtime evidence;
- recovery from a failed configuration experiment;
- safe restoration of the pre-change RPZ state;
- normal authoritative resolution after reset.

## 15. Results — ✅ Complete

> **SCENARIO 04 — COMPLETE / EVIDENCE-BACKED CLOSEOUT**

The final cross-role story is in [`SCENARIO-04-EXECUTION.md`](SCENARIO-04-EXECUTION.md) and [`exercise/final-comparison.md`](exercise/final-comparison.md).

## 16. MITRE ATT&CK — ✅ Final mapping

Primary: `T1071.004 — Application Layer Protocol: DNS`.

`T1572` is not claimed because the implemented case did not establish a separate encapsulated protocol channel.

## 17. False Positives — ✅ Engineering + live investigation validated

Engineering already proved that a repeated long label alone did not satisfy the rule. During the official SOC case, legitimate AWS traffic also demonstrated that long labels can be normal. No non-Scenario-04 parent reproduced the full combined one-minute rule in the reviewed dataset.

## 18. Lessons Learned — ✅ Complete

- Detection Engineering: [`detection-engineering/TROUBLESHOOTING-AND-LESSONS.md`](detection-engineering/TROUBLESHOOTING-AND-LESSONS.md)
- Operator: [`attacker/LEARNING-JOURNEY.md`](attacker/LEARNING-JOURNEY.md)
- SOC: [`soc/TROUBLESHOOTING-NOTES.md`](soc/TROUBLESHOOTING-NOTES.md)
- IR: [`ir/LESSONS-LEARNED.md`](ir/LESSONS-LEARNED.md)

## 19. Reproduction — ✅ Documented

```text
infrastructure
→ frozen detection
→ finite operator session
→ production alert
→ SOC raw-evidence investigation
→ SOC→IR handoff
→ independent IR validation
→ human-approved RPZ
→ containment proof
→ safe reset
→ ground-truth comparison
```

## 20. Screenshots — ✅ Curated

Visual evidence is organized by role and indexed in [`screenshots/README.md`](screenshots/README.md) and [`evidence/README.md`](evidence/README.md).

## Final change-control note

Detection v1.0, its scheduled timing, Dashboard Studio semantics and AI evidence contract were frozen before the official run and were not rewritten to fit the result. The temporary IR RPZ change was separately applied, verified and reset.

---

[🏠 Scenario Home](README.md) · [🎬 Execution](SCENARIO-04-EXECUTION.md) · [🧾 Evidence](evidence/README.md) · [⬆ Back to top](#top)
