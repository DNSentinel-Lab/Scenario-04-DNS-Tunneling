#!/usr/bin/env bash
set -euo pipefail

# Fresh positive burst used to validate automatic scheduled-alert execution.
for i in $(seq 1 8); do
  label=$(openssl rand -hex 16)
  echo "Scheduled-alert validation $i -> ${label}.tunnel.soclab.abdul4rehman215.tech"
  dig +short "${label}.tunnel.soclab.abdul4rehman215.tech" A
  sleep 3
done
