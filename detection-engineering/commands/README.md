# Scenario 04 Detection Engineering — Command Helpers

These scripts preserve the small terminal-side checks and validation traffic used during Detection Engineering. They are not the official Scenario 04 simulation.

| Script | Purpose |
|---|---|
| [`preflight.sh`](preflight.sh) | Resolver/delegation health check from `dns-soc-victim01` |
| [`controlled-positive-validation.sh`](controlled-positive-validation.sh) | Synthetic fresh 32-hex-character child labels for positive validation |
| [`benign-lookalike-validation.sh`](benign-lookalike-validation.sh) | One repeated long child label for false-positive challenge |
| [`scheduled-alert-validation.sh`](scheduled-alert-validation.sh) | Fresh positive burst used to prove automatic alert execution |

## Safety boundary

- Project-owned/authorized namespace only.
- Synthetic, non-sensitive labels only.
- Low-volume validation traffic.
- Do not treat these scripts as Sonia's official simulation tooling.
- Do not modify Detection v1.0 to search for these script-specific strings or prefixes.
