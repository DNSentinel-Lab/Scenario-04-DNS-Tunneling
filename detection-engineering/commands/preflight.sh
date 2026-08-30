#!/usr/bin/env bash
set -euo pipefail

# Run on dns-soc-victim01. Read-only / harmless DNS pre-flight checks.
resolvectl status

dig example.com

dig NS tunnel.soclab.abdul4rehman215.tech

dig A ns1.tunnel.soclab.abdul4rehman215.tech

dig s04-preflight.tunnel.soclab.abdul4rehman215.tech A
