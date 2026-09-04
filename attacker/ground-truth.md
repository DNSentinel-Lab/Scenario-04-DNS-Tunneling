<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,18,24,30&height=128&section=header&text=%F0%9F%8E%AF%20Scenario%2004%20%E2%80%94%20Revealed%20Operator%20Ground%20Truth&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20Project%20Lead%20%2F%20Operator&descSize=13&descAlignY=68&descColor=8B5CF6" width="100%" alt="Scenario 04 — Revealed Operator Ground Truth" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Project_Lead_%2F_Operator-8B5CF6?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🎯 Scenario 04 — Revealed Operator Ground Truth

> This record is public only after SOC and IR decisions were locked. It contains the facts needed for final cross-role comparison without preservation-bundle housekeeping.

| Field | Final ground truth |
|---|---|
| Operator | Sonia |
| Victim | `dns-soc-victim01 / 10.50.30.20` |
| Resolver | `dns-soc-resolver01 / 10.50.30.10` |
| Authoritative host | `dns-tunnel-auth01 / 10.60.10.30` |
| Public authoritative IPv4 observed during exercise | `98.93.89.38` |
| Target | `tunnel.soclab.abdul4rehman215.tech` |
| Client | `/opt/dnsentinel/scenario04-tunnel-client.py` |
| Encoding | Base32 |
| Query type | A |
| Chunk size | 20 encoded characters |
| Query delay | 2 seconds |
| Distinct generated qnames | 7 |
| First authoritative receipt | `2026-09-02 16:37:19.219 UTC` |
| Last authoritative receipt | `2026-09-02 16:37:31.375 UTC` |
| Authoritative log rows | 14 — duplicate recursive arrivals |
| Client after execution | Not running |
| Original shell exit status | Not captured / cannot be proven retroactively |

## 📌 Harmless source message

```text
DNSENTINEL SCENARIO 04 HARMLESS SYNTHETIC DATA FOR AUTHORIZED OPERATOR TRAINING ONLY
```

## 💻 Exact command observed

```bash
/opt/dnsentinel/scenario04-tunnel-client.py
```

## 📌 Generated qnames

```text
s04-01-irhfgrkokreu4rkmebju.tunnel.soclab.abdul4rehman215.tech
s04-02-grkoifjestzaga2cascb.tunnel.soclab.abdul4rehman215.tech
s04-03-kjguyrktkmqfgwkokree.tunnel.soclab.abdul4rehman215.tech
s04-04-kvcjimeqiquieqemt2s.tunnel.soclab.abdul4rehman215.tech
s04-05-ebavkvcij5jeswsfiqqe.tunnel.soclab.abdul4rehman215.tech
s04-06-6ucfkjavit2sebkfeqkj.tunnel.soclab.abdul4rehman215.tech
s04-07-jzeu4rzaj5heywi.tunnel.soclab.abdul4rehman215.tech
```

## 📌 Execution deviation

The finite client was executed once during review before the formal execution gate. No rerun was performed. The already-produced traffic was preserved as the single real operator session.

## 🧾 Evidence interpretation

The 14 BIND records were duplicate authoritative arrivals from upstream recursive resolvers. They do not represent 14 victim executions.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [⬆ Back to top](#top)

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />
