#!/usr/bin/env bash
echo "===== SCENARIO 04 PRIVATE AUTHORITATIVE RECEIPT ====="
printf 'CAPTURE_UTC: '; date -u '+%Y-%m-%dT%H:%M:%SZ'
echo
echo "===== S04 QUERY RECORDS ====="
sudo grep -E \
's04-0[1-7]-.*\.tunnel\.soclab\.abdul4rehman215\.tech' \
/var/log/named/scenario04-queries.log
