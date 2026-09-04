#!/usr/bin/env bash
echo "===== SCENARIO 04 DNS PATH CHECK ====="
printf 'HOST: '; hostname
printf 'UTC: '; date -u '+%Y-%m-%dT%H:%M:%SZ'
echo
echo "===== /etc/resolv.conf ====="
cat /etc/resolv.conf
echo
echo "===== SYSTEMD RESOLVER STATE ====="
resolvectl status 2>/dev/null | sed -n '1,140p' || true
