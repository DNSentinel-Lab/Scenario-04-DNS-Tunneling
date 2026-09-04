# Scenario 04 — IR Response Commands

This folder preserves the actual response path used for RPZ validation, recovery and safe reset.

The final successful path was:

```text
pre-check / backups
→ stage wildcard
→ validate configuration
→ daemon-reload + restart
→ victim proof
→ Splunk RPZ proof
→ restore backups
→ post-reset proof
```

The failed trailing-dot edit is **not** included as a runnable command file. It is documented in [`../LESSONS-LEARNED.md`](../LESSONS-LEARNED.md) and supported by evidence E15–E18.
