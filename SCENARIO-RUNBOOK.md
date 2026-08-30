<a id="top"></a>
# Scenario 04 — DNS Tunneling Runbook

**Scenario state:** Infrastructure Ready / Detection Engineering next  
**Primary MITRE ATT&CK:** `T1071.004 — Application Layer Protocol: DNS`  
**Safety boundary:** synthetic, non-sensitive data only  
**Official roles:** Sonia — Simulation · Lubaba — SOC · Abdul-Rehman — Detection · Musfira — IR

This runbook separates what is already implemented from what must happen later during Detection Engineering and the official information-separated exercise.

## 1. Infrastructure gate — ✅ complete

Shared defender platform:

```text
dns-soc-victim01     10.50.30.20
dns-soc-resolver01   10.50.30.10
dns-soc-sinkhole01   10.50.30.30
dns-soc-splunk01     10.50.20.10
```

Scenario-specific extension:

```text
dns-tunnel-auth01    10.60.10.30
BIND authoritative-only
tunnel.soclab.abdul4rehman215.tech
```

The infrastructure record is maintained in the shared repository:

`DNS-Lab-Infrastructure/02-aws-build/10-scenario-04-dns-tunneling.md`

## 2. Mandatory pre-run public-IP check — ⏳ every execution day

The authoritative EC2 does not currently have an Elastic IP.

Before Detection Engineering tests or the official run:

1. confirm the public IPv4 of `dns-tunnel-auth01`;
2. compare it with Route 53 `ns1.tunnel` and the BIND zone;
3. if different, update both DNS locations and increment the SOA serial;
4. run BIND validation/restart;
5. prove a fresh public child lookup;
6. prove a fresh victim lookup through Unbound.

Do not start the scenario with stale delegation data.

## 3. Detection Engineering — ⏳ next

Owner: **Abdul-Rehman**.

Follow [`DETECTION-ENGINEERING-PLAN.md`](DETECTION-ENGINEERING-PLAN.md):

```text
Data quality
→ baseline
→ feature engineering
→ hunting
→ positive engineering test
→ benign lookalikes
→ Detection v1.0
→ dashboard
→ alert
→ AI profile
→ validation
→ freeze
```

## 4. Information separation — ⏳ official run

Before execution:

- Sonia keeps exact generator inputs, payload content, expected count/timing and operator ground truth private from Lubaba and Musfira.
- Abdul-Rehman freezes Detection v1.0 before receiving official ground truth.
- Lubaba investigates from defender evidence only.
- Musfira validates independently from the SOC handoff and available telemetry.
- AI may summarize the frozen detection context but cannot disclose private operator ground truth or authorize response.

## 5. Official simulation — ⏳ pending

Owner: **Sonia**.

The official simulation must:

- use only project-owned/authorized infrastructure;
- use synthetic, non-sensitive data;
- use the normal victim DNS path rather than bypassing Unbound;
- stay inside the controlled `tunnel.soclab...` namespace;
- record UTC start/end and exact tool/script hash where practical;
- stop cleanly after the planned window.

The preferred initial behavior is controlled A-query traffic using fresh child labels. TXT or other qtypes should be included only if the actual scenario plan needs them and the Detection Engineer has baseline context for them.

A decoder/reassembly utility is optional simulation tooling. It is **not currently implemented** and is not required merely to demonstrate suspicious DNS structure.

## 6. Detection / alert — ⏳ pending

Detection v1.0 should surface the behavior using frozen logic. Record:

- alert time;
- search window;
- client;
- query count;
- unique child/qname count;
- structure/length metrics;
- qtype/rcode context;
- sample qnames;
- raw-event pivots.

Do not tune the rule after seeing the private official ground truth.

## 7. AI assistance — ⏳ pending

The shared bridge may receive the frozen alert payload and return structured context into `dns_soc_ai`.

Preserve:

- payload sent;
- AI output;
- UTC time;
- what the analyst accepted/rejected after raw-evidence review.

AI output is not the disposition.

## 8. SOC investigation — ⏳ pending

Owner: **Lubaba**.

The SOC record should answer 5W1H as far as the defender evidence allows:

- **Who:** which client generated the queries?
- **What:** what structure/frequency/query types were observed?
- **When:** first/last seen and activity window?
- **Where:** which resolver, parent domain and authoritative destination were involved?
- **Why:** what evidence makes the behavior unusual, and what benign explanations remain?
- **How:** how did the queries move through the resolver/delegation path?

Required discipline:

- attribute the private client from Unbound, not from BIND public-resolver source IPs;
- distinguish observed tunneling-like structure from proof of malicious exfiltration;
- record confidence and limits;
- produce an explicit disposition and SOC → IR handoff.

## 9. IR validation — ⏳ pending

Owner: **Musfira**.

IR independently checks:

- frozen alert evidence;
- raw Unbound events;
- available AWS/network context;
- public/authoritative evidence where useful;
- whether the simulation is still active;
- whether containment is proportionate.

The IR record must document the decision even if the decision is **no containment**.

## 10. Response — ⏳ pending / human approved only

If containment is justified, use the existing narrow Unbound RPZ/sinkhole path rather than a broad VPC or host shutdown unless evidence requires otherwise.

Expected controlled path:

```text
Before
Victim -> Unbound -> public DNS -> original authoritative path

After approved RPZ
Victim -> Unbound RPZ -> 10.50.30.30 -> sinkhole
```

Use fresh qnames or flush relevant cache state so cached results do not confuse verification.

## 11. Verification — ⏳ pending

A successful response must be proven from telemetry.

Minimum proof if RPZ is used:

- fresh controlled tunnel child name resolves to the approved sinkhole result;
- original authoritative endpoint no longer receives that fresh qname through the normal path;
- sinkhole evidence shows the redirected request if HTTP validation is part of the response;
- normal unrelated DNS still works;
- resolver remains healthy.

## 12. Safe reset — ⏳ pending

After verification:

- restore the approved safe RPZ state;
- revalidate Unbound configuration/service;
- prove the controlled name returns to the expected normal path/state;
- confirm normal DNS remains healthy;
- preserve reset evidence.

## 13. Ground-truth reveal — ⏳ pending

Only after SOC and IR decisions are locked, Sonia reveals the private operator record.

Compare:

```text
Operator ground truth
vs
Detection v1.0
vs
AI assistance
vs
SOC findings
vs
IR decision
vs
response evidence
```

Record misses, overstatements, false positives and attribution limits.

## 14. Final closeout — ⏳ pending

Scenario 04 is complete only when the repository can reproduce:

**Simulation → Telemetry → Detection → Alert → AI Assistance → Independent SOC Investigation → IR Decision → Response/No-Response Rationale → Verification → Ground-Truth Comparison → Lessons Learned.**

Infrastructure readiness alone does not satisfy this gate.


---

[🏠 Scenario Home](README.md) · [🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [⬆ Back to top](#top)
