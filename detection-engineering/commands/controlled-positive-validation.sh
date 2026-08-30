#!/usr/bin/env bash
set -euo pipefail

# DETECTION ENGINEERING VALIDATION TRAFFIC ONLY.
# Synthetic/non-sensitive data. Project-owned DNS namespace.
for i in $(seq 1 12); do
  label=$(openssl rand -hex 16)
  echo "DE validation query $i -> ${label}.tunnel.soclab.abdul4rehman215.tech"
  dig +short "${label}.tunnel.soclab.abdul4rehman215.tech" A
  sleep 3
done
