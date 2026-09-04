#!/usr/bin/env bash
echo "===== SCENARIO 04 AUTHORITATIVE HEALTH ====="
printf 'UTC: '; date -u '+%Y-%m-%dT%H:%M:%SZ'
echo
echo "===== CURRENT PUBLIC IPV4 ====="
printf 'PUBLIC_IPV4: '
curl -4 -s --max-time 5 https://checkip.amazonaws.com || echo "UNAVAILABLE"
echo
echo "===== BIND SERVICE ====="
sudo systemctl is-active named
sudo systemctl status named --no-pager -l | sed -n '1,25p'
echo
echo "===== DNS PORT 53 ====="
sudo ss -lntup | grep -E '(:53[[:space:]]|:53$)' || echo "NO_PORT_53_LISTENER"
echo
echo "===== AUTHORITATIVE LOG ====="
sudo ls -lh /var/log/named/scenario04-queries.log
echo
echo "===== BIND CONFIG CHECK ====="
sudo named-checkconf && echo "NAMED_CONFIG: OK"
