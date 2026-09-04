#!/usr/bin/env bash
echo "===== SCENARIO 04 DELEGATION CHECK ====="
printf 'HOST: '; hostname
printf 'UTC: '; date -u '+%Y-%m-%dT%H:%M:%SZ'
echo
echo "===== NS ANSWER ====="
dig +short NS tunnel.soclab.abdul4rehman215.tech
echo
echo "===== SOA ANSWER ====="
dig tunnel.soclab.abdul4rehman215.tech SOA +noall +answer
echo
echo "===== TRACE SUMMARY ====="
dig +trace tunnel.soclab.abdul4rehman215.tech SOA | tail -n 25
