<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=190&section=header&text=%F0%9F%A7%BE%20IR%20Curated%20Evidence&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2004%20%C2%B7%20Musfira%20%C2%B7%20Independent%20Validation%20%E2%86%92%20Recovery%20%E2%86%92%20Containment%20%E2%86%92%20Reset&descSize=15&descAlignY=61&descColor=14B8A6" width="100%" alt="🧾 IR Curated Evidence" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2800&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Validate%20%E2%86%92%20Challenge%20Causality%20%E2%86%92%20Check%20Recurrence%20%E2%86%92%20RPZ%20Precheck;First%20Attempt%20%E2%86%92%20Failure%20%E2%86%92%20Recovery%20%E2%86%92%20Correct%20Containment%20%E2%86%92%20Safe%20Reset" alt="🧾 IR Curated Evidence workflow" />

![Evidence](https://img.shields.io/badge/IR_Evidence-23_Images-14B8A6?style=flat-square) ![Containment](https://img.shields.io/badge/RPZ-Validated-F59E0B?style=flat-square) ![Reset](https://img.shields.io/badge/Safe_Reset-Verified-2EA44F?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🛡️ IR Workspace](../README.md) · [📖 IR Story](../INCIDENT-RESPONSE.md) · [🧾 Master Evidence](../../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧾 Scenario 04 IR — Evidence Portal

The full evidence chain preserves not only the successful containment and reset, but also the **real response troubleshooting and recovery path** that occurred in between.

## 🖼️ Decision, Response & Safe-State Highlights

<table>
<tr>
<td width="33%"><img src="S04-IR-03-independent-dns-query-reply-validation.png" alt="Independent DNS validation"><br/><sub><b>E03:</b> core DNS behavior independently validated.</sub></td>
<td width="33%"><img src="S04-IR-10-recurrence-no-second-detection-window.png" alt="No recurrence"><br/><sub><b>E10:</b> no second frozen-pattern recurrence.</sub></td>
<td width="33%"><img src="S04-IR-11-rpz-precheck-safe-disabled.png" alt="RPZ precheck"><br/><sub><b>E11:</b> safe non-enforcing starting state.</sub></td>
</tr>
<tr>
<td width="33%"><img src="S04-IR-19-correct-rpz-activation-resolver-logs.png" alt="Correct RPZ activation"><br/><sub><b>E19:</b> corrected policy loaded after recovery.</sub></td>
<td width="33%"><img src="S04-IR-20-containment-victim-sinkhole-answer.png" alt="Victim sinkhole answer"><br/><sub><b>E20:</b> victim received sinkhole address.</sub></td>
<td width="33%"><img src="S04-IR-23-safe-reset-victim-normal-answer.png" alt="Safe reset normal answer"><br/><sub><b>E23:</b> normal DNS restored after reset.</sub></td>
</tr>
</table>

## Investigation

| Evidence | What it proves |
|---|---|
| `S04-IR-01-endpoint-host-search-no-events.png` | No victim endpoint telemetry in the direct Splunk search |
| `S04-IR-02-data-source-inventory.png` | DNS/AWS evidence available; no victim host source for process attribution |
| `S04-IR-03-independent-dns-query-reply-validation.png` | IR independently reproduced 7 queries + 7 NOERROR replies |
| `S04-IR-04-vpc-flow-victim-window.png` | Network activity around incident window |
| `S04-IR-05-post-burst-outbound-https.png` | HTTPS flows existed after DNS burst |
| `S04-IR-06-preburst-destination-baseline.png` | Same destinations existed before burst; no causal attribution |
| `S04-IR-07-cloudtrail-broad-context.png` | Broad CloudTrail context was noisy/read-heavy |
| `S04-IR-08-cloudtrail-write-actions.png` | Write-action filter narrowed change context |
| `S04-IR-09-cloudtrail-started-instance-ids.png` | Instance IDs available for optional mapping |
| `S04-IR-10-recurrence-no-second-detection-window.png` | No later frozen-pattern recurrence |

## Response / recovery / reset

| Evidence | What it proves |
|---|---|
| `S04-IR-11-rpz-precheck-safe-disabled.png` | Safe/non-enforcing start state |
| `S04-IR-12-rpz-staging-config-valid.png` | Scenario wildcard staged with valid config |
| `S04-IR-13-first-activation-reload-warning.png` | First activation needed runtime verification |
| `S04-IR-14-first-activation-test-normal-answer.png` | First attempt did not contain |
| `S04-IR-15-trailing-dot-config-error.png` | Invalid troubleshooting edit broke RPZ parsing |
| `S04-IR-16-dns-refused-after-bad-rpz.png` | Resolver impact made failure visible |
| `S04-IR-17-recovery-resolver-healthy.png` | Backups restored resolver health |
| `S04-IR-18-recovery-victim-normal-answer.png` | Normal DNS returned after recovery |
| `S04-IR-19-correct-rpz-activation-resolver-logs.png` | Correct policy loaded |
| `S04-IR-20-containment-victim-sinkhole-answer.png` | Victim received `10.50.30.30` |
| `S04-IR-21-splunk-rpz-applied-proof.png` | Unbound telemetry logged the RPZ application |
| `S04-IR-22-safe-reset-resolver-healthy.png` | Default RPZ state restored / resolver healthy |
| `S04-IR-23-safe-reset-victim-normal-answer.png` | Normal authoritative answer returned after reset |

> Screenshots support decisions; the flagship IR narrative explains why each transition mattered.
<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🛡️ IR Workspace](../README.md) · [📖 Incident Response](../INCIDENT-RESPONSE.md) · [📋 Final Report](../IR-FINAL-REPORT.md)

<br/>

**The strongest response record preserves both the successful path and the recovery from failure.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
