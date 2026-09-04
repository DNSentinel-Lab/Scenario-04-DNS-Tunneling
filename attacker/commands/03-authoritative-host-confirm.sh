#!/usr/bin/env bash
echo "===== AUTHORITATIVE HOST CONFIRMATION ====="
printf 'HOST: '; hostname
printf 'PRIVATE_IP: '; hostname -I | awk '{print $1}'
printf 'UTC: '; date -u '+%Y-%m-%dT%H:%M:%SZ'
