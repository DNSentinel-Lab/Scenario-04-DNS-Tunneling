# Scenario 04 — Revealed Operator Ground Truth

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

## Harmless source message

```text
DNSENTINEL SCENARIO 04 HARMLESS SYNTHETIC DATA FOR AUTHORIZED OPERATOR TRAINING ONLY
```

## Exact command observed

```bash
/opt/dnsentinel/scenario04-tunnel-client.py
```

## Generated qnames

```text
s04-01-irhfgrkokreu4rkmebju.tunnel.soclab.abdul4rehman215.tech
s04-02-grkoifjestzaga2cascb.tunnel.soclab.abdul4rehman215.tech
s04-03-kjguyrktkmqfgwkokree.tunnel.soclab.abdul4rehman215.tech
s04-04-kvcjimeqiquieqemt2s.tunnel.soclab.abdul4rehman215.tech
s04-05-ebavkvcij5jeswsfiqqe.tunnel.soclab.abdul4rehman215.tech
s04-06-6ucfkjavit2sebkfeqkj.tunnel.soclab.abdul4rehman215.tech
s04-07-jzeu4rzaj5heywi.tunnel.soclab.abdul4rehman215.tech
```

## Execution deviation

The finite client was executed once during review before the formal execution gate. No rerun was performed. The already-produced traffic was preserved as the single real operator session.

## Evidence interpretation

The 14 BIND records were duplicate authoritative arrivals from upstream recursive resolvers. They do not represent 14 victim executions.
