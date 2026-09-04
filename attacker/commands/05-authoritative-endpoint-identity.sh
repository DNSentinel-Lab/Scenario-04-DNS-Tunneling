#!/usr/bin/env bash
echo "===== AUTHORITATIVE ENDPOINT IDENTITY ====="
printf 'UTC: '; date -u '+%Y-%m-%dT%H:%M:%SZ'
printf 'PUBLIC_IPV4: '; curl -4 -s --max-time 5 https://checkip.amazonaws.com
printf 'NAMED_STATE: '; systemctl is-active named
