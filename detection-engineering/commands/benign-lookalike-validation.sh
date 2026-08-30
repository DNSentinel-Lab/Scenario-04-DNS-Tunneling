#!/usr/bin/env bash
set -euo pipefail

# Benign false-positive challenge: one long child label repeatedly queried.
label="benignvalidation1234567890abcdef123456"
for i in $(seq 1 12); do
  echo "Benign lookalike query $i -> ${label}.tunnel.soclab.abdul4rehman215.tech"
  dig +short "${label}.tunnel.soclab.abdul4rehman215.tech" A
  sleep 3
done
