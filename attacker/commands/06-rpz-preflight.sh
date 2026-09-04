#!/usr/bin/env bash
echo "===== RESOLVER HOST CHECK ====="
printf 'HOST: '; hostname
printf 'IP: '; hostname -I | awk '{print $1}'
printf 'UTC: '; date -u '+%Y-%m-%dT%H:%M:%SZ'
echo
echo "===== SCENARIO 04 RPZ PRE-FLIGHT ====="
echo
echo "===== UNBOUND HEALTH ====="
sudo systemctl is-active unbound
echo
echo "===== SCENARIO 04 CONTAINMENT REFERENCES ====="
sudo grep -RniE \
'tunnel\.soclab\.abdul4rehman215\.tech|rpz|local-zone|local-data' \
/etc/unbound 2>/dev/null \
|| echo "NO_SCENARIO04_CONTAINMENT_REFERENCE_FOUND"
