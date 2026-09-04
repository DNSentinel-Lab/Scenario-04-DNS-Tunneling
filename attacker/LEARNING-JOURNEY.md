# Scenario 04 — Operator Learning Journey

Only reusable operational lessons are kept here.

## 1. Preserve an early execution instead of manufacturing a replacement

The client ran once during review. Sonia did not rerun it simply to make the exercise sequence look cleaner. The real session was preserved and documented.

**Lesson:** evidence integrity is stronger than a cosmetically perfect timeline.

## 2. Confirm host identity before troubleshooting services

BIND checks initially ran on `dns-soc-victim01`, where `named.service` correctly did not exist. Host identity was checked before any architecture change was considered.

**Lesson:** `hostname` is often a better first troubleshooting command than changing a working service.

## 3. Separate client attribution from authoritative receipt

Seven victim qnames produced fourteen BIND records because public recursive resolvers contacted the authoritative server twice per distinct name.

**Lesson:** in this architecture, Unbound answers **who generated the DNS**, while BIND answers **what reached the authority**.

## 4. Treat unknown evidence honestly

The original shell exit code from the one-time client run was not captured.

**Lesson:** do not reconstruct a value that cannot be proven. `Unknown` is a valid evidence state.
